// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'milli_dt.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $MilliDtMapMapper extends MapMapper<MilliDt> {
  const $MilliDtMapMapper();

  @override
  MilliDt fromMap(Map<String, dynamic> map) {
    return MilliDt(
      prop1: DateTime.fromMillisecondsSinceEpoch(map['prop1']),
      prop2: map['prop2'] == null
          ? null
          : DateTime.fromMillisecondsSinceEpoch(map['prop2']),
      someOther: map['someOther'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(MilliDt instance) {
    final map = <String, dynamic>{};

    map['prop1'] = instance.prop1.millisecondsSinceEpoch;
    map['prop2'] = instance.prop2?.millisecondsSinceEpoch;
    map['someOther'] = instance.someOther;

    return map;
  }
}

extension $MilliDtMapExtension on MilliDt {
  Map<String, dynamic> toMap() => const $MilliDtMapMapper().toMap(this);
  static MilliDt fromMap(Map<String, dynamic> map) =>
      const $MilliDtMapMapper().fromMap(map);
}

extension $MapMilliDtExtension on Map<String, dynamic> {
  MilliDt toMilliDt() => const $MilliDtMapMapper().fromMap(this);
}

class $MilliDtFieldNames {
  final String fieldName;
  final String prefix;

  $MilliDtFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $MilliDtFieldNames()
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
