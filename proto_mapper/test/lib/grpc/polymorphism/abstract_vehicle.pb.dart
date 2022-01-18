///
//  Generated code. Do not modify.
//  source: polymorphism/abstract_vehicle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'bicycle.pb.dart' as $10;
import 'scooter.pb.dart' as $11;

enum GAbstractVehicle_Props { bicycle, scooter, notSet }

class GAbstractVehicle extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GAbstractVehicle_Props>
      _GAbstractVehicle_PropsByTag = {
    1: GAbstractVehicle_Props.bicycle,
    2: GAbstractVehicle_Props.scooter,
    0: GAbstractVehicle_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GAbstractVehicle',
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$10.GBicycle>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bicycle',
        subBuilder: $10.GBicycle.create)
    ..aOM<$11.GScooter>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scooter',
        subBuilder: $11.GScooter.create)
    ..hasRequiredFields = false;

  GAbstractVehicle._() : super();
  factory GAbstractVehicle({
    $10.GBicycle? bicycle,
    $11.GScooter? scooter,
  }) {
    final _result = create();
    if (bicycle != null) {
      _result.bicycle = bicycle;
    }
    if (scooter != null) {
      _result.scooter = scooter;
    }
    return _result;
  }
  factory GAbstractVehicle.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GAbstractVehicle.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GAbstractVehicle clone() => GAbstractVehicle()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GAbstractVehicle copyWith(void Function(GAbstractVehicle) updates) =>
      super.copyWith((message) => updates(message as GAbstractVehicle))
          as GAbstractVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAbstractVehicle create() => GAbstractVehicle._();
  GAbstractVehicle createEmptyInstance() => create();
  static $pb.PbList<GAbstractVehicle> createRepeated() =>
      $pb.PbList<GAbstractVehicle>();
  @$core.pragma('dart2js:noInline')
  static GAbstractVehicle getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GAbstractVehicle>(create);
  static GAbstractVehicle? _defaultInstance;

  GAbstractVehicle_Props whichProps() =>
      _GAbstractVehicle_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $10.GBicycle get bicycle => $_getN(0);
  @$pb.TagNumber(1)
  set bicycle($10.GBicycle v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBicycle() => $_has(0);
  @$pb.TagNumber(1)
  void clearBicycle() => clearField(1);
  @$pb.TagNumber(1)
  $10.GBicycle ensureBicycle() => $_ensure(0);

  @$pb.TagNumber(2)
  $11.GScooter get scooter => $_getN(1);
  @$pb.TagNumber(2)
  set scooter($11.GScooter v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasScooter() => $_has(1);
  @$pb.TagNumber(2)
  void clearScooter() => clearField(2);
  @$pb.TagNumber(2)
  $11.GScooter ensureScooter() => $_ensure(1);
}

class GListOfAbstractVehicle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfAbstractVehicle',
      createEmptyInstance: create)
    ..pc<GAbstractVehicle>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GAbstractVehicle.create)
    ..hasRequiredFields = false;

  GListOfAbstractVehicle._() : super();
  factory GListOfAbstractVehicle({
    $core.Iterable<GAbstractVehicle>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfAbstractVehicle.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfAbstractVehicle.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfAbstractVehicle clone() =>
      GListOfAbstractVehicle()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfAbstractVehicle copyWith(
          void Function(GListOfAbstractVehicle) updates) =>
      super.copyWith((message) => updates(message as GListOfAbstractVehicle))
          as GListOfAbstractVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfAbstractVehicle create() => GListOfAbstractVehicle._();
  GListOfAbstractVehicle createEmptyInstance() => create();
  static $pb.PbList<GListOfAbstractVehicle> createRepeated() =>
      $pb.PbList<GListOfAbstractVehicle>();
  @$core.pragma('dart2js:noInline')
  static GListOfAbstractVehicle getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfAbstractVehicle>(create);
  static GListOfAbstractVehicle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GAbstractVehicle> get items => $_getList(0);
}
