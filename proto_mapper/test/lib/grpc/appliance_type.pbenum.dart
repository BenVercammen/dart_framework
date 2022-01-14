///
//  Generated code. Do not modify.
//  source: appliance_type.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class GApplianceType extends $pb.ProtobufEnum {
  static const GApplianceType G_APPLIANCE_TYPE_HEAT = GApplianceType._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'G_APPLIANCE_TYPE_HEAT');
  static const GApplianceType G_APPLIANCE_TYPE_COLD = GApplianceType._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'G_APPLIANCE_TYPE_COLD');
  static const GApplianceType G_APPLIANCE_TYPE_CUTLERY = GApplianceType._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'G_APPLIANCE_TYPE_CUTLERY');

  static const $core.List<GApplianceType> values = <GApplianceType>[
    G_APPLIANCE_TYPE_HEAT,
    G_APPLIANCE_TYPE_COLD,
    G_APPLIANCE_TYPE_CUTLERY,
  ];

  static final $core.Map<$core.int, GApplianceType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static GApplianceType? valueOf($core.int value) => _byValue[value];

  const GApplianceType._($core.int v, $core.String n) : super(v, n);
}
