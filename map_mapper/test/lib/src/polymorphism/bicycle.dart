import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:decimal/decimal.dart';

import 'abstract_vehicle.dart';

part 'bicycle.g.dart';

@mapMapped
class Bicycle extends AbstractVehicle {
  final Decimal wheelDiamater;

  Bicycle({
    required this.wheelDiamater,
    required int weight,
  }) : super(weight: weight);
}
