import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/polymorphism/car.pb.dart';

import 'vehicle.dart';

part 'car.g.dart';

@proto
@mapProto
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
