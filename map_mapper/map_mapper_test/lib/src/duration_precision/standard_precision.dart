import 'package:map_mapper_annotations/map_mapper_annotations.dart';

part 'standard_precision.g.dart';

@mapMapped
class StandardPrecision {
  final Duration prop1;
  final Duration? prop2;
  final String someOther;
  StandardPrecision({
    required this.prop1,
    this.prop2,
    required this.someOther,
  });
}
