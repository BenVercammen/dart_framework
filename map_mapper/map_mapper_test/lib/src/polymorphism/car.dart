import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'vehicle.dart';

part 'car.g.dart';

@mapMapped
class Car extends Vehicle {
  Car({
    required this.numberOfDoors,
    required int weight,
  }) : super(weight: weight);

  final int numberOfDoors;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Car && other.numberOfDoors == numberOfDoors;
  }

  @override
  int get hashCode => numberOfDoors.hashCode;
}
