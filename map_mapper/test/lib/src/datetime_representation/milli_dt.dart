import 'package:squarealfa_common_types/squarealfa_common_types.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';

part 'milli_dt.g.dart';

@MapMapped(
  dateTimeRepresentation: DateTimeRepresentation.millisecondsSinceEpoch,
)
class MilliDt {
  final DateTime prop1;
  final DateTime? prop2;
  final String someOther;

  MilliDt({
    required this.prop1,
    this.prop2,
    required this.someOther,
  });
}
