// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iso_dt.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $IsoDtMapMapper extends MapMapper<IsoDt> {
  const $IsoDtMapMapper();

  @override
  IsoDt fromMap(Map<String, dynamic> map) {
    return IsoDt(
      prop1: DateTime.parse(map['prop1']),
      prop2: map['prop2'] == null ? null : DateTime.parse(map['prop2']),
      someOther: map['someOther'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(IsoDt instance) {
    final map = <String, dynamic>{};

    map['prop1'] = instance.prop1.toIso8601String();
    map['prop2'] = instance.prop2?.toIso8601String();
    map['someOther'] = instance.someOther;

    return map;
  }
}

extension $IsoDtMapExtension on IsoDt {
  Map<String, dynamic> toMap() => const $IsoDtMapMapper().toMap(this);
  static IsoDt fromMap(Map<String, dynamic> map) =>
      const $IsoDtMapMapper().fromMap(map);
}

extension $MapIsoDtExtension on Map<String, dynamic> {
  IsoDt toIsoDt() => const $IsoDtMapMapper().fromMap(this);
}

class $IsoDtFieldNames {
  final String fieldName;
  final String prefix;

  $IsoDtFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $IsoDtFieldNames()
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
