import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DurationFieldCodeGenerator extends FieldCodeGenerator {
  DurationFieldCodeGenerator(
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
      '''$instanceReference.${fieldDescriptor.durationPrecision.fromDurationProperty}.toDouble()''';

  @override
  String get fromProtoNonNullableExpression =>
      '''Duration(${fieldDescriptor.durationPrecision.toDurationProperty}: instance.$fieldName.toInt())''';
}
