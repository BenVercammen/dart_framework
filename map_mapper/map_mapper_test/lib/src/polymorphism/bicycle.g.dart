// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bicycle.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $BicycleMapMapper extends MapMapper<Bicycle> {
  const $BicycleMapMapper();

  @override
  Bicycle fromMap(Map<String, dynamic> map) {
    return Bicycle(
      weight: map['weight'] as int,
      wheelDiamater: Decimal.parse(map['wheelDiamater']),
    );
  }

  @override
  Map<String, dynamic> toMap(Bicycle instance) {
    final map = <String, dynamic>{};

    map['weight'] = instance.weight;
    map['wheelDiamater'] = instance.wheelDiamater.toString();

    return map;
  }
}

extension $BicycleMapExtension on Bicycle {
  Map<String, dynamic> toMap() => const $BicycleMapMapper().toMap(this);
  static Bicycle fromMap(Map<String, dynamic> map) =>
      const $BicycleMapMapper().fromMap(map);
}

extension $MapBicycleExtension on Map<String, dynamic> {
  Bicycle toBicycle() => const $BicycleMapMapper().fromMap(this);
}

class $BicycleFieldNames {
  final String fieldName;
  final String prefix;

  $BicycleFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $BicycleFieldNames()
      : fieldName = '',
        prefix = '';

  static const _weight = 'weight';
  String get weight => prefix + _weight;
  static const _wheelDiamater = 'wheelDiamater';
  String get wheelDiamater => prefix + _wheelDiamater;

  @override
  String toString() => fieldName;
}
