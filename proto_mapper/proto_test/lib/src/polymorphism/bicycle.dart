import 'package:proto_annotations/proto_annotations.dart';
import 'package:decimal/decimal.dart';

import 'package:proto_generator_test/grpc/polymorphism/bicycle.pb.dart';

import 'abstract_vehicle.dart';

part 'bicycle.g.dart';

@proto
@mapProto
class Bicycle extends AbstractVehicle {
  final Decimal wheelDiamater;

  Bicycle({
    required this.wheelDiamater,
    required int weight,
  }) : super(weight: weight);
}
