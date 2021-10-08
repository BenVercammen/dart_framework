import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/field_descriptor.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../proto_common.dart';
import '../proto_services_generator_base.dart';
import 'method_descriptor.dart';

class ProtoServicesGenerator extends GeneratorForAnnotation<ProtoServices> {
  final BuilderOptions options;
  final String _prefix;
  final String _defaultPackage;

  ProtoServicesGenerator(this.options)
      : _prefix = options.config['prefix'] as String? ?? 'G',
        _defaultPackage = options.config['package'] as String? ?? '';

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    var readAnnotation = _hydrateAnnotation(annotation, prefix: _prefix);

    var classElement = element.asClassElement();
    if (classElement.kind == ElementKind.ENUM) return '';

    var packageName = readAnnotation.packageName != '' ? '' : _defaultPackage;

    final generator = _Generator(
      annotation: readAnnotation,
      classElement: classElement,
      prefix: _prefix,
      packageName: packageName,
    );

    final ret = generator.generateForClass();

    return ret;
  }
}

class _Generator extends ProtoServicesGeneratorBase {
  final ProtoServices annotation;
  final String packageName;
  final String packageDeclaration;

  _Generator({
    required this.annotation,
    required String prefix,
    required ClassElement classElement,
    required this.packageName,
  })  : packageDeclaration = packageName != '' ? 'package $packageName;' : '',
        super(classElement: classElement, prefix: prefix);

  String generateForClass() {
    final externalProtoNames = <String>[];
    final messagesBuffer = StringBuffer();
    final methodDescriptors = _getMethodDescriptors(classElement, annotation);
    final methodDeclarations = _createMethodDeclarations(
      methodDescriptors,
      messagesBuffer,
      externalProtoNames,
    );

    var imports = StringBuffer();
    for (var externalProtoName in externalProtoNames) {
      imports.writeln('import \'$externalProtoName\';');
    }

    final services = methodDeclarations == ''
        ? ''
        : '''
service $prefix$serviceClassName
{
$methodDeclarations} 
    ''';

    var ret = '''
syntax = "proto3";

$imports

$packageDeclaration

$services

$messagesBuffer
 
''';
    return ret;
  }

  String _createMethodDeclarations(
    Iterable<MethodDescriptor> methodDescriptors,
    StringBuffer messagesBuffer,
    List<String> externalProtoNames,
  ) {
    var methodBuffer = StringBuffer();

    for (var methodDescriptor in methodDescriptors) {
      final methodName = methodDescriptor.pascalName;
      final parameterType = _getParameterType(
          methodDescriptor, messagesBuffer, externalProtoNames);
      final returnType =
          _getReturnType(methodDescriptor, messagesBuffer, externalProtoNames);

      methodBuffer.writeln(
          '''  rpc $methodName ($parameterType) returns ($returnType);''');
    }
    return methodBuffer.toString();
  }

  String _getReturnType(
    MethodDescriptor methodDescriptor,
    StringBuffer messagesBuffer,
    List<String> externalProtoNames,
  ) {
    final protoMappedReturnType =
        _getProtoMappedReturnType(methodDescriptor, externalProtoNames);
    if (protoMappedReturnType.isNotEmpty) {
      return protoMappedReturnType;
    }

    final messageName = getReturnMessageName(methodDescriptor.pascalName);

    final fieldDeclarations = _getReturnFieldDeclarations(
        methodDescriptor.returnType.futureType, externalProtoNames);

    messagesBuffer.write(
      '''
message $messageName {
$fieldDeclarations}

''',
    );

    return messageName;
  }

  String _getProtoMappedReturnType(
    MethodDescriptor methodDescriptor,
    List<String> externalProtoNames,
  ) {
    final returnType = methodDescriptor.returnType;
    final finalType = returnType.finalType;
    if (finalType.isVoid) return '';
    if (finalType.element?.kind == ElementKind.ENUM) return '';
    if (!finalType.hasProto) return '';
    if (returnType.futureType.nullabilitySuffix == NullabilitySuffix.question) {
      return '';
    }
    final returnExternalProtoName = _getExternalProtoName(returnType);
    if (returnExternalProtoName != '' &&
        !externalProtoNames.contains(returnExternalProtoName)) {
      externalProtoNames.add(returnExternalProtoName);
    }

    return _getTypeName(returnType);
  }

