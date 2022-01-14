import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';

part 'less_precise.g.dart';

// ignore: deprecated_member_use
@MapMap(durationPrecision: TimePrecision.milliseconds)
class LessPrecise {
  final Duration prop1;
  final Duration? prop2;
  final String someOther;
  LessPrecise({
    required this.prop1,
    this.prop2,
    required this.someOther,
  });
}
