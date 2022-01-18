import 'package:analyzer/dart/element/type.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';

class MapMappedReflected {
  final MapMapped mapMapped;
  final List<DartType>? knownSubClasses;

  MapMappedReflected(this.mapMapped, this.knownSubClasses);
}
