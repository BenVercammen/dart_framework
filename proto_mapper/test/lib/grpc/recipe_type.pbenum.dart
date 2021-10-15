///
//  Generated code. Do not modify.
//  source: recipe_type.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class GRecipeTypes extends $pb.ProtobufEnum {
  static const GRecipeTypes cook = GRecipeTypes._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'cook');
  static const GRecipeTypes grill = GRecipeTypes._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'grill');
  static const GRecipeTypes fry = GRecipeTypes._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'fry');
  static const GRecipeTypes stew = GRecipeTypes._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'stew');

  static const $core.List<GRecipeTypes> values = <GRecipeTypes>[
    cook,
    grill,
    fry,
    stew,
  ];

  static final $core.Map<$core.int, GRecipeTypes> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static GRecipeTypes? valueOf($core.int value) => _byValue[value];

  const GRecipeTypes._($core.int v, $core.String n) : super(v, n);
}
