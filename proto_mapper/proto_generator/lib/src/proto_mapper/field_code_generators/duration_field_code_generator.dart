import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DurationFieldCodeGenerator extends FieldCodeGenerator {
  DurationFieldCodeGenerator(
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
      '''$instanceReference.inMilliseconds.toDouble()''';

  @override
  String get fromProtoNonNullableExpression =>
      '''Duration(milliseconds: instance.$fieldName.toInt())''';
}
