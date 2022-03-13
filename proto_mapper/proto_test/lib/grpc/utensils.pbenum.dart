///
//  Generated code. Do not modify.
//  source: utensils.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class GKnifeType extends $pb.ProtobufEnum {
  static const GKnifeType G_KNIFE_TYPE_CHEFS_KNIFE = GKnifeType._(
      0,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'G_KNIFE_TYPE_CHEFS_KNIFE');
  static const GKnifeType G_KNIFE_TYPE_PARING_KNIFE = GKnifeType._(
      1,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'G_KNIFE_TYPE_PARING_KNIFE');
  static const GKnifeType G_KNIFE_TYPE_BREAD_KNIFE = GKnifeType._(
      2,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'G_KNIFE_TYPE_BREAD_KNIFE');

  static const $core.List<GKnifeType> values = <GKnifeType>[
    G_KNIFE_TYPE_CHEFS_KNIFE,
    G_KNIFE_TYPE_PARING_KNIFE,
    G_KNIFE_TYPE_BREAD_KNIFE,
  ];

  static final $core.Map<$core.int, GKnifeType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static GKnifeType? valueOf($core.int value) => _byValue[value];

  const GKnifeType._($core.int v, $core.String n) : super(v, n);
}

class GChefType extends $pb.ProtobufEnum {
  static const GChefType G_CHEF_TYPE_SENIOR_CHEF = GChefType._(
      0,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'G_CHEF_TYPE_SENIOR_CHEF');
  static const GChefType G_CHEF_TYPE_SOUS_CHEF = GChefType._(
      1,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'G_CHEF_TYPE_SOUS_CHEF');
  static const GChefType G_CHEF_TYPE_PASTRY_CHEF = GChefType._(
      2,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'G_CHEF_TYPE_PASTRY_CHEF');
  static const GChefType G_CHEF_TYPE_FISH_CHEF = GChefType._(
      3,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'G_CHEF_TYPE_FISH_CHEF');

  static const $core.List<GChefType> values = <GChefType>[
    G_CHEF_TYPE_SENIOR_CHEF,
    G_CHEF_TYPE_SOUS_CHEF,
    G_CHEF_TYPE_PASTRY_CHEF,
    G_CHEF_TYPE_FISH_CHEF,
  ];

  static final $core.Map<$core.int, GChefType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static GChefType? valueOf($core.int value) => _byValue[value];

  const GChefType._($core.int v, $core.String n) : super(v, n);
}
