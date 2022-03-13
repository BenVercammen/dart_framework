// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scooter.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $ScooterMapMapper extends MapMapper<Scooter> {
  const $ScooterMapMapper();

  @override
  Scooter fromMap(Map<String, dynamic> map) {
    return Scooter(
      weight: map['weight'] as int,
    );
  }

  @override
  Map<String, dynamic> toMap(Scooter instance) {
    final map = <String, dynamic>{};

    map['weight'] = instance.weight;

    return map;
  }
}

extension $ScooterMapExtension on Scooter {
  Map<String, dynamic> toMap() => const $ScooterMapMapper().toMap(this);
  static Scooter fromMap(Map<String, dynamic> map) =>
      const $ScooterMapMapper().fromMap(map);
}

extension $MapScooterExtension on Map<String, dynamic> {
  Scooter toScooter() => const $ScooterMapMapper().fromMap(this);
}

class $ScooterFieldNames {
  final String fieldName;
  final String prefix;

  $ScooterFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $ScooterFieldNames()
      : fieldName = '',
        prefix = '';

  static const _weight = 'weight';
  String get weight => prefix + _weight;

  @override
  String toString() => fieldName;
}
