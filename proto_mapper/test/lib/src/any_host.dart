import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/any_host.pb.dart';
import 'package:proto_generator_test/src/dynamic_mapper.g.dart';

part 'any_host.g.dart';

@proto
@mapProto
class DynamicObject {
  late dynamic dynamicProperty;
  late Object objectProperty;
}

@proto
@mapProto
class DynamicMap {
  late Map<String, dynamic> dynamicMap;
  late Map<String, Object> objectMap;
}

@proto
@mapProto
class DynamicSet {
  late Set<dynamic> dynamicSet;
  late Set<Object> objectSet;
}

@proto
@mapProto
class DynamicList {
  late List<dynamic> dynamicList;
  late List<Object> objectList;
}

