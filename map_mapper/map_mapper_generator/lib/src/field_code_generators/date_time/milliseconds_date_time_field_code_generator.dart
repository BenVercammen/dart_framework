import '../../field_code_generator.dart';
import '../../field_descriptor.dart';

class MillisecondsDateTimeFieldCodeGenerator extends FieldCodeGenerator {
  MillisecondsDateTimeFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, bool hasDefaultsProvider)
      : super(fieldDescriptor, hasDefaultsProvider);

  @override
  String get toMapExpression => 'instance.$fieldName.millisecondsSinceEpoch';

  @override
  String get toNullableMapExpression =>
      'instance.$fieldName?.millisecondsSinceEpoch';

  @override
  String fromMapExpression(String sourceExpression) =>
      'DateTime.fromMillisecondsSinceEpoch($sourceExpression)';
}
