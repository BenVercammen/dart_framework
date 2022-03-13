///
//  Generated code. Do not modify.
//  source: polymorphism/scooter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GScooter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GScooter',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weight',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  GScooter._() : super();
  factory GScooter({
    $core.int? weight,
  }) {
    final _result = create();
    if (weight != null) {
      _result.weight = weight;
    }
    return _result;
  }
  factory GScooter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GScooter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GScooter clone() => GScooter()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GScooter copyWith(void Function(GScooter) updates) =>
      super.copyWith((message) => updates(message as GScooter))
          as GScooter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GScooter create() => GScooter._();
  GScooter createEmptyInstance() => create();
  static $pb.PbList<GScooter> createRepeated() => $pb.PbList<GScooter>();
  @$core.pragma('dart2js:noInline')
  static GScooter getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GScooter>(create);
  static GScooter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get weight => $_getIZ(0);
  @$pb.TagNumber(1)
  set weight($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeight() => clearField(1);
}

class GListOfScooter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfScooter',
      createEmptyInstance: create)
    ..pc<GScooter>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GScooter.create)
    ..hasRequiredFields = false;

  GListOfScooter._() : super();
  factory GListOfScooter({
    $core.Iterable<GScooter>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfScooter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfScooter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfScooter clone() => GListOfScooter()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfScooter copyWith(void Function(GListOfScooter) updates) =>
      super.copyWith((message) => updates(message as GListOfScooter))
          as GListOfScooter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfScooter create() => GListOfScooter._();
  GListOfScooter createEmptyInstance() => create();
  static $pb.PbList<GListOfScooter> createRepeated() =>
      $pb.PbList<GListOfScooter>();
  @$core.pragma('dart2js:noInline')
  static GListOfScooter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfScooter>(create);
  static GListOfScooter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GScooter> get items => $_getList(0);
}
