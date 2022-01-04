///
//  Generated code. Do not modify.
//  source: any_host.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/any.pb.dart' as $5;

class GDynamicObject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GDynamicObject',
      createEmptyInstance: create)
    ..aOM<$5.Any>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dynamicProperty',
        subBuilder: $5.Any.create)
    ..aOM<$5.Any>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'objectProperty',
        subBuilder: $5.Any.create)
    ..hasRequiredFields = false;

  GDynamicObject._() : super();
  factory GDynamicObject({
    $5.Any? dynamicProperty,
    $5.Any? objectProperty,
  }) {
    final _result = create();
    if (dynamicProperty != null) {
      _result.dynamicProperty = dynamicProperty;
    }
    if (objectProperty != null) {
      _result.objectProperty = objectProperty;
    }
    return _result;
  }
  factory GDynamicObject.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GDynamicObject.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GDynamicObject clone() => GDynamicObject()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GDynamicObject copyWith(void Function(GDynamicObject) updates) =>
      super.copyWith((message) => updates(message as GDynamicObject))
          as GDynamicObject; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GDynamicObject create() => GDynamicObject._();
  GDynamicObject createEmptyInstance() => create();
  static $pb.PbList<GDynamicObject> createRepeated() =>
      $pb.PbList<GDynamicObject>();
  @$core.pragma('dart2js:noInline')
  static GDynamicObject getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GDynamicObject>(create);
  static GDynamicObject? _defaultInstance;

  @$pb.TagNumber(1)
  $5.Any get dynamicProperty => $_getN(0);
  @$pb.TagNumber(1)
  set dynamicProperty($5.Any v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDynamicProperty() => $_has(0);
  @$pb.TagNumber(1)
  void clearDynamicProperty() => clearField(1);
  @$pb.TagNumber(1)
  $5.Any ensureDynamicProperty() => $_ensure(0);

  @$pb.TagNumber(2)
  $5.Any get objectProperty => $_getN(1);
  @$pb.TagNumber(2)
  set objectProperty($5.Any v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasObjectProperty() => $_has(1);
  @$pb.TagNumber(2)
  void clearObjectProperty() => clearField(2);
  @$pb.TagNumber(2)
  $5.Any ensureObjectProperty() => $_ensure(1);
}

class GListOfDynamicObject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfDynamicObject',
      createEmptyInstance: create)
    ..pc<GDynamicObject>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GDynamicObject.create)
    ..hasRequiredFields = false;

  GListOfDynamicObject._() : super();
  factory GListOfDynamicObject({
    $core.Iterable<GDynamicObject>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfDynamicObject.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfDynamicObject.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfDynamicObject clone() =>
      GListOfDynamicObject()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfDynamicObject copyWith(void Function(GListOfDynamicObject) updates) =>
      super.copyWith((message) => updates(message as GListOfDynamicObject))
          as GListOfDynamicObject; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfDynamicObject create() => GListOfDynamicObject._();
  GListOfDynamicObject createEmptyInstance() => create();
  static $pb.PbList<GListOfDynamicObject> createRepeated() =>
      $pb.PbList<GListOfDynamicObject>();
  @$core.pragma('dart2js:noInline')
  static GListOfDynamicObject getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfDynamicObject>(create);
  static GListOfDynamicObject? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GDynamicObject> get items => $_getList(0);
}

class GDynamicMap extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GDynamicMap',
      createEmptyInstance: create)
    ..m<$core.String, $5.Any>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dynamicMap',
        entryClassName: 'GDynamicMap.DynamicMapEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $5.Any.create)
    ..m<$core.String, $5.Any>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'objectMap',
        entryClassName: 'GDynamicMap.ObjectMapEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $5.Any.create)
    ..hasRequiredFields = false;

  GDynamicMap._() : super();
  factory GDynamicMap({
    $core.Map<$core.String, $5.Any>? dynamicMap,
    $core.Map<$core.String, $5.Any>? objectMap,
  }) {
    final _result = create();
    if (dynamicMap != null) {
      _result.dynamicMap.addAll(dynamicMap);
    }
    if (objectMap != null) {
      _result.objectMap.addAll(objectMap);
    }
    return _result;
  }
  factory GDynamicMap.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GDynamicMap.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GDynamicMap clone() => GDynamicMap()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GDynamicMap copyWith(void Function(GDynamicMap) updates) =>
      super.copyWith((message) => updates(message as GDynamicMap))
          as GDynamicMap; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GDynamicMap create() => GDynamicMap._();
  GDynamicMap createEmptyInstance() => create();
  static $pb.PbList<GDynamicMap> createRepeated() => $pb.PbList<GDynamicMap>();
  @$core.pragma('dart2js:noInline')
  static GDynamicMap getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GDynamicMap>(create);
  static GDynamicMap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $5.Any> get dynamicMap => $_getMap(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $5.Any> get objectMap => $_getMap(1);
}

