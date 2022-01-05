import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DateTimeFieldCodeGenerator extends FieldCodeGenerator {
  DateTimeFieldCodeGenerator(
    FieldDescriptor fieldDescriptor,
    List<int> lineNumbers,
  ) : super(fieldDescriptor, lineNumbers);

  @override
  String get fieldType => 'int64';
}
