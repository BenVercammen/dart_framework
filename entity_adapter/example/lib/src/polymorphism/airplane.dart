import 'package:example/grpc/polymorphism/airplane.pb.dart';
import 'package:example/src/entity.dart';
import 'package:squarealfa_entity_adapter/squarealfa_entity_adapter.dart';

import 'vehicle.dart';

part 'airplane.g.dart';

@entity
class Airplane extends Vehicle {
  Airplane({
    required int weight,
    required this.wingspan,
  }) : super(weight: weight);

  final int wingspan;
}
