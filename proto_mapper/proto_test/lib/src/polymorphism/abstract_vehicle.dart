import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/polymorphism/abstract_vehicle.pb.dart';

import 'bicycle.dart';
import 'scooter.dart';

part 'abstract_vehicle.g.dart';

const knownSubClasses = [
  Bicycle,
  Scooter,
];

@Proto(knownSubClasses: knownSubClasses)
@MapProto(knownSubClasses: knownSubClasses)
abstract class AbstractVehicle {
  final int weight;
  AbstractVehicle({
    required this.weight,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AbstractVehicle && other.weight == weight;
  }

  @override
  int get hashCode => weight.hashCode;
}
