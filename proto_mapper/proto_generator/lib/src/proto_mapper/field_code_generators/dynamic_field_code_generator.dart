import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DynamicFieldCodeGenerator extends FieldCodeGenerator {
  DynamicFieldCodeGenerator(
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
      ''' DynamicProtoMapper.toProto($instanceReference)''';

  @override
  String get fromProtoNonNullableExpression =>
      ''' DynamicProtoMapper.fromProto($ref$fieldName)''';
}
