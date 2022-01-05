import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

part 'less_precise.g.dart';

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
