import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'bicycle.dart';
import 'scooter.dart';

part 'abstract_vehicle.g.dart';

@MapMapped(knownSubClasses: [
  Bicycle,
  Scooter,
])
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
