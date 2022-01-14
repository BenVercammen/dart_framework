import 'package:squarealfa_common_types/squarealfa_common_types.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';

part 'micro_dt.g.dart';

@MapMapped(
  dateTimeRepresentation: DateTimeRepresentation.microsecondsSinceEpoch,
)
class MicroDt {
  final DateTime prop1;
  final DateTime? prop2;
  final String someOther;

  MicroDt({
    required this.prop1,
    this.prop2,
    required this.someOther,
  });
}
