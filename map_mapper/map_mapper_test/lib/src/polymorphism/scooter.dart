import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'abstract_vehicle.dart';

part 'scooter.g.dart';

@mapMapped
class Scooter extends AbstractVehicle {
  Scooter({
    required int weight,
  }) : super(weight: weight);
}
