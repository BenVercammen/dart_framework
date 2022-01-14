import 'package:map_mapper_annotations/map_mapper_annotations.dart';

part 'default_dt.g.dart';

@mapMapped
class DefaultDt {
  final DateTime prop1;
  final DateTime? prop2;
  final String someOther;

  DefaultDt({
    required this.prop1,
    this.prop2,
    required this.someOther,
  });
}
