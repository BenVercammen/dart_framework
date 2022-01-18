import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'airplane.dart';
import 'car.dart';

part 'vehicle.g.dart';

@MapMapped(knownSubClasses: [
  Car,
  Airplane,
])
abstract class Vehicle {
  final int weight;
  Vehicle({
    required this.weight,
  });
}
