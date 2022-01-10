import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto_common.dart';
import 'package:proto_generator/src/proto_mapper/field_code_generator.dart';
import 'package:proto_generator/src/proto_mapper/field_descriptor.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../proto_services_generator_base.dart';
import 'method_descriptor.dart';

class ProtoServicesServiceGenerator
    extends GeneratorForAnnotation<MapProtoServices> {
  final BuilderOptions options;
  late String _prefix;
  late String _defaultPackage;

  ProtoServicesServiceGenerator(this.options) {
    var config = options.config;
    _prefix = config['prefix'] as String? ?? 'G';
    _defaultPackage = config['package'] as String? ?? '';
  }

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    var readAnnotation = _hydrateAnnotation(annotation, prefix: _prefix);

    final classElement = element.asClassElement();

    final generator = _Generator(
      classElement: classElement,
      annotation: readAnnotation,
      packageName: readAnnotation.packageName != '' ? '' : _defaultPackage,
      prefix: _prefix,
    );
    final ret = generator.generateForClass();

    return ret;
  }
}

class _Generator extends ProtoServicesGeneratorBase {
  final MapProtoServices annotation;
  final String packageName;
  final String packageDeclaration;
  final bool withAuthenticator;

  _Generator({
    required this.annotation,
    required String prefix,
    required ClassElement classElement,
    required this.packageName,
  })  : packageDeclaration = packageName != '' ? 'package $packageName;' : '',
        withAuthenticator = annotation.withAuthenticator,
        super(classElement: classElement, prefix: prefix);

  String generateForClass() {
    var methodDescriptors = _getMethodDescriptors(classElement, annotation);
    final methodBuffer = StringBuffer();
    final externalProtoNames = <String>[];

    for (var methodDescriptor in methodDescriptors) {
      _generateMethod(methodDescriptor, methodBuffer, externalProtoNames);
    }

    String ret = _generateClass(externalProtoNames, methodBuffer);
    return ret;
  }

  String _generateClass(
      List<String> externalProtoNames, StringBuffer methodBuffer) {
    var imports = StringBuffer();
    for (var externalProtoName in externalProtoNames) {
      imports.writeln('import "$externalProtoName";');
    }

    final className = classElement.name;
    final serviceClassName = className.endsWith('Base')
        ? className.substring(0, className.length - 'Base'.length)
        : className.endsWith('Interface')
            ? className.substring(0, className.length - 'Interface'.length)
            : className;

    var ret = '''
    
    typedef ${serviceClassName}Factory = $className Function(ServiceCall call);
    
    
    
    class $prefix$serviceClassName extends $prefix${serviceClassName}Base
    {
      final ${serviceClassName}Factory \$serviceFactory;
      ${withAuthenticator ? 'final void Function(ServiceCall call) \$authenticator;' : ''}
      
    
      $prefix$serviceClassName(
    this.\$serviceFactory,
    ${withAuthenticator ? 'this.\$authenticator,' : ''}
      );
    
      ${withAuthenticator ? '''
    @override
    void \$onMetadata(ServiceCall context) {
        \$authenticator(context);
    }  
      ''' : ''}
    
    
      $methodBuffer
    } 
    ''';
    return ret;
  }

  void _generateMethod(MethodDescriptor methodDescriptor,
      StringBuffer methodBuffer, List<String> externalProtoNames) {
    final methodName = methodDescriptor.name;
    final asnc = methodDescriptor.returnTypeIsFuture ? 'await' : '';
    final pVarBuffer = StringBuffer();
    final pParmBuffer = StringBuffer();
    final gParameterType =
        _getParameterType(methodDescriptor, pVarBuffer, pParmBuffer);

    final pResultBuffer = StringBuffer();
    final pReturnBuffer = StringBuffer();
    final gReturnType =
        _getReturnType(methodDescriptor, pResultBuffer, pReturnBuffer);

    methodBuffer.writeln('''
      @override Future<$gReturnType> $methodName(ServiceCall call, $gParameterType request,) async {
        final service = \$serviceFactory(call);
    
        $pVarBuffer
        $pResultBuffer $asnc service.$methodName($pParmBuffer );
        $pReturnBuffer
        return proto;
      }
    
    ''');

    final externalProtoNames2 =
        _getExternalProtoNames(methodDescriptor.returnType);

    if (externalProtoNames2.isNotEmpty) {
      for (String externalProtoName in externalProtoNames2) {
        if (!externalProtoNames.contains(externalProtoName)) {
          externalProtoNames.add(externalProtoName);
        }
      }
    }
  }

  String _getReturnType(
    MethodDescriptor methodDescriptor,
    StringBuffer pResultBuffer,
    StringBuffer pReturnBuffer,
  ) {
    final protoMappedReturnType = _getProtoMappedReturnType(
      methodDescriptor,
      pResultBuffer,
      pReturnBuffer,
    );
    if (protoMappedReturnType.isNotEmpty) {
      // pResultBuffer.write(r'final $result = ');
      // pReturnBuffer.write(protoMappedReturnType);
      return protoMappedReturnType;
    }

    final messageName = getReturnMessageName(methodDescriptor.pascalName);

    final futureType = methodDescriptor.returnType.futureType;
    if (futureType.isVoid) {
      pReturnBuffer.write('final proto = $messageName();');
      return messageName;
    }

    final fd = FieldDescriptor(
      MapProto(
        prefix: prefix,
        packageName: packageName,
      ),
      displayName: 'value',
      isFinal: true,
      name: 'value',
      fieldElementType: futureType,
    );

    final fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
      fd,
      refName: '',
    );

