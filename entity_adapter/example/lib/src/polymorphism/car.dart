import 'package:example/grpc/polymorphism/car.pb.dart';
import 'package:example/src/entity.dart';
import 'package:squarealfa_entity_adapter/squarealfa_entity_adapter.dart';

import 'vehicle.dart';

part 'car.g.dart';

@entity
class Car extends Vehicle {
  Car({
    required this.numberOfDoors,
    required int weight,
  }) : super(weight: weight);

  final int numberOfDoors;
}
