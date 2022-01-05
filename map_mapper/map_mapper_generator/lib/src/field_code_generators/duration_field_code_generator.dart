import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DurationFieldCodeGenerator extends FieldCodeGenerator {
  DurationFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, bool hasDefaultsProvider)
      : super(fieldDescriptor, hasDefaultsProvider);

  @override
  String get toMapExpression =>
      'instance.$fieldName.${fieldDescriptor.durationPrecision.fromDurationProperty}';

  @override
  String get toNullableMapExpression =>
      'instance.$fieldName?.${fieldDescriptor.durationPrecision.fromDurationProperty}';

  @override
  String fromMapExpression(String sourceExpression) =>
      'Duration(${fieldDescriptor.durationPrecision.toDurationProperty}: $sourceExpression)';
}
