///
//  Generated code. Do not modify.
//  source: recipe_type.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'recipe_type.pbenum.dart';

export 'recipe_type.pbenum.dart';

class NullableGRecipeTypes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NullableGRecipeTypes',
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasValue',
        protoName: 'hasValue')
    ..e<GRecipeTypes>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        $pb.PbFieldType.OE,
        defaultOrMaker: GRecipeTypes.cook,
        valueOf: GRecipeTypes.valueOf,
        enumValues: GRecipeTypes.values)
    ..hasRequiredFields = false;

  NullableGRecipeTypes._() : super();
  factory NullableGRecipeTypes({
    $core.bool? hasValue,
    GRecipeTypes? value_2,
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
  factory NullableGRecipeTypes.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NullableGRecipeTypes.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NullableGRecipeTypes clone() =>
      NullableGRecipeTypes()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NullableGRecipeTypes copyWith(void Function(NullableGRecipeTypes) updates) =>
      super.copyWith((message) => updates(message as NullableGRecipeTypes))
          as NullableGRecipeTypes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NullableGRecipeTypes create() => NullableGRecipeTypes._();
  NullableGRecipeTypes createEmptyInstance() => create();
  static $pb.PbList<NullableGRecipeTypes> createRepeated() =>
      $pb.PbList<NullableGRecipeTypes>();
  @$core.pragma('dart2js:noInline')
  static NullableGRecipeTypes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NullableGRecipeTypes>(create);
  static NullableGRecipeTypes? _defaultInstance;

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
  GRecipeTypes get value_2 => $_getN(1);
  @$pb.TagNumber(2)
  set value_2(GRecipeTypes v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue_2() => clearField(2);
}
