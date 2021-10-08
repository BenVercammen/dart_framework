import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/field_descriptor.dart';
import 'package:source_gen/source_gen.dart';

import 'proto/field_code_generator.dart';
import 'proto/field_code_generators/external_proto_name.dart';

String createFieldDeclarations(
  Iterable<FieldDescriptor> fieldDescriptors,
  List<String> externalProtoNames,
) {
  final fieldBuffer = StringBuffer();
  var lineNumber = 1;
  for (var fieldDescriptor in fieldDescriptors) {
    var fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
      fieldDescriptor,
      lineNumber++,
    );

    var fieldLine = fieldCodeGenerator.fieldLine;
    fieldBuffer.writeln(
        '  ${fieldDescriptor.isRepeated ? 'repeated ' : ''}$fieldLine');
    if (fieldDescriptor.isNullable) {
      fieldBuffer.writeln('  ${fieldCodeGenerator.hasValueLine}');
      lineNumber++;
    }

    if (fieldCodeGenerator is! ExternalProtoName) continue;
    var externalProtoName =
        (fieldCodeGenerator as ExternalProtoName).externalProtoName;
    if (externalProtoName != null &&
        !externalProtoNames.contains(externalProtoName)) {
      externalProtoNames.add(externalProtoName);
    }
  }

  return fieldBuffer.toString();
}

extension ProtoDartTypeExtension on DartType {
  bool get hasMapProto {
    if (element == null) return false;
    final ret =
        TypeChecker.fromRuntime(MapProto).firstAnnotationOf(element!) != null;
    return ret;
  }

  bool get hasProto {
    if (element == null) return false;
    final ret =
        TypeChecker.fromRuntime(Proto).firstAnnotationOf(element!) != null;
    return ret;
  }

  String get packageName {
    final element = this.element;
    if (element == null) return '';
    var annotation = TypeChecker.fromRuntime(Proto).firstAnnotationOf(element);

    var packageName =
        annotation?.getField('packageName')?.toStringValue() ?? '';
    return packageName;
  }
}

extension ProtoMethodElementExtension on MethodElement {
  bool get hasMapProto {
    final alias = type.alias;
    if (alias == null) return false;
    final ret =
        TypeChecker.fromRuntime(MapProto).firstAnnotationOf(alias.element) !=
            null;
    return ret;
  }
}
