// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standard_precision.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $StandardPrecisionMapMapper extends MapMapper<StandardPrecision> {
  const $StandardPrecisionMapMapper();

  @override
  StandardPrecision fromMap(Map<String, dynamic> map) {
    return StandardPrecision(
      prop1: Duration(microseconds: map['prop1']),
      prop2: map['prop2'] == null ? null : Duration(microseconds: map['prop2']),
      someOther: map['someOther'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(StandardPrecision instance) {
    final map = <String, dynamic>{};

    map['prop1'] = instance.prop1.inMicroseconds;
    map['prop2'] = instance.prop2?.inMicroseconds;
    map['someOther'] = instance.someOther;

    return map;
  }
}

extension $StandardPrecisionMapExtension on StandardPrecision {
  Map<String, dynamic> toMap() =>
      const $StandardPrecisionMapMapper().toMap(this);
  static StandardPrecision fromMap(Map<String, dynamic> map) =>
      const $StandardPrecisionMapMapper().fromMap(map);
}

extension $MapStandardPrecisionExtension on Map<String, dynamic> {
  StandardPrecision toStandardPrecision() =>
      const $StandardPrecisionMapMapper().fromMap(this);
}

class $StandardPrecisionFieldNames {
  final String fieldName;
  final String prefix;

  $StandardPrecisionFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $StandardPrecisionFieldNames()
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
