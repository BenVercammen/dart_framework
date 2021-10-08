import '../field_code_generator.dart';
import '../field_descriptor.dart';

class EnumFieldCodeGenerator extends FieldCodeGenerator {
  EnumFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = FieldCodeGenerator.defaultRefName,
    String protoRefName = FieldCodeGenerator.defaultProtoRefName,
  }) : super(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        ) {
    _prefix = fieldDescriptor.prefix;
  }

  String? _prefix;

  @override
  String get fromProtoNonNullableExpression =>
      '''${fieldDescriptor.fieldElementTypeName}.values[$ref$fieldName.value]''';

  @override
  String get toProtoExpression =>
      '''$_prefix${fieldDescriptor.fieldElementTypeName}
    .valueOf($instanceReference.index)!''';
}
