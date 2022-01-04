import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as p;
import 'package:proto_annotations/proto_annotations.dart';
import 'package:source_gen/source_gen.dart' as sg;

import 'package:code_builder/code_builder.dart';

class ProtoDynamicMapperBuilder implements Builder {
  static final _allFilesInLib = Glob('lib/**');

  final anyRef = const Reference('Any');

  final typeChecker = sg.TypeChecker.fromRuntime(MapProto);

  final bool _enabled;
  final String _typeUrlPrefix;
  final String _generatedPrefix;
  final String _generatedPbFolder;

  ProtoDynamicMapperBuilder(BuilderOptions options):
    _enabled = options.config['enabled'] as bool? ?? false,
    _typeUrlPrefix = options.config['typeUrlPrefix'] as String? ?? 'type.googleapis.com',
    _generatedPrefix = options.config['generatedPrefix'] as String? ?? 'G',
    _generatedPbFolder = options.config['generatedProtobufFolder'] as String? ?? '../grpc';

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    if (!_enabled) {
      return;
    }
    List<ClassElement> mappedClasses = await _getMapProtoClasses(buildStep);
    final importedLibraries = <String>{};
    // TODO: look up these imports dynamically?
    importedLibraries.add('dart:convert');
    importedLibraries.add('dart:math');
    importedLibraries.add('dart:typed_data');
    importedLibraries.add('package:decimal/decimal.dart');
    importedLibraries.add('package:protobuf/protobuf.dart');
    importedLibraries.add('$_generatedPbFolder/google/protobuf/any.pb.dart');

    final typeRegistry = FieldBuilder()
    ..name = 'typeRegistry'
    ..type = Reference('TypeRegistry')
    ..static = true
    ..modifier = FieldModifier.final$
    ..assignment = Code('TypeRegistry([${mappedClasses.where((c) => !c.isEnum).map((c) => '$_generatedPrefix${c.name}()').join(',')}])');

    // fromProto() method
    final fromProtoBuilder = MethodBuilder()
      ..name = 'fromProto'
      ..returns = const Reference('dynamic')
      ..requiredParameters.add((ParameterBuilder()
            ..name = 'proto'
            ..type = anyRef)
          .build())
      ..static = true
      ..body = _fromProto(importedLibraries, mappedClasses);

    // toProto() method
    final toProtoBuilder = MethodBuilder()
      ..name = 'toProto'
      ..returns = anyRef
      ..requiredParameters.add((ParameterBuilder()
            ..name = 'value'
            ..type = const Reference('dynamic'))
          .build())
      ..static = true
      ..body = _toProto(importedLibraries, mappedClasses);

    // DynamicProtoMapper class
    final mapperBuilder = ClassBuilder()
      ..name = 'DynamicProtoMapper'
      ..fields.add(typeRegistry.build())
      ..methods.addAll([fromProtoBuilder.build(), toProtoBuilder.build()])
      ..docs.add('/// Generated Mapper class used for packing and unpacking "google.protobuf.Any" fields or values');

