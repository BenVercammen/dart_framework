import '../../field_code_generator.dart';
import '../../field_descriptor.dart';

class Iso8601DateTimeFieldCodeGenerator extends FieldCodeGenerator {
  Iso8601DateTimeFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, bool hasDefaultsProvider)
      : super(fieldDescriptor, hasDefaultsProvider);

  @override
  String get toMapExpression => 'instance.$fieldName.toIso8601String()';

  @override
  String get toNullableMapExpression =>
      'instance.$fieldName?.toIso8601String()';

  @override
  String fromMapExpression(String sourceExpression) =>
      'DateTime.parse($sourceExpression)';
}
