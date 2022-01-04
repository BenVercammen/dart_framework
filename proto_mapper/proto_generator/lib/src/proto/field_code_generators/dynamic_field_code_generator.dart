import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DynamicFieldCodeGenerator extends FieldCodeGenerator {
  DynamicFieldCodeGenerator(FieldDescriptor fieldDescriptor, List<int> lineNumbers)
      : super(fieldDescriptor, lineNumbers);

  @override
  String get fieldType => 'google.protobuf.Any';
}
