import 'package:map_mapper_annotations/map_mapper_annotations.dart';

part 'legacy.g.dart';

// ignore: deprecated_member_use
@mapMap
class LegacyDt {
  final DateTime prop1;
  final DateTime? prop2;
  final String someOther;
  LegacyDt({
    required this.prop1,
    this.prop2,
    required this.someOther,
  });
}
