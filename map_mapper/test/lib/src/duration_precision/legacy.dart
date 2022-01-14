import 'package:map_mapper_annotations/map_mapper_annotations.dart';

part 'legacy.g.dart';

// ignore: deprecated_member_use
@mapMap
class Legacy {
  final Duration prop1;
  final Duration? prop2;
  final String someOther;
  Legacy({
    required this.prop1,
    this.prop2,
    required this.someOther,
  });
}
