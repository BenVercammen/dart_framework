// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legacy.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $LegacyMapMapper extends MapMapper<Legacy> {
  const $LegacyMapMapper();

  @override
  Legacy fromMap(Map<String, dynamic> map) {
    return Legacy(
      prop1: Duration(milliseconds: map['prop1']),
      prop2: map['prop2'] == null ? null : Duration(milliseconds: map['prop2']),
      someOther: map['someOther'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(Legacy instance) {
    final map = <String, dynamic>{};

    map['prop1'] = instance.prop1.inMilliseconds;
    map['prop2'] = instance.prop2?.inMilliseconds;
    map['someOther'] = instance.someOther;

    return map;
  }
}

extension $LegacyMapExtension on Legacy {
  Map<String, dynamic> toMap() => const $LegacyMapMapper().toMap(this);
  static Legacy fromMap(Map<String, dynamic> map) =>
      const $LegacyMapMapper().fromMap(map);
}

extension $MapLegacyExtension on Map<String, dynamic> {
  Legacy toLegacy() => const $LegacyMapMapper().fromMap(this);
}

class $LegacyFieldNames {
  final String fieldName;
  final String prefix;

  $LegacyFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $LegacyFieldNames()
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
