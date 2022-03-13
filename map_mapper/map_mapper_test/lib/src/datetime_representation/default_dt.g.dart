// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_dt.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $DefaultDtMapMapper extends MapMapper<DefaultDt> {
  const $DefaultDtMapMapper();

  @override
  DefaultDt fromMap(Map<String, dynamic> map) {
    return DefaultDt(
      prop1: DateTime.fromMicrosecondsSinceEpoch(map['prop1']),
      prop2: map['prop2'] == null
          ? null
          : DateTime.fromMicrosecondsSinceEpoch(map['prop2']),
      someOther: map['someOther'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(DefaultDt instance) {
    final map = <String, dynamic>{};

    map['prop1'] = instance.prop1.microsecondsSinceEpoch;
    map['prop2'] = instance.prop2?.microsecondsSinceEpoch;
    map['someOther'] = instance.someOther;

    return map;
  }
}

extension $DefaultDtMapExtension on DefaultDt {
  Map<String, dynamic> toMap() => const $DefaultDtMapMapper().toMap(this);
  static DefaultDt fromMap(Map<String, dynamic> map) =>
      const $DefaultDtMapMapper().fromMap(map);
}

extension $MapDefaultDtExtension on Map<String, dynamic> {
  DefaultDt toDefaultDt() => const $DefaultDtMapMapper().fromMap(this);
}

class $DefaultDtFieldNames {
  final String fieldName;
  final String prefix;

  $DefaultDtFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $DefaultDtFieldNames()
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
