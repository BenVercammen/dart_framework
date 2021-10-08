import '../field_code_generator.dart';
import '../field_descriptor.dart';

class GenericFieldCodeGenerator extends FieldCodeGenerator {
  GenericFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = FieldCodeGenerator.defaultRefName,
    String protoRefName = FieldCodeGenerator.defaultProtoRefName,
  }) : super(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );
}
