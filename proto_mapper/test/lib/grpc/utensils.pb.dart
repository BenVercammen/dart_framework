///
//  Generated code. Do not modify.
//  source: utensils.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'recipe.pb.dart' as $0;

import 'utensils.pbenum.dart';
import 'appliance_type.pbenum.dart' as $6;

export 'utensils.pbenum.dart';

class GKnife extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GKnife',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..e<GKnifeType>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type',
        $pb.PbFieldType.OE,
        defaultOrMaker: GKnifeType.chefsKnife,
        valueOf: GKnifeType.valueOf,
        enumValues: GKnifeType.values)
    ..hasRequiredFields = false;

  GKnife._() : super();
  factory GKnife({
    $core.String? name,
    GKnifeType? type,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory GKnife.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GKnife.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GKnife clone() => GKnife()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GKnife copyWith(void Function(GKnife) updates) =>
      super.copyWith((message) => updates(message as GKnife))
          as GKnife; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GKnife create() => GKnife._();
  GKnife createEmptyInstance() => create();
  static $pb.PbList<GKnife> createRepeated() => $pb.PbList<GKnife>();
  @$core.pragma('dart2js:noInline')
  static GKnife getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GKnife>(create);
  static GKnife? _defaultInstance;

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
  GKnifeType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(GKnifeType v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class GListOfKnife extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfKnife',
      createEmptyInstance: create)
    ..pc<GKnife>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GKnife.create)
    ..hasRequiredFields = false;

  GListOfKnife._() : super();
  factory GListOfKnife({
    $core.Iterable<GKnife>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfKnife.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfKnife.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfKnife clone() => GListOfKnife()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfKnife copyWith(void Function(GListOfKnife) updates) =>
      super.copyWith((message) => updates(message as GListOfKnife))
          as GListOfKnife; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfKnife create() => GListOfKnife._();
  GListOfKnife createEmptyInstance() => create();
  static $pb.PbList<GListOfKnife> createRepeated() =>
      $pb.PbList<GListOfKnife>();
  @$core.pragma('dart2js:noInline')
  static GListOfKnife getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfKnife>(create);
  static GListOfKnife? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GKnife> get items => $_getList(0);
}

class GGarlicPress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GGarlicPress',
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
            : 'machineWashable',
        protoName: 'machineWashable')
    ..hasRequiredFields = false;

  GGarlicPress._() : super();
  factory GGarlicPress({
    $core.String? name,
    $core.bool? machineWashable,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (machineWashable != null) {
      _result.machineWashable = machineWashable;
    }
    return _result;
  }
  factory GGarlicPress.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GGarlicPress.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GGarlicPress clone() => GGarlicPress()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GGarlicPress copyWith(void Function(GGarlicPress) updates) =>
      super.copyWith((message) => updates(message as GGarlicPress))
          as GGarlicPress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GGarlicPress create() => GGarlicPress._();
  GGarlicPress createEmptyInstance() => create();
  static $pb.PbList<GGarlicPress> createRepeated() =>
      $pb.PbList<GGarlicPress>();
  @$core.pragma('dart2js:noInline')
  static GGarlicPress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GGarlicPress>(create);
  static GGarlicPress? _defaultInstance;

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
  $core.bool get machineWashable => $_getBF(1);
  @$pb.TagNumber(2)
  set machineWashable($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMachineWashable() => $_has(1);
  @$pb.TagNumber(2)
  void clearMachineWashable() => clearField(2);
}

class GListOfGarlicPress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfGarlicPress',
      createEmptyInstance: create)
    ..pc<GGarlicPress>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GGarlicPress.create)
    ..hasRequiredFields = false;

  GListOfGarlicPress._() : super();
  factory GListOfGarlicPress({
    $core.Iterable<GGarlicPress>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfGarlicPress.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfGarlicPress.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfGarlicPress clone() => GListOfGarlicPress()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfGarlicPress copyWith(void Function(GListOfGarlicPress) updates) =>
      super.copyWith((message) => updates(message as GListOfGarlicPress))
          as GListOfGarlicPress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfGarlicPress create() => GListOfGarlicPress._();
  GListOfGarlicPress createEmptyInstance() => create();
  static $pb.PbList<GListOfGarlicPress> createRepeated() =>
      $pb.PbList<GListOfGarlicPress>();
  @$core.pragma('dart2js:noInline')
  static GListOfGarlicPress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfGarlicPress>(create);
  static GListOfGarlicPress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GGarlicPress> get items => $_getList(0);
}

class GKitchen extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GKitchen',
      createEmptyInstance: create)
    ..pc<$0.GRecipe>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'recipeList',
        $pb.PbFieldType.PM,
        protoName: 'recipeList',
        subBuilder: $0.GRecipe.create)
    ..m<$core.String, $0.GRecipe>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'recipeMap',
        protoName: 'recipeMap',
        entryClassName: 'GKitchen.RecipeMapEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $0.GRecipe.create)
    ..hasRequiredFields = false;

  GKitchen._() : super();
  factory GKitchen({
    $core.Iterable<$0.GRecipe>? recipeList,
    $core.Map<$core.String, $0.GRecipe>? recipeMap,
  }) {
    final _result = create();
    if (recipeList != null) {
      _result.recipeList.addAll(recipeList);
    }
    if (recipeMap != null) {
      _result.recipeMap.addAll(recipeMap);
    }
    return _result;
  }
  factory GKitchen.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GKitchen.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GKitchen clone() => GKitchen()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GKitchen copyWith(void Function(GKitchen) updates) =>
      super.copyWith((message) => updates(message as GKitchen))
          as GKitchen; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GKitchen create() => GKitchen._();
  GKitchen createEmptyInstance() => create();
  static $pb.PbList<GKitchen> createRepeated() => $pb.PbList<GKitchen>();
  @$core.pragma('dart2js:noInline')
  static GKitchen getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GKitchen>(create);
  static GKitchen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.GRecipe> get recipeList => $_getList(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $0.GRecipe> get recipeMap => $_getMap(1);
}

