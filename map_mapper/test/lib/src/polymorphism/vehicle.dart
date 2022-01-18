import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'airplane.dart';
import 'car.dart';

part 'vehicle.g.dart';

@MapMapped(knownSubClasses: [
  Car,
  Airplane,
])
class Vehicle {
  final int weight;
  Vehicle({
    required this.weight,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Vehicle && other.weight == weight;
  }

  @override
  int get hashCode => weight.hashCode;
}
