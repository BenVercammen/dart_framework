import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'vehicle.dart';

part 'airplane.g.dart';

@mapMapped
class Airplane extends Vehicle {
  Airplane({
    required int weight,
    required this.wingspan,
  }) : super(weight: weight);

  final int wingspan;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Airplane && other.wingspan == wingspan;
  }

  @override
  int get hashCode => wingspan.hashCode;
}