class GListOfKitchen extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfKitchen',
      createEmptyInstance: create)
    ..pc<GKitchen>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GKitchen.create)
    ..hasRequiredFields = false;

  GListOfKitchen._() : super();
  factory GListOfKitchen({
    $core.Iterable<GKitchen>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfKitchen.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfKitchen.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfKitchen clone() => GListOfKitchen()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfKitchen copyWith(void Function(GListOfKitchen) updates) =>
      super.copyWith((message) => updates(message as GListOfKitchen))
          as GListOfKitchen; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfKitchen create() => GListOfKitchen._();
  GListOfKitchen createEmptyInstance() => create();
  static $pb.PbList<GListOfKitchen> createRepeated() =>
      $pb.PbList<GListOfKitchen>();
  @$core.pragma('dart2js:noInline')
  static GListOfKitchen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfKitchen>(create);
  static GListOfKitchen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GKitchen> get items => $_getList(0);
}

class GChef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GChef',
      createEmptyInstance: create)
    ..aOM<$0.GRecipe>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'favoriteRecipe',
        protoName: 'favoriteRecipe',
        subBuilder: $0.GRecipe.create)
    ..aOM<GKnife>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'favoriteKnife',
        protoName: 'favoriteKnife',
        subBuilder: GKnife.create)
    ..e<$6.GApplianceType>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'favoriteApplianceType',
        $pb.PbFieldType.OE,
        protoName: 'favoriteApplianceType',
        defaultOrMaker: $6.GApplianceType.heat,
        valueOf: $6.GApplianceType.valueOf,
        enumValues: $6.GApplianceType.values)
    ..hasRequiredFields = false;

  GChef._() : super();
  factory GChef({
    $0.GRecipe? favoriteRecipe,
    GKnife? favoriteKnife,
    $6.GApplianceType? favoriteApplianceType,
  }) {
    final _result = create();
    if (favoriteRecipe != null) {
      _result.favoriteRecipe = favoriteRecipe;
    }
    if (favoriteKnife != null) {
      _result.favoriteKnife = favoriteKnife;
    }
    if (favoriteApplianceType != null) {
      _result.favoriteApplianceType = favoriteApplianceType;
    }
    return _result;
  }
  factory GChef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GChef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GChef clone() => GChef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GChef copyWith(void Function(GChef) updates) =>
      super.copyWith((message) => updates(message as GChef))
          as GChef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GChef create() => GChef._();
  GChef createEmptyInstance() => create();
  static $pb.PbList<GChef> createRepeated() => $pb.PbList<GChef>();
  @$core.pragma('dart2js:noInline')
  static GChef getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GChef>(create);
  static GChef? _defaultInstance;

  @$pb.TagNumber(1)
  $0.GRecipe get favoriteRecipe => $_getN(0);
  @$pb.TagNumber(1)
  set favoriteRecipe($0.GRecipe v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFavoriteRecipe() => $_has(0);
  @$pb.TagNumber(1)
  void clearFavoriteRecipe() => clearField(1);
  @$pb.TagNumber(1)
  $0.GRecipe ensureFavoriteRecipe() => $_ensure(0);

  @$pb.TagNumber(2)
  GKnife get favoriteKnife => $_getN(1);
  @$pb.TagNumber(2)
  set favoriteKnife(GKnife v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFavoriteKnife() => $_has(1);
  @$pb.TagNumber(2)
  void clearFavoriteKnife() => clearField(2);
  @$pb.TagNumber(2)
  GKnife ensureFavoriteKnife() => $_ensure(1);

  @$pb.TagNumber(3)
  $6.GApplianceType get favoriteApplianceType => $_getN(2);
  @$pb.TagNumber(3)
  set favoriteApplianceType($6.GApplianceType v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFavoriteApplianceType() => $_has(2);
  @$pb.TagNumber(3)
  void clearFavoriteApplianceType() => clearField(3);
}

class GListOfChef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfChef',
      createEmptyInstance: create)
    ..pc<GChef>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GChef.create)
    ..hasRequiredFields = false;

  GListOfChef._() : super();
  factory GListOfChef({
    $core.Iterable<GChef>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfChef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfChef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfChef clone() => GListOfChef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfChef copyWith(void Function(GListOfChef) updates) =>
      super.copyWith((message) => updates(message as GListOfChef))
          as GListOfChef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfChef create() => GListOfChef._();
  GListOfChef createEmptyInstance() => create();
  static $pb.PbList<GListOfChef> createRepeated() => $pb.PbList<GListOfChef>();
  @$core.pragma('dart2js:noInline')
  static GListOfChef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfChef>(create);
  static GListOfChef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GChef> get items => $_getList(0);
}

class GInventory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GInventory',
      createEmptyInstance: create)
    ..m<$core.String, $core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'numberOfThings',
        protoName: 'numberOfThings',
        entryClassName: 'GInventory.NumberOfThingsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.O3)
    ..m<$core.String, $0.GRecipe>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'recipesByName',
        protoName: 'recipesByName',
        entryClassName: 'GInventory.RecipesByNameEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $0.GRecipe.create)
    ..hasRequiredFields = false;

  GInventory._() : super();
  factory GInventory({
    $core.Map<$core.String, $core.int>? numberOfThings,
    $core.Map<$core.String, $0.GRecipe>? recipesByName,
  }) {
    final _result = create();
    if (numberOfThings != null) {
      _result.numberOfThings.addAll(numberOfThings);
    }
    if (recipesByName != null) {
      _result.recipesByName.addAll(recipesByName);
    }
    return _result;
  }
  factory GInventory.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GInventory.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GInventory clone() => GInventory()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GInventory copyWith(void Function(GInventory) updates) =>
      super.copyWith((message) => updates(message as GInventory))
          as GInventory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GInventory create() => GInventory._();
  GInventory createEmptyInstance() => create();
  static $pb.PbList<GInventory> createRepeated() => $pb.PbList<GInventory>();
  @$core.pragma('dart2js:noInline')
  static GInventory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GInventory>(create);
  static GInventory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.int> get numberOfThings => $_getMap(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $0.GRecipe> get recipesByName => $_getMap(1);
}

