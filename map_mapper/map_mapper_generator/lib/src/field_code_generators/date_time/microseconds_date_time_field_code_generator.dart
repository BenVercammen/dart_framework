import '../../field_code_generator.dart';
import '../../field_descriptor.dart';

class MicrosecondsDateTimeFieldCodeGenerator extends FieldCodeGenerator {
  MicrosecondsDateTimeFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, bool hasDefaultsProvider)
      : super(fieldDescriptor, hasDefaultsProvider);

  @override
  String get toMapExpression => 'instance.$fieldName.microsecondsSinceEpoch';

  @override
  String get toNullableMapExpression =>
      'instance.$fieldName?.microsecondsSinceEpoch';

  @override
  String fromMapExpression(String sourceExpression) =>
      'DateTime.fromMicrosecondsSinceEpoch($sourceExpression)';
}
