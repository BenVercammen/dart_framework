///
//  Generated code. Do not modify.
//  source: constructors_host.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GConstructObject1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GConstructObject1',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'number',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  GConstructObject1._() : super();
  factory GConstructObject1({
    $core.String? name,
    $core.int? number,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (number != null) {
      _result.number = number;
    }
    return _result;
  }
  factory GConstructObject1.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GConstructObject1.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GConstructObject1 clone() => GConstructObject1()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GConstructObject1 copyWith(void Function(GConstructObject1) updates) =>
      super.copyWith((message) => updates(message as GConstructObject1))
          as GConstructObject1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject1 create() => GConstructObject1._();
  GConstructObject1 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject1> createRepeated() =>
      $pb.PbList<GConstructObject1>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject1 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GConstructObject1>(create);
  static GConstructObject1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(2)
  set number($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);
}

class GListOfConstructObject1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfConstructObject1',
      createEmptyInstance: create)
    ..pc<GConstructObject1>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GConstructObject1.create)
    ..hasRequiredFields = false;

  GListOfConstructObject1._() : super();
  factory GListOfConstructObject1({
    $core.Iterable<GConstructObject1>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject1.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject1.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfConstructObject1 clone() =>
      GListOfConstructObject1()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfConstructObject1 copyWith(
          void Function(GListOfConstructObject1) updates) =>
      super.copyWith((message) => updates(message as GListOfConstructObject1))
          as GListOfConstructObject1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject1 create() => GListOfConstructObject1._();
  GListOfConstructObject1 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject1> createRepeated() =>
      $pb.PbList<GListOfConstructObject1>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject1 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject1>(create);
  static GListOfConstructObject1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject1> get items => $_getList(0);
}

class GConstructObject2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GConstructObject2',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'number',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  GConstructObject2._() : super();
  factory GConstructObject2({
    $core.String? name,
    $core.int? number,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (number != null) {
      _result.number = number;
    }
    return _result;
  }
  factory GConstructObject2.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GConstructObject2.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GConstructObject2 clone() => GConstructObject2()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GConstructObject2 copyWith(void Function(GConstructObject2) updates) =>
      super.copyWith((message) => updates(message as GConstructObject2))
          as GConstructObject2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject2 create() => GConstructObject2._();
  GConstructObject2 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject2> createRepeated() =>
      $pb.PbList<GConstructObject2>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GConstructObject2>(create);
  static GConstructObject2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(2)
  set number($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);
}

class GListOfConstructObject2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfConstructObject2',
      createEmptyInstance: create)
    ..pc<GConstructObject2>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GConstructObject2.create)
    ..hasRequiredFields = false;

  GListOfConstructObject2._() : super();
  factory GListOfConstructObject2({
    $core.Iterable<GConstructObject2>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject2.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject2.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfConstructObject2 clone() =>
      GListOfConstructObject2()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfConstructObject2 copyWith(
          void Function(GListOfConstructObject2) updates) =>
      super.copyWith((message) => updates(message as GListOfConstructObject2))
          as GListOfConstructObject2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject2 create() => GListOfConstructObject2._();
  GListOfConstructObject2 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject2> createRepeated() =>
      $pb.PbList<GListOfConstructObject2>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject2>(create);
  static GListOfConstructObject2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject2> get items => $_getList(0);
}

class GConstructObject3 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GConstructObject3',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'number',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  GConstructObject3._() : super();
  factory GConstructObject3({
    $core.String? name,
    $core.int? number,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (number != null) {
      _result.number = number;
    }
    return _result;
  }
  factory GConstructObject3.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GConstructObject3.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GConstructObject3 clone() => GConstructObject3()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GConstructObject3 copyWith(void Function(GConstructObject3) updates) =>
      super.copyWith((message) => updates(message as GConstructObject3))
          as GConstructObject3; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject3 create() => GConstructObject3._();
  GConstructObject3 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject3> createRepeated() =>
      $pb.PbList<GConstructObject3>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GConstructObject3>(create);
  static GConstructObject3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(2)
  set number($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);
}

class GListOfConstructObject3 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfConstructObject3',
      createEmptyInstance: create)
    ..pc<GConstructObject3>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GConstructObject3.create)
    ..hasRequiredFields = false;

  GListOfConstructObject3._() : super();
  factory GListOfConstructObject3({
    $core.Iterable<GConstructObject3>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject3.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject3.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfConstructObject3 clone() =>
      GListOfConstructObject3()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfConstructObject3 copyWith(
          void Function(GListOfConstructObject3) updates) =>
      super.copyWith((message) => updates(message as GListOfConstructObject3))
          as GListOfConstructObject3; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject3 create() => GListOfConstructObject3._();
  GListOfConstructObject3 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject3> createRepeated() =>
      $pb.PbList<GListOfConstructObject3>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject3>(create);
  static GListOfConstructObject3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject3> get items => $_getList(0);
}

class GConstructObject4 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GConstructObject4',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'number',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  GConstructObject4._() : super();
  factory GConstructObject4({
    $core.String? name,
    $core.int? number,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (number != null) {
      _result.number = number;
    }
    return _result;
  }
  factory GConstructObject4.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GConstructObject4.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GConstructObject4 clone() => GConstructObject4()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GConstructObject4 copyWith(void Function(GConstructObject4) updates) =>
      super.copyWith((message) => updates(message as GConstructObject4))
          as GConstructObject4; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject4 create() => GConstructObject4._();
  GConstructObject4 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject4> createRepeated() =>
      $pb.PbList<GConstructObject4>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject4 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GConstructObject4>(create);
  static GConstructObject4? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(2)
  set number($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);
}

class GListOfConstructObject4 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfConstructObject4',
      createEmptyInstance: create)
    ..pc<GConstructObject4>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GConstructObject4.create)
    ..hasRequiredFields = false;

  GListOfConstructObject4._() : super();
  factory GListOfConstructObject4({
    $core.Iterable<GConstructObject4>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject4.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject4.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfConstructObject4 clone() =>
      GListOfConstructObject4()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfConstructObject4 copyWith(
          void Function(GListOfConstructObject4) updates) =>
      super.copyWith((message) => updates(message as GListOfConstructObject4))
          as GListOfConstructObject4; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject4 create() => GListOfConstructObject4._();
  GListOfConstructObject4 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject4> createRepeated() =>
      $pb.PbList<GListOfConstructObject4>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject4 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject4>(create);
  static GListOfConstructObject4? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject4> get items => $_getList(0);
}

class GConstructObject5 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GConstructObject5',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'number',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  GConstructObject5._() : super();
  factory GConstructObject5({
    $core.String? name,
    $core.int? number,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (number != null) {
      _result.number = number;
    }
    return _result;
  }
  factory GConstructObject5.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GConstructObject5.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GConstructObject5 clone() => GConstructObject5()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GConstructObject5 copyWith(void Function(GConstructObject5) updates) =>
      super.copyWith((message) => updates(message as GConstructObject5))
          as GConstructObject5; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject5 create() => GConstructObject5._();
  GConstructObject5 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject5> createRepeated() =>
      $pb.PbList<GConstructObject5>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject5 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GConstructObject5>(create);
  static GConstructObject5? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(2)
  set number($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);
}

class GListOfConstructObject5 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfConstructObject5',
      createEmptyInstance: create)
    ..pc<GConstructObject5>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GConstructObject5.create)
    ..hasRequiredFields = false;

  GListOfConstructObject5._() : super();
  factory GListOfConstructObject5({
    $core.Iterable<GConstructObject5>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject5.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject5.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfConstructObject5 clone() =>
      GListOfConstructObject5()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfConstructObject5 copyWith(
          void Function(GListOfConstructObject5) updates) =>
      super.copyWith((message) => updates(message as GListOfConstructObject5))
          as GListOfConstructObject5; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject5 create() => GListOfConstructObject5._();
  GListOfConstructObject5 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject5> createRepeated() =>
      $pb.PbList<GListOfConstructObject5>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject5 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject5>(create);
  static GListOfConstructObject5? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject5> get items => $_getList(0);
}

class GConstructObject6 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GConstructObject6',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nameHasValue',
        protoName: 'nameHasValue')
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'number',
        $pb.PbFieldType.O3)
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'numberHasValue',
        protoName: 'numberHasValue')
    ..hasRequiredFields = false;

  GConstructObject6._() : super();
  factory GConstructObject6({
    $core.String? name,
    $core.bool? nameHasValue,
    $core.int? number,
    $core.bool? numberHasValue,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (nameHasValue != null) {
      _result.nameHasValue = nameHasValue;
    }
    if (number != null) {
      _result.number = number;
    }
    if (numberHasValue != null) {
      _result.numberHasValue = numberHasValue;
    }
    return _result;
  }
  factory GConstructObject6.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GConstructObject6.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GConstructObject6 clone() => GConstructObject6()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GConstructObject6 copyWith(void Function(GConstructObject6) updates) =>
      super.copyWith((message) => updates(message as GConstructObject6))
          as GConstructObject6; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject6 create() => GConstructObject6._();
  GConstructObject6 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject6> createRepeated() =>
      $pb.PbList<GConstructObject6>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject6 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GConstructObject6>(create);
  static GConstructObject6? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get nameHasValue => $_getBF(1);
  @$pb.TagNumber(2)
  set nameHasValue($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNameHasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearNameHasValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get number => $_getIZ(2);
  @$pb.TagNumber(3)
  set number($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get numberHasValue => $_getBF(3);
  @$pb.TagNumber(4)
  set numberHasValue($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasNumberHasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumberHasValue() => clearField(4);
}

class GListOfConstructObject6 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfConstructObject6',
      createEmptyInstance: create)
    ..pc<GConstructObject6>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GConstructObject6.create)
    ..hasRequiredFields = false;

  GListOfConstructObject6._() : super();
  factory GListOfConstructObject6({
    $core.Iterable<GConstructObject6>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject6.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject6.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfConstructObject6 clone() =>
      GListOfConstructObject6()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfConstructObject6 copyWith(
          void Function(GListOfConstructObject6) updates) =>
      super.copyWith((message) => updates(message as GListOfConstructObject6))
          as GListOfConstructObject6; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject6 create() => GListOfConstructObject6._();
  GListOfConstructObject6 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject6> createRepeated() =>
      $pb.PbList<GListOfConstructObject6>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject6 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject6>(create);
  static GListOfConstructObject6? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject6> get items => $_getList(0);
}

class GConstructObject7 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GConstructObject7',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'number',
        $pb.PbFieldType.O3)
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'numberHasValue',
        protoName: 'numberHasValue')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..hasRequiredFields = false;

  GConstructObject7._() : super();
  factory GConstructObject7({
    $core.int? number,
    $core.bool? numberHasValue,
    $core.String? name,
  }) {
    final _result = create();
    if (number != null) {
      _result.number = number;
    }
    if (numberHasValue != null) {
      _result.numberHasValue = numberHasValue;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory GConstructObject7.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GConstructObject7.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GConstructObject7 clone() => GConstructObject7()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GConstructObject7 copyWith(void Function(GConstructObject7) updates) =>
      super.copyWith((message) => updates(message as GConstructObject7))
          as GConstructObject7; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject7 create() => GConstructObject7._();
  GConstructObject7 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject7> createRepeated() =>
      $pb.PbList<GConstructObject7>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject7 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GConstructObject7>(create);
  static GConstructObject7? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get number => $_getIZ(0);
  @$pb.TagNumber(1)
  set number($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get numberHasValue => $_getBF(1);
  @$pb.TagNumber(2)
  set numberHasValue($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNumberHasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumberHasValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class GListOfConstructObject7 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfConstructObject7',
      createEmptyInstance: create)
    ..pc<GConstructObject7>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GConstructObject7.create)
    ..hasRequiredFields = false;

  GListOfConstructObject7._() : super();
  factory GListOfConstructObject7({
    $core.Iterable<GConstructObject7>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject7.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject7.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfConstructObject7 clone() =>
      GListOfConstructObject7()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfConstructObject7 copyWith(
          void Function(GListOfConstructObject7) updates) =>
      super.copyWith((message) => updates(message as GListOfConstructObject7))
          as GListOfConstructObject7; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject7 create() => GListOfConstructObject7._();
  GListOfConstructObject7 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject7> createRepeated() =>
      $pb.PbList<GListOfConstructObject7>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject7 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject7>(create);
  static GListOfConstructObject7? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject7> get items => $_getList(0);
}

class GConstructObject8 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GConstructObject8',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'number',
        $pb.PbFieldType.O3)
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'numberHasValue',
        protoName: 'numberHasValue')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..hasRequiredFields = false;

  GConstructObject8._() : super();
  factory GConstructObject8({
    $core.int? number,
    $core.bool? numberHasValue,
    $core.String? name,
  }) {
    final _result = create();
    if (number != null) {
      _result.number = number;
    }
    if (numberHasValue != null) {
      _result.numberHasValue = numberHasValue;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory GConstructObject8.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GConstructObject8.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GConstructObject8 clone() => GConstructObject8()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GConstructObject8 copyWith(void Function(GConstructObject8) updates) =>
      super.copyWith((message) => updates(message as GConstructObject8))
          as GConstructObject8; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject8 create() => GConstructObject8._();
  GConstructObject8 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject8> createRepeated() =>
      $pb.PbList<GConstructObject8>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject8 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GConstructObject8>(create);
  static GConstructObject8? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get number => $_getIZ(0);
  @$pb.TagNumber(1)
  set number($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get numberHasValue => $_getBF(1);
  @$pb.TagNumber(2)
  set numberHasValue($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNumberHasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumberHasValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class GListOfConstructObject8 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfConstructObject8',
      createEmptyInstance: create)
    ..pc<GConstructObject8>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GConstructObject8.create)
    ..hasRequiredFields = false;

  GListOfConstructObject8._() : super();
  factory GListOfConstructObject8({
    $core.Iterable<GConstructObject8>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject8.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject8.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfConstructObject8 clone() =>
      GListOfConstructObject8()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfConstructObject8 copyWith(
          void Function(GListOfConstructObject8) updates) =>
      super.copyWith((message) => updates(message as GListOfConstructObject8))
          as GListOfConstructObject8; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject8 create() => GListOfConstructObject8._();
  GListOfConstructObject8 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject8> createRepeated() =>
      $pb.PbList<GListOfConstructObject8>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject8 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject8>(create);
  static GListOfConstructObject8? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject8> get items => $_getList(0);
}
