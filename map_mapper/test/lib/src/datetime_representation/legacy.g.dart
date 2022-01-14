// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legacy.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $LegacyDtMapMapper extends MapMapper<LegacyDt> {
  const $LegacyDtMapMapper();

  @override
  LegacyDt fromMap(Map<String, dynamic> map) {
    return LegacyDt(
      prop1: DateTime.parse(map['prop1']),
      prop2: map['prop2'] == null ? null : DateTime.parse(map['prop2']),
      someOther: map['someOther'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(LegacyDt instance) {
    final map = <String, dynamic>{};

    map['prop1'] = instance.prop1.toIso8601String();
    map['prop2'] = instance.prop2?.toIso8601String();
    map['someOther'] = instance.someOther;

    return map;
  }
}

extension $LegacyDtMapExtension on LegacyDt {
  Map<String, dynamic> toMap() => const $LegacyDtMapMapper().toMap(this);
  static LegacyDt fromMap(Map<String, dynamic> map) =>
      const $LegacyDtMapMapper().fromMap(map);
}

extension $MapLegacyDtExtension on Map<String, dynamic> {
  LegacyDt toLegacyDt() => const $LegacyDtMapMapper().fromMap(this);
}

class $LegacyDtFieldNames {
  final String fieldName;
  final String prefix;

  $LegacyDtFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $LegacyDtFieldNames()
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
