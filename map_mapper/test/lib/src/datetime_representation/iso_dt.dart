import 'package:squarealfa_common_types/squarealfa_common_types.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';

part 'iso_dt.g.dart';

@MapMapped(dateTimeRepresentation: DateTimeRepresentation.iso8601String)
class IsoDt {
  final DateTime prop1;
  final DateTime? prop2;
  final String someOther;

  IsoDt({
    required this.prop1,
    this.prop2,
    required this.someOther,
  });
}
