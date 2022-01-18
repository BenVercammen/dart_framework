import 'package:example/grpc/polymorphism/vehicle.pb.dart';
import 'package:squarealfa_entity_adapter/squarealfa_entity_adapter.dart';

import 'airplane.dart';
import 'car.dart';

part 'vehicle.g.dart';

@AdaptedEntity(knownSubClasses: [
  Car,
  Airplane,
])
class Vehicle {
  final int weight;
  Vehicle({
    required this.weight,
  });
}