  String _getParameterType(
    MethodDescriptor methodDescriptor,
    StringBuffer messagesBuffer,
    List<String> externalProtoNames,
  ) {
    final protoMappedParameter =
        _getProtoMappedParameterType(methodDescriptor, externalProtoNames);
    if (protoMappedParameter.isNotEmpty) {
      return protoMappedParameter;
    }

    final messageName = getParameterMessageName(methodDescriptor.pascalName);

    final fieldDeclarations =
        _getParameterFieldDeclarations(methodDescriptor, externalProtoNames);

    messagesBuffer.write(
      '''
message $messageName {
$fieldDeclarations}

''',
    );

    return messageName;
  }

  String _getReturnFieldDeclarations(
    DartType type,
    List<String> externalProtoNames,
  ) {
    if (type.isVoid) return '';
    final fd = FieldDescriptor(
      Proto(
        prefix: prefix,
        packageName: packageName,
      ),
      displayName: 'value',
      isFinal: true,
      name: 'value',
      fieldElementType: type,
    );
    final fieldDeclarations = createFieldDeclarations([fd], externalProtoNames);
    return fieldDeclarations;
  }

  String _getParameterFieldDeclarations(
    MethodDescriptor methodDescriptor,
    List<String> externalProtoNames,
  ) {
    final fds = methodDescriptor.methodElement.parameters
        .map((p) => FieldDescriptor(
              Proto(
                prefix: prefix,
                packageName: packageName,
              ),
              displayName: p.displayName,
              fieldElementType: p.type,
              isFinal: true,
              name: p.name,
            ))
        .toList();

    final fieldDeclarations = createFieldDeclarations(fds, externalProtoNames);
    return fieldDeclarations;
  }

  String _getTypeName(DartType type) {
    final itemType = type.finalType;
    final listOf = (type.isList || type.isSet) ? 'ListOf' : '';
    final displayName = itemType.getDisplayString(withNullability: false);
    final ret = '$prefix$listOf$displayName';
    return ret;
  }

  String _getProtoMappedParameterType(
      MethodDescriptor methodDescriptor, List<String> externalProtoNames) {
    if (methodDescriptor.methodElement.parameters.length != 1) {
      return '';
    }
    final finalType = methodDescriptor.parameterType.finalType;
    if (!finalType.hasProto) return '';

    final parmExternalProtoName =
        _getExternalProtoName(methodDescriptor.parameterType);
    if (parmExternalProtoName != '' &&
        !externalProtoNames.contains(parmExternalProtoName)) {
      externalProtoNames.add(parmExternalProtoName);
    }

    return _getTypeName(methodDescriptor.parameterType);
  }
}

Iterable<MethodDescriptor> _getMethodDescriptors(
  ClassElement classElement,
  ProtoServices annotation,
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

ProtoServices _hydrateAnnotation(ConstantReader reader, {String prefix = ''}) {
  var ret = ProtoServices(
    prefix: reader.read('prefix').literalValue as String? ?? prefix,
    packageName: reader.read('packageName').literalValue as String? ?? '',
  );

  return ret;
}

String _getExternalProtoName(DartType type) {
  var fieldElementType = type.finalType;
  var segments = fieldElementType.element?.source?.uri.pathSegments.toList();
  if (segments == null) {
    return '';
  }
  var lastSrc = segments.lastIndexOf('src');
  if (lastSrc != -1) segments.removeRange(0, lastSrc + 1);
  var fileName = segments[segments.length - 1];
  fileName = fileName.substring(0, fileName.length - 4) + 'proto';
  segments[segments.length - 1] = fileName;
  final ret = segments.join('/');
  return ret;
}
