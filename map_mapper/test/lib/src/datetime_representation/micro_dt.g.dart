// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'micro_dt.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $MicroDtMapMapper extends MapMapper<MicroDt> {
  const $MicroDtMapMapper();

  @override
  MicroDt fromMap(Map<String, dynamic> map) {
    return MicroDt(
      prop1: DateTime.fromMicrosecondsSinceEpoch(map['prop1']),
      prop2: map['prop2'] == null
          ? null
          : DateTime.fromMicrosecondsSinceEpoch(map['prop2']),
      someOther: map['someOther'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(MicroDt instance) {
    final map = <String, dynamic>{};

    map['prop1'] = instance.prop1.microsecondsSinceEpoch;
    map['prop2'] = instance.prop2?.microsecondsSinceEpoch;
    map['someOther'] = instance.someOther;

    return map;
  }
}

extension $MicroDtMapExtension on MicroDt {
  Map<String, dynamic> toMap() => const $MicroDtMapMapper().toMap(this);
  static MicroDt fromMap(Map<String, dynamic> map) =>
      const $MicroDtMapMapper().fromMap(map);
}

extension $MapMicroDtExtension on Map<String, dynamic> {
  MicroDt toMicroDt() => const $MicroDtMapMapper().fromMap(this);
}

class $MicroDtFieldNames {
  final String fieldName;
  final String prefix;

  $MicroDtFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $MicroDtFieldNames()
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
