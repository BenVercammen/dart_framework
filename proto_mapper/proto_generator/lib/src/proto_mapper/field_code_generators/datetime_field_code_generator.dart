import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';

class DateTimeFieldCodeGenerator extends FieldCodeGenerator {
  DateTimeFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = FieldCodeGenerator.defaultRefName,
    String protoRefName = FieldCodeGenerator.defaultProtoRefName,
  }) : super(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  @override
  String get toProtoExpression {
    if (fieldDescriptor.dateTimePrecision == TimePrecision.microseconds) {
      return 'Int64($instanceReference.microsecondsSinceEpoch)';
    }
    return 'Int64($instanceReference.millisecondsSinceEpoch)';
  }

  @override
  String get fromProtoNonNullableExpression {
    if (fieldDescriptor.dateTimePrecision == TimePrecision.microseconds) {
      return 'DateTime.fromMicrosecondsSinceEpoch(instance.$protoFieldName.toInt())';
    }
    return 'DateTime.fromMillisecondsSinceEpoch(instance.$protoFieldName.toInt())';
  }
}
