import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';
import 'package:recase/recase.dart';

import '../proto_common.dart';
import 'field_descriptor.dart';
import 'proto_reflected.dart';

class ProtoGenerator extends GeneratorForAnnotation<Proto> {
  final BuilderOptions options;
  late String _prefix;
  late String _defaultPackage;
  late bool _useProtoFieldNamingConventions;
  String? prevBuildStepPath;
  final Set<String> alreadyImported = {};

  ProtoGenerator(this.options) {
    var config = options.config;
    _prefix = config['prefix'] as String? ?? 'G';
    _defaultPackage = config['package'] as String? ?? '';
    _useProtoFieldNamingConventions =
        config['useProtoFieldNamingConventions'] as bool? ?? true;
  }

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    var readAnnotation = _hydrateAnnotation(
      annotation,
      prefix: _prefix,
      useProtoFieldNamingConventions: _useProtoFieldNamingConventions,
    );

    final proto = readAnnotation.proto;

    var classElement = element.asClassElement();
    var packageName = proto.packageName != '' ? '' : _defaultPackage;

    final packageDeclaration = packageName != '' ? 'package $packageName;' : '';

    var syntax = '';
    if (buildStep.inputId.path != prevBuildStepPath) {
      prevBuildStepPath = buildStep.inputId.path;
      syntax = '''syntax = "proto3";
      ''';
      alreadyImported.clear();
      alreadyImported.addAll(buildStep.allowedOutputs
          .map((e) => e.path.substring(e.path.lastIndexOf('/') + 1)));
    }

    var ret = classElement.kind == ElementKind.ENUM
        ? _generateForEnum(
            classElement,
            proto,
            packageDeclaration,
          )
        : _generateForClass(
            classElement,
            readAnnotation,
            packageDeclaration,
          );

    ret = '$syntax$ret';
    return ret;
  }

  String _generateForClass(
    ClassElement classElement,
    ProtoReflected protoReflected,
    String packageDeclaration,
  ) {
    final externalProtoNames = <String>[];
    final proto = protoReflected.proto;
    final knownSubclasses = protoReflected.knownSubClasses;
    var fieldDescriptors =
        _getFieldDescriptors(classElement, proto, forEnum: false);
    final fieldDeclarations =
        createFieldDeclarations(fieldDescriptors, externalProtoNames);

    final className = classElement.name;
    final fieldsMessage = _getFieldsMessage(
      classElement,
      knownSubclasses,
      fieldDeclarations,
    );
    final classMessageContent = _getClassMessageContent(
      proto,
      classElement,
      fieldDeclarations,
      knownSubclasses,
      externalProtoNames,
    );

    _addKnownSubClassExternalProtoNames(knownSubclasses, externalProtoNames);
    final imports = _getImports(externalProtoNames);

    final messages = '''

$fieldsMessage
  
message $_prefix$className
{
$classMessageContent
}   

message ${_prefix}ListOf$className
{
  repeated $_prefix$className items = 1;
}
    ''';

    var ret = '''

$imports

$packageDeclaration

$messages

 
''';
    return ret;
  }

  String _getFieldsMessage(
    ClassElement classElement,
    List<DartType>? knownSubclasses,
    String fieldDeclarations,
  ) {
    if (knownSubclasses == null || classElement.isAbstract) return '';
    final className = classElement.name;
    final fieldsMessage = '''
message ${_prefix}FieldsOf$className
{
  $fieldDeclarations
}
    ''';
    return fieldsMessage;
  }

  StringBuffer _getImports(List<String> externalProtoNames) {
    var imports = StringBuffer();
    for (var externalProtoName in externalProtoNames) {
      // Prevent .proto file from importing itself or multiple imports
      if (!alreadyImported.contains(externalProtoName)) {
        imports.writeln('import "$externalProtoName";');
        alreadyImported.add(externalProtoName);
      }
    }
    return imports;
  }

  String _generateForEnum(
    ClassElement classElement,
    Proto annotation,
    String packageDeclaration,
  ) {
    var fieldBuffer = StringBuffer();
    var fieldDescriptors =
        _getFieldDescriptors(classElement, annotation, forEnum: true);

    var lineNumber = 0;
    for (var fieldDescriptor in fieldDescriptors) {
      fieldBuffer
          .writeln('  ${fieldDescriptor.protoFieldName} = ${lineNumber++};');
    }
    var className = classElement.name;
    var ret = '''
    
$packageDeclaration
    
enum $_prefix$className
{
$fieldBuffer}   
     
message Nullable$_prefix$className
{
  bool ${(annotation.useProtoFieldNamingConventions ?? true) ? 'has_value' : 'hasValue'} = 1;
  $_prefix$className value = 2;
}
 
''';

    return ret;
  }

  String _getClassMessageContent(
    Proto proto,
    ClassElement classElement,
    String fieldDeclarations,
    List<DartType>? knownSubclasses,
    List<String> externalProtoNames,
  ) {
    if (knownSubclasses == null) return fieldDeclarations;
    final className = classElement.name;
    int lineNumber = 1;
    final fieldsOf = classElement.isAbstract
        ? ''
        : '    ${_prefix}FieldsOf$className ${className.snakeCase} = ${lineNumber++};\n';
    final fieldDescriptors = <FieldDescriptor>[
      ...knownSubclasses.map((ksc) {
        final fd = FieldDescriptor(
          proto,
          displayName: ksc.getDisplayString(withNullability: false),
          name: ksc.getDisplayString(withNullability: false),
          fieldElementType: ksc,
          isFinal: true,
          protoFieldAnnotation: ProtoField(number: lineNumber++),
        );
        return fd;
      }),
    ];

    final fds =
        createFieldDeclarations(fieldDescriptors, externalProtoNames, '    ');

    final ret = '''
  oneof props {
$fieldsOf$fds
  }
    ''';
    return ret;
  }

  void _addKnownSubClassExternalProtoNames(
    List<DartType>? knownSubclasses,
    List<String> externalProtoNames,
  ) {
    if (knownSubclasses == null) return;
  }
}

Iterable<FieldDescriptor> _getFieldDescriptors(
    ClassElement classElement, Proto annotation,
    {bool forEnum = false}) {
  final fieldSet = classElement.getSortedFieldSet();
  final fieldDescriptors = fieldSet
      .map((fieldElement) =>
          FieldDescriptor.fromFieldElement(fieldElement, annotation, forEnum))
      .where((element) => element.isProtoIncluded);
  return fieldDescriptors;
}

ProtoReflected _hydrateAnnotation(
  ConstantReader reader, {
  String prefix = '',
  required bool useProtoFieldNamingConventions,
}) {
  final proto = Proto(
    prefix: reader.read('prefix').literalValue as String? ?? prefix,
    includeFieldsByDefault:
        reader.read('includeFieldsByDefault').literalValue as bool,
    packageName: reader.read('packageName').literalValue as String? ?? '',
    useProtoFieldNamingConventions:
        reader.read('useProtoFieldNamingConventions').literalValue as bool? ??
            useProtoFieldNamingConventions,
  );

  final kscReader = reader.read('knownSubClasses');
  final kscs = kscReader.isNull
      ? null
      : kscReader.listValue.map((ksc) {
          return ksc.toTypeValue()!;
        }).toList();

  final ret = ProtoReflected(proto, kscs);

  return ret;
}
