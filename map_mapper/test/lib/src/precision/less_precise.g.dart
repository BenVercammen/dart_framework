// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'less_precise.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $LessPreciseMapMapper extends MapMapper<LessPrecise> {
  const $LessPreciseMapMapper();

  @override
  LessPrecise fromMap(Map<String, dynamic> map) {
    return LessPrecise(
      prop1: Duration(milliseconds: map['prop1']),
      prop2: map['prop2'] == null ? null : Duration(milliseconds: map['prop2']),
      someOther: map['someOther'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(LessPrecise instance) {
    final map = <String, dynamic>{};

    map['prop1'] = instance.prop1.inMilliseconds;
    map['prop2'] = instance.prop2?.inMilliseconds;
    map['someOther'] = instance.someOther;

    return map;
  }
}

extension $LessPreciseMapExtension on LessPrecise {
  Map<String, dynamic> toMap() => const $LessPreciseMapMapper().toMap(this);
  static LessPrecise fromMap(Map<String, dynamic> map) =>
      const $LessPreciseMapMapper().fromMap(map);
}

extension $MapLessPreciseExtension on Map<String, dynamic> {
  LessPrecise toLessPrecise() => const $LessPreciseMapMapper().fromMap(this);
}

class $LessPreciseFieldNames {
  final String fieldName;
  final String prefix;

  $LessPreciseFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $LessPreciseFieldNames()
      : fieldName = '',
        prefix = '';

  static const _prop1 = 'prop1';
  String get prop1 => prefix + _prop1;
  static const _prop2 = 'prop2';
  String get prop2 => prefix + _prop2;
  static const _someOther = 'someOther';
  String get someOther => prefix + _someOther;

  @override
  String toString() => fieldName;
}
