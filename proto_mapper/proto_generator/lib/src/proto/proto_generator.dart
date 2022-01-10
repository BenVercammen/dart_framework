import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../proto_common.dart';
import 'field_descriptor.dart';

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

    var classElement = element.asClassElement();
    var packageName = readAnnotation.packageName != '' ? '' : _defaultPackage;

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
            readAnnotation,
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
    Proto annotation,
    String packageDeclaration,
  ) {
    final externalProtoNames = <String>[];
    var fieldDescriptors =
        _getFieldDescriptors(classElement, annotation, forEnum: false);
    final fieldDeclarations =
        createFieldDeclarations(fieldDescriptors, externalProtoNames);

    var imports = StringBuffer();
    for (var externalProtoName in externalProtoNames) {
      // Prevent .proto file from importing itself or multiple imports
      if (!alreadyImported.contains(externalProtoName)) {
        imports.writeln('import "$externalProtoName";');
        alreadyImported.add(externalProtoName);
      }
    }

    final className = classElement.name;

    final messages = '''
message $_prefix$className
{
$fieldDeclarations}   

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

Proto _hydrateAnnotation(ConstantReader reader,
    {String prefix = '', required bool useProtoFieldNamingConventions}) {
  var ret = Proto(
    prefix: reader.read('prefix').literalValue as String? ?? prefix,
    includeFieldsByDefault:
        reader.read('includeFieldsByDefault').literalValue as bool,
    packageName: reader.read('packageName').literalValue as String? ?? '',
    useProtoFieldNamingConventions:
        reader.read('useProtoFieldNamingConventions').literalValue as bool? ??
            useProtoFieldNamingConventions,
  );

  return ret;
}
