///
//  Generated code. Do not modify.
//  source: calc_parameters.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GCalcParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GCalcParameters',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parameter2',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parameter1',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parameter3',
        $pb.PbFieldType.O3)
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parameter3HasValue')
    ..a<$core.int>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parameter4',
        $pb.PbFieldType.O3)
    ..aOB(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parameter4HasValue')
    ..a<$core.int>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parameter5',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  GCalcParameters._() : super();
  factory GCalcParameters({
    $core.int? parameter2,
    $core.int? parameter1,
    $core.int? parameter3,
    $core.bool? parameter3HasValue,
    $core.int? parameter4,
    $core.bool? parameter4HasValue,
    $core.int? parameter5,
  }) {
    final _result = create();
    if (parameter2 != null) {
      _result.parameter2 = parameter2;
    }
    if (parameter1 != null) {
      _result.parameter1 = parameter1;
    }
    if (parameter3 != null) {
      _result.parameter3 = parameter3;
    }
    if (parameter3HasValue != null) {
      _result.parameter3HasValue = parameter3HasValue;
    }
    if (parameter4 != null) {
      _result.parameter4 = parameter4;
    }
    if (parameter4HasValue != null) {
      _result.parameter4HasValue = parameter4HasValue;
    }
    if (parameter5 != null) {
      _result.parameter5 = parameter5;
    }
    return _result;
  }
  factory GCalcParameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GCalcParameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GCalcParameters clone() => GCalcParameters()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GCalcParameters copyWith(void Function(GCalcParameters) updates) =>
      super.copyWith((message) => updates(message as GCalcParameters))
          as GCalcParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GCalcParameters create() => GCalcParameters._();
  GCalcParameters createEmptyInstance() => create();
  static $pb.PbList<GCalcParameters> createRepeated() =>
      $pb.PbList<GCalcParameters>();
  @$core.pragma('dart2js:noInline')
  static GCalcParameters getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GCalcParameters>(create);
  static GCalcParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get parameter2 => $_getIZ(0);
  @$pb.TagNumber(1)
  set parameter2($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParameter2() => $_has(0);
  @$pb.TagNumber(1)
  void clearParameter2() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get parameter1 => $_getIZ(1);
  @$pb.TagNumber(2)
  set parameter1($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasParameter1() => $_has(1);
  @$pb.TagNumber(2)
  void clearParameter1() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get parameter3 => $_getIZ(2);
  @$pb.TagNumber(3)
  set parameter3($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasParameter3() => $_has(2);
  @$pb.TagNumber(3)
  void clearParameter3() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get parameter3HasValue => $_getBF(3);
  @$pb.TagNumber(4)
  set parameter3HasValue($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasParameter3HasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearParameter3HasValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get parameter4 => $_getIZ(4);
  @$pb.TagNumber(5)
  set parameter4($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasParameter4() => $_has(4);
  @$pb.TagNumber(5)
  void clearParameter4() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get parameter4HasValue => $_getBF(5);
  @$pb.TagNumber(6)
  set parameter4HasValue($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasParameter4HasValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearParameter4HasValue() => clearField(6);

  @$pb.TagNumber(9)
  $core.int get parameter5 => $_getIZ(6);
  @$pb.TagNumber(9)
  set parameter5($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasParameter5() => $_has(6);
  @$pb.TagNumber(9)
  void clearParameter5() => clearField(9);
}

class GListOfCalcParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfCalcParameters',
      createEmptyInstance: create)
    ..pc<GCalcParameters>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GCalcParameters.create)
    ..hasRequiredFields = false;

  GListOfCalcParameters._() : super();
  factory GListOfCalcParameters({
    $core.Iterable<GCalcParameters>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfCalcParameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfCalcParameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfCalcParameters clone() =>
      GListOfCalcParameters()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfCalcParameters copyWith(
          void Function(GListOfCalcParameters) updates) =>
      super.copyWith((message) => updates(message as GListOfCalcParameters))
          as GListOfCalcParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfCalcParameters create() => GListOfCalcParameters._();
  GListOfCalcParameters createEmptyInstance() => create();
  static $pb.PbList<GListOfCalcParameters> createRepeated() =>
      $pb.PbList<GListOfCalcParameters>();
  @$core.pragma('dart2js:noInline')
  static GListOfCalcParameters getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfCalcParameters>(create);
  static GListOfCalcParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GCalcParameters> get items => $_getList(0);
}
