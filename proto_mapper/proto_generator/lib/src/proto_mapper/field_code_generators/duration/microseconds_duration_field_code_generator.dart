import '../../field_code_generator.dart';
import '../../field_descriptor.dart';

class MicrosecondsDurationFieldCodeGenerator extends FieldCodeGenerator {
  MicrosecondsDurationFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = FieldCodeGenerator.defaultRefName,
    String protoRefName = FieldCodeGenerator.defaultProtoRefName,
  }) : super(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  @override
  String get toProtoExpression =>
      '''$instanceReference.inMicroseconds.toDouble()''';

  @override
  String get fromProtoNonNullableExpression =>
      '''Duration(microseconds: instance.$fieldName.toInt())''';
}