    final output = _allFileOutput(buildStep);
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true, orderDirectives: true);

    final code = StringBuffer();
    for (final lib in importedLibraries) {
      code.write("import '$lib';");
    }
    code.write('${mapperBuilder.build().accept(emitter)}');

    return buildStep.writeAsString(output, DartFormatter().format(code.toString()));
  }

  Future<List<ClassElement>> _getMapProtoClasses(BuildStep buildStep) async {
    final mappedClasses = <ClassElement>[];
    await for (final input in buildStep.findAssets(_allFilesInLib)) {
      if (!await buildStep.resolver.isLibrary(input)) {
        continue;
      }
      final library = await buildStep.resolver.libraryFor(input);
      var libraryReader = sg.LibraryReader(library);
      final classesInLibrary = libraryReader.annotatedWith(typeChecker);
      for (final classInLib in classesInLibrary) {
        if (classInLib.element is ClassElement) {
          mappedClasses.add(classInLib.element as ClassElement);
        }
      }
    }
    return mappedClasses;
  }

  static AssetId _allFileOutput(BuildStep buildStep) {
    return AssetId(
      buildStep.inputId.package,
      p.join('lib', 'src/dynamic_mapper.g.dart'),
    );
  }

  @override
  Map<String, List<String>> get buildExtensions {
    return const {
      r'$lib$': ['src/dynamic_mapper.g.dart']
    };
  }

  Code? _toProto(Set<String> importedLibraries, List<ClassElement> mappedClasses) {
    final code = StringBuffer();
    // Base types - uses same prefixes as the other types
    code.write('''
    if (value is String) {
      return Any(value: utf8.encode(value), typeUrl: '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}String');
    }
    if (value is int) {
      final byteSize = (value.bitLength / 8).ceil();
      if (byteSize < 2) {
        return Any(value: Uint8List(1)..buffer.asByteData().setInt8(0, value), typeUrl: '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}int8');
      } else if (byteSize < 3) {
        return Any(value: Uint8List(2)..buffer.asByteData().setInt16(0, value, Endian.big), typeUrl: '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}int16');
      } else if (byteSize < 4) {
        return Any(value: Uint8List(4)..buffer.asByteData().setInt32(0, value, Endian.big), typeUrl: '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}int32');
      } else {
        return Any(value: Uint8List(8)..buffer.asByteData().setInt64(0, value, Endian.big), typeUrl: '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}int64');
      }
    }
    if (value is double) {
      return Any(value: Uint8List(8)..buffer.asByteData().setFloat64(0, value, Endian.big), typeUrl: '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}float64');
    }
    if (value == null) {
      return Any(value: null, typeUrl: '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}Null');
    }
    if (value is bool) {
      return Any(value: value ? [1] : [0], typeUrl: '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}Boolean');
    }
    if (value is Decimal) {
      return Any(value: utf8.encode(value.toString()), typeUrl: '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}Decimal');
    }
    ''');
    // Registry types
    for (final classElement in mappedClasses) {
      final typeName = classElement.name;
      final gTypeName = '$_generatedPrefix$typeName';
      final gTypeUrl = '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}$gTypeName';
      code.write('if (value is $typeName) {');
      if (classElement.isEnum) {
        code.write("return Any(value: Uint8List(max(1, (value.index.bitLength / 8).ceil()))..buffer.asByteData().setUint8(0, value.index), typeUrl: '$gTypeUrl');");
      } else {
         code.write('return Any.pack(\$${typeName}ProtoMapper().toProto(value), typeUrlPrefix: \'$_typeUrlPrefix\');');
      }
      code.write('}');

      // Remember to import the actual classes
      importedLibraries.add(classElement.library.identifier);
    }

    code.write('throw "\${value.runtimeType} not (yet) supported!";');
    return Code(code.toString());
  }

  Code? _fromProto(Set<String> importedLibraries, List<ClassElement> mappedClasses) {
    final code = StringBuffer('switch (proto.typeUrl) {\n');
    // Base types
    code.write('''
      case '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}String':
        return utf8.decode(proto.value);
      case '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}int8':
        return Uint8List.fromList(proto.value).buffer.asByteData().getUint8(0);
      case '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}int16':
        return Uint8List.fromList(proto.value).buffer.asByteData().getUint16(0, Endian.big);
      case '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}int32':
        return Uint8List.fromList(proto.value).buffer.asByteData().getUint32(0, Endian.big);
      case '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}int64':
        return Uint8List.fromList(proto.value).buffer.asByteData().getUint64(0, Endian.big);
      case '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}float32':
        return Uint8List.fromList(proto.value).buffer.asByteData().getFloat32(0, Endian.big);
      case '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}float64':
        return Uint8List.fromList(proto.value).buffer.asByteData().getFloat64(0, Endian.big);
      case '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}Null':
        return null;
      case '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}Boolean':
        return proto.value[0] == 1;
      case '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}Decimal':
        return Decimal.parse(utf8.decode(proto.value));
    ''');
    // Registry types
    for (final classElement in mappedClasses) {
      final typeName = classElement.name;
      final gTypeName = '$_generatedPrefix$typeName';
      final gTypeUrl = '${_typeUrlPrefix.isNotEmpty ? '$_typeUrlPrefix/' : ''}$gTypeName';
      final filename = classElement.library.identifier.substring(classElement.library.identifier.lastIndexOf('/') + 1).replaceAll('.dart', '');
      code.write("case '$gTypeUrl':");
      if (classElement.isEnum) {
        code.write('final index = Uint8List.fromList(proto.value).buffer.asByteData().getUint8(0);');
        code.write('return $typeName.values[index];');
        // importedLibraries.add('$_generatedPbFolder/$filename.pbenum.dart');
      } else {
        code.write('return proto.unpackInto($gTypeName()).to$typeName();');
        importedLibraries.add('$_generatedPbFolder/$filename.pb.dart');
      }
    }
    code.writeln('default: throw "\${proto.typeUrl} not (yet) supported!"; }');
    return Code(code.toString());
  }
}