class GListOfDynamicMap extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfDynamicMap',
      createEmptyInstance: create)
    ..pc<GDynamicMap>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GDynamicMap.create)
    ..hasRequiredFields = false;

  GListOfDynamicMap._() : super();
  factory GListOfDynamicMap({
    $core.Iterable<GDynamicMap>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfDynamicMap.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfDynamicMap.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfDynamicMap clone() => GListOfDynamicMap()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfDynamicMap copyWith(void Function(GListOfDynamicMap) updates) =>
      super.copyWith((message) => updates(message as GListOfDynamicMap))
          as GListOfDynamicMap; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfDynamicMap create() => GListOfDynamicMap._();
  GListOfDynamicMap createEmptyInstance() => create();
  static $pb.PbList<GListOfDynamicMap> createRepeated() =>
      $pb.PbList<GListOfDynamicMap>();
  @$core.pragma('dart2js:noInline')
  static GListOfDynamicMap getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfDynamicMap>(create);
  static GListOfDynamicMap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GDynamicMap> get items => $_getList(0);
}

class GDynamicSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GDynamicSet',
      createEmptyInstance: create)
    ..pc<$5.Any>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dynamicSet',
        $pb.PbFieldType.PM,
        subBuilder: $5.Any.create)
    ..pc<$5.Any>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'objectSet',
        $pb.PbFieldType.PM,
        subBuilder: $5.Any.create)
    ..hasRequiredFields = false;

  GDynamicSet._() : super();
  factory GDynamicSet({
    $core.Iterable<$5.Any>? dynamicSet,
    $core.Iterable<$5.Any>? objectSet,
  }) {
    final _result = create();
    if (dynamicSet != null) {
      _result.dynamicSet.addAll(dynamicSet);
    }
    if (objectSet != null) {
      _result.objectSet.addAll(objectSet);
    }
    return _result;
  }
  factory GDynamicSet.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GDynamicSet.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GDynamicSet clone() => GDynamicSet()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GDynamicSet copyWith(void Function(GDynamicSet) updates) =>
      super.copyWith((message) => updates(message as GDynamicSet))
          as GDynamicSet; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GDynamicSet create() => GDynamicSet._();
  GDynamicSet createEmptyInstance() => create();
  static $pb.PbList<GDynamicSet> createRepeated() => $pb.PbList<GDynamicSet>();
  @$core.pragma('dart2js:noInline')
  static GDynamicSet getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GDynamicSet>(create);
  static GDynamicSet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.Any> get dynamicSet => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$5.Any> get objectSet => $_getList(1);
}

class GListOfDynamicSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfDynamicSet',
      createEmptyInstance: create)
    ..pc<GDynamicSet>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GDynamicSet.create)
    ..hasRequiredFields = false;

  GListOfDynamicSet._() : super();
  factory GListOfDynamicSet({
    $core.Iterable<GDynamicSet>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfDynamicSet.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfDynamicSet.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfDynamicSet clone() => GListOfDynamicSet()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfDynamicSet copyWith(void Function(GListOfDynamicSet) updates) =>
      super.copyWith((message) => updates(message as GListOfDynamicSet))
          as GListOfDynamicSet; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfDynamicSet create() => GListOfDynamicSet._();
  GListOfDynamicSet createEmptyInstance() => create();
  static $pb.PbList<GListOfDynamicSet> createRepeated() =>
      $pb.PbList<GListOfDynamicSet>();
  @$core.pragma('dart2js:noInline')
  static GListOfDynamicSet getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfDynamicSet>(create);
  static GListOfDynamicSet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GDynamicSet> get items => $_getList(0);
}

class GDynamicList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GDynamicList',
      createEmptyInstance: create)
    ..pc<$5.Any>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dynamicList',
        $pb.PbFieldType.PM,
        subBuilder: $5.Any.create)
    ..pc<$5.Any>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'objectList',
        $pb.PbFieldType.PM,
        subBuilder: $5.Any.create)
    ..hasRequiredFields = false;

  GDynamicList._() : super();
  factory GDynamicList({
    $core.Iterable<$5.Any>? dynamicList,
    $core.Iterable<$5.Any>? objectList,
  }) {
    final _result = create();
    if (dynamicList != null) {
      _result.dynamicList.addAll(dynamicList);
    }
    if (objectList != null) {
      _result.objectList.addAll(objectList);
    }
    return _result;
  }
  factory GDynamicList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GDynamicList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GDynamicList clone() => GDynamicList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GDynamicList copyWith(void Function(GDynamicList) updates) =>
      super.copyWith((message) => updates(message as GDynamicList))
          as GDynamicList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GDynamicList create() => GDynamicList._();
  GDynamicList createEmptyInstance() => create();
  static $pb.PbList<GDynamicList> createRepeated() =>
      $pb.PbList<GDynamicList>();
  @$core.pragma('dart2js:noInline')
  static GDynamicList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GDynamicList>(create);
  static GDynamicList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.Any> get dynamicList => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$5.Any> get objectList => $_getList(1);
}

class GListOfDynamicList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfDynamicList',
      createEmptyInstance: create)
    ..pc<GDynamicList>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GDynamicList.create)
    ..hasRequiredFields = false;

  GListOfDynamicList._() : super();
  factory GListOfDynamicList({
    $core.Iterable<GDynamicList>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfDynamicList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfDynamicList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfDynamicList clone() => GListOfDynamicList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfDynamicList copyWith(void Function(GListOfDynamicList) updates) =>
      super.copyWith((message) => updates(message as GListOfDynamicList))
          as GListOfDynamicList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfDynamicList create() => GListOfDynamicList._();
  GListOfDynamicList createEmptyInstance() => create();
  static $pb.PbList<GListOfDynamicList> createRepeated() =>
      $pb.PbList<GListOfDynamicList>();
  @$core.pragma('dart2js:noInline')
  static GListOfDynamicList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfDynamicList>(create);
  static GListOfDynamicList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GDynamicList> get items => $_getList(0);
}
