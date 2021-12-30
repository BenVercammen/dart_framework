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
  static const GKnifeType chefsKnife = GKnifeType._(
      0,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'chefsKnife');
  static const GKnifeType paringKnife = GKnifeType._(
      1,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'paringKnife');
  static const GKnifeType breadKnife = GKnifeType._(
      2,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'breadKnife');

  static const $core.List<GKnifeType> values = <GKnifeType>[
    chefsKnife,
    paringKnife,
    breadKnife,
  ];

  static final $core.Map<$core.int, GKnifeType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static GKnifeType? valueOf($core.int value) => _byValue[value];

  const GKnifeType._($core.int v, $core.String n) : super(v, n);
}
