import '../../field_code_generator.dart';
import '../../field_descriptor.dart';

class MicrosecondsDurationFieldCodeGenerator extends FieldCodeGenerator {
  MicrosecondsDurationFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, bool hasDefaultsProvider)
      : super(fieldDescriptor, hasDefaultsProvider);

  @override
  String get toMapExpression => 'instance.$fieldName.inMicroseconds';

  @override
  String get toNullableMapExpression => 'instance.$fieldName?.inMicroseconds';

  @override
  String fromMapExpression(String sourceExpression) =>
      'Duration(microseconds: $sourceExpression)';
}
