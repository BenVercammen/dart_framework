import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';

class ProtoReflected {
  final Proto proto;
  final List<DartType>? knownSubClasses;

  ProtoReflected(this.proto, this.knownSubClasses);
}