class GListOfInventory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfInventory',
      createEmptyInstance: create)
    ..pc<GInventory>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GInventory.create)
    ..hasRequiredFields = false;

  GListOfInventory._() : super();
  factory GListOfInventory({
    $core.Iterable<GInventory>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfInventory.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfInventory.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfInventory clone() => GListOfInventory()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfInventory copyWith(void Function(GListOfInventory) updates) =>
      super.copyWith((message) => updates(message as GListOfInventory))
          as GListOfInventory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfInventory create() => GListOfInventory._();
  GListOfInventory createEmptyInstance() => create();
  static $pb.PbList<GListOfInventory> createRepeated() =>
      $pb.PbList<GListOfInventory>();
  @$core.pragma('dart2js:noInline')
  static GListOfInventory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfInventory>(create);
  static GListOfInventory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GInventory> get items => $_getList(0);
}

class NullableGKnifeType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NullableGKnifeType',
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasValue',
        protoName: 'hasValue')
    ..e<GKnifeType>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        $pb.PbFieldType.OE,
        defaultOrMaker: GKnifeType.chefsKnife,
        valueOf: GKnifeType.valueOf,
        enumValues: GKnifeType.values)
    ..hasRequiredFields = false;

  NullableGKnifeType._() : super();
  factory NullableGKnifeType({
    $core.bool? hasValue,
    GKnifeType? value_2,
  }) {
    final _result = create();
    if (hasValue != null) {
      _result.hasValue = hasValue;
    }
    if (value_2 != null) {
      _result.value_2 = value_2;
    }
    return _result;
  }
  factory NullableGKnifeType.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NullableGKnifeType.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NullableGKnifeType clone() => NullableGKnifeType()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NullableGKnifeType copyWith(void Function(NullableGKnifeType) updates) =>
      super.copyWith((message) => updates(message as NullableGKnifeType))
          as NullableGKnifeType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NullableGKnifeType create() => NullableGKnifeType._();
  NullableGKnifeType createEmptyInstance() => create();
  static $pb.PbList<NullableGKnifeType> createRepeated() =>
      $pb.PbList<NullableGKnifeType>();
  @$core.pragma('dart2js:noInline')
  static NullableGKnifeType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NullableGKnifeType>(create);
  static NullableGKnifeType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get hasValue => $_getBF(0);
  @$pb.TagNumber(1)
  set hasValue($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasValue() => clearField(1);

  @$pb.TagNumber(2)
  GKnifeType get value_2 => $_getN(1);
  @$pb.TagNumber(2)
  set value_2(GKnifeType v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue_2() => clearField(2);
}
