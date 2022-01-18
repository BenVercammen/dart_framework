import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';

class MapProtoReflected {
  final MapProto mapProto;
  final List<DartType>? knownSubClasses;

  MapProtoReflected(this.mapProto, this.knownSubClasses);
}
