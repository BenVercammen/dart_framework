import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DateTimeFieldCodeGenerator extends FieldCodeGenerator {
  DateTimeFieldCodeGenerator(
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
      'Int64($instanceReference.millisecondsSinceEpoch)';

  @override
  String get fromProtoNonNullableExpression =>
      'DateTime.fromMillisecondsSinceEpoch(instance.$protoFieldName.toInt())';
}
