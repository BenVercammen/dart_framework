// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abstract_vehicle.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $AbstractVehicleMapMapper extends MapMapper<AbstractVehicle> {
  const $AbstractVehicleMapMapper();

  @override
  AbstractVehicle fromMap(Map<String, dynamic> map) {
    final type = map['\$type'] as String?;
    switch (type) {
      case null:
      case 'AbstractVehicle':
        throw UnimplementedError();
      case 'Bicycle':
        return (const $BicycleMapMapper()).fromMap(map);

      case 'Scooter':
        return (const $ScooterMapMapper()).fromMap(map);

      default:
        throw UnimplementedError();
    }
  }

  @override
  Map<String, dynamic> toMap(AbstractVehicle instance) {
    if (instance is Bicycle) {
      return {
        '\$type': 'Bicycle',
        ...const $BicycleMapMapper().toMap(instance),
      };
    }

    if (instance is Scooter) {
      return {
        '\$type': 'Scooter',
        ...const $ScooterMapMapper().toMap(instance),
      };
    }

    final map = <String, dynamic>{};

    map['\$type'] = 'AbstractVehicle';

    map['weight'] = instance.weight;

    return map;
  }
}

extension $AbstractVehicleMapExtension on AbstractVehicle {
  Map<String, dynamic> toMap() => const $AbstractVehicleMapMapper().toMap(this);
  static AbstractVehicle fromMap(Map<String, dynamic> map) =>
      const $AbstractVehicleMapMapper().fromMap(map);
}

extension $MapAbstractVehicleExtension on Map<String, dynamic> {
  AbstractVehicle toAbstractVehicle() =>
      const $AbstractVehicleMapMapper().fromMap(this);
}

class $AbstractVehicleFieldNames {
  final String fieldName;
  final String prefix;

  $AbstractVehicleFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $AbstractVehicleFieldNames()
      : fieldName = '',
        prefix = '';

  static const _weight = 'weight';
  String get weight => prefix + _weight;

  @override
  String toString() => fieldName;
}