    pResultBuffer.write('final value = ');
    pReturnBuffer.writeln('final proto = $messageName();');
    final assignment = fieldCodeGenerator.toProtoMap;
    pReturnBuffer.writeln(assignment);

    return messageName;
  }

  String _getParameterType(
    MethodDescriptor methodDescriptor,
    StringBuffer pVarBuffer,
    StringBuffer pParmBuffer,
  ) {
    final protoMappedParameter =
        _getProtoMappedParameterType(methodDescriptor, pVarBuffer, pParmBuffer);
    if (protoMappedParameter.isNotEmpty) return protoMappedParameter;

    final messageName = getParameterMessageName(methodDescriptor.pascalName);

    final parms = methodDescriptor.methodElement.parameters;
    if (parms.isEmpty) return messageName;

    int index = 0;
    for (final parm in parms) {
      final varname = 'p${index++}';
      pParmBuffer.write('$varname, ');

      final type = parm.type;

      final fd = FieldDescriptor(
        MapProto(
          prefix: prefix,
          packageName: packageName,
        ),
        displayName: parm.displayName,
        isFinal: true,
        name: parm.name,
        fieldElementType: type,
      );
      final fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
        fd,
        refName: 'request',
      );

      final expression = fieldCodeGenerator.fromProtoExpression;
      pVarBuffer.writeln('final $varname = $expression;');
    }

    return messageName;
  }

  String _getProtoMappedReturnType(
    MethodDescriptor methodDescriptor,
    StringBuffer pResultBuffer,
    StringBuffer pReturnBuffer,
  ) {
    final returnType = methodDescriptor.returnType;
    final finalType = returnType.finalType;
    if (finalType.isVoid) return '';
    if (finalType.element?.kind == ElementKind.ENUM) return '';
    if (!finalType.hasMapProto) return '';
    if (returnType.futureType.nullabilitySuffix == NullabilitySuffix.question) {
      return '';
    }

    final gReturnType = _getPrefixedTypeName(returnType);
    final protoAssign = !methodDescriptor.returnType.isList
        ? r'final proto = $result.toProto();'
        : '''final proto = $gReturnType()..items.addAll(\$result.map((i) => i.toProto()));''';

    pResultBuffer.write(r'final $result = ');
    pReturnBuffer.write(protoAssign);
    return gReturnType;
  }

  String _getTypeName(DartType type) {
    final itemType = type.finalType;
    final displayName = itemType.getDisplayString(withNullability: false);
    return displayName;
  }

  String _getPrefixedTypeName(DartType type) {
    final itemType = type.finalType;
    final listOf = type.isList ? 'ListOf' : '';
    final displayName = itemType.getDisplayString(withNullability: false);
    final ret = '$prefix$listOf$displayName';
    return ret;
  }

  Iterable<String> _getExternalProtoNames(DartType type) {
    var fieldElementType = type.finalType;
    var segments = fieldElementType.element?.source?.uri.pathSegments.toList();
    if (segments == null) {
      return [];
    }
    var lastSrc = segments.lastIndexOf('src');
    if (lastSrc != -1) segments.removeRange(0, lastSrc + 1);
    var fileName = segments[segments.length - 1];
    fileName = fileName.substring(0, fileName.length - 4) + 'proto';
    segments[segments.length - 1] = fileName;
    final ret = segments.join('/');
    return [ret];
  }

  String _getProtoMappedParameterType(
    MethodDescriptor methodDescriptor,
    StringBuffer pVarBuffer,
    StringBuffer pParmBuffer,
  ) {
    if (methodDescriptor.methodElement.parameters.length != 1) {
      return '';
    }
    final finalType = methodDescriptor.parameterType.finalType;
    if (!finalType.hasMapProto) return '';

    final parameterType = _getTypeName(methodDescriptor.parameterType);

    final toEntity = !methodDescriptor.parameterType.isList
        ? 'request.to$parameterType()'
        : 'request.items.map((i) => i.to$parameterType()).toList()';

    pVarBuffer.writeln('final entity = $toEntity;');
    pParmBuffer.writeln('entity');

    return _getPrefixedTypeName(methodDescriptor.parameterType);
  }
}

Iterable<MethodDescriptor> _getMethodDescriptors(
  ClassElement classElement,
  MapProtoServices annotation,
) {
  final methods = classElement.getSortedMethods();
  final methodDescriptors = methods
      .map((fieldElement) => MethodDescriptor.fromMethodElement(
            classElement,
            fieldElement,
            annotation,
          ))
      .where((element) => element.isProtoIncluded);
  return methodDescriptors;
}

MapProtoServices _hydrateAnnotation(ConstantReader reader,
    {String prefix = ''}) {
  var ret = MapProtoServices(
    prefix: reader.read('prefix').literalValue as String? ?? prefix,
    packageName: reader.read('packageName').literalValue as String? ?? '',
    withAuthenticator: reader.read('withAuthenticator').literalValue as bool,
  );

  return ret;
}
