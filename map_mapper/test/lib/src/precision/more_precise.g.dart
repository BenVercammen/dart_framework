// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'more_precise.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $MorePreciseMapMapper extends MapMapper<MorePrecise> {
  const $MorePreciseMapMapper();

  @override
  MorePrecise fromMap(Map<String, dynamic> map) {
    return MorePrecise(
      prop1: Duration(microseconds: map['prop1']),
      prop2: map['prop2'] == null ? null : Duration(microseconds: map['prop2']),
      someOther: map['someOther'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(MorePrecise instance) {
    final map = <String, dynamic>{};

    map['prop1'] = instance.prop1.inMicroseconds;
    map['prop2'] = instance.prop2?.inMicroseconds;
    map['someOther'] = instance.someOther;

    return map;
  }
}

extension $MorePreciseMapExtension on MorePrecise {
  Map<String, dynamic> toMap() => const $MorePreciseMapMapper().toMap(this);
  static MorePrecise fromMap(Map<String, dynamic> map) =>
      const $MorePreciseMapMapper().fromMap(map);
}

extension $MapMorePreciseExtension on Map<String, dynamic> {
  MorePrecise toMorePrecise() => const $MorePreciseMapMapper().fromMap(this);
}

class $MorePreciseFieldNames {
  final String fieldName;
  final String prefix;

  $MorePreciseFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $MorePreciseFieldNames()
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
