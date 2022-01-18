// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $CarMapMapper extends MapMapper<Car> {
  const $CarMapMapper();

  @override
  Car fromMap(Map<String, dynamic> map) {
    return Car(
      weight: map['weight'] as int,
      numberOfDoors: map['numberOfDoors'] as int,
    );
  }

  @override
  Map<String, dynamic> toMap(Car instance) {
    final map = <String, dynamic>{};

    map['weight'] = instance.weight;
    map['numberOfDoors'] = instance.numberOfDoors;

    return map;
  }
}

extension $CarMapExtension on Car {
  Map<String, dynamic> toMap() => const $CarMapMapper().toMap(this);
  static Car fromMap(Map<String, dynamic> map) =>
      const $CarMapMapper().fromMap(map);
}

extension $MapCarExtension on Map<String, dynamic> {
  Car toCar() => const $CarMapMapper().fromMap(this);
}

class $CarFieldNames {
  final String fieldName;
  final String prefix;

  $CarFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $CarFieldNames()
      : fieldName = '',
        prefix = '';

  static const _weight = 'weight';
  String get weight => prefix + _weight;
  static const _numberOfDoors = 'numberOfDoors';
  String get numberOfDoors => prefix + _numberOfDoors;

  @override
  String toString() => fieldName;
}
