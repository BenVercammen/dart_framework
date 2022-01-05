///
//  Generated code. Do not modify.
//  source: appliance_type.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gApplianceTypeDescriptor instead')
const GApplianceType$json = {
  '1': 'GApplianceType',
  '2': [
    {'1': 'G_APPLIANCE_TYPE_HEAT', '2': 0},
    {'1': 'G_APPLIANCE_TYPE_COLD', '2': 1},
    {'1': 'G_APPLIANCE_TYPE_CUTLERY', '2': 2},
  ],
};

/// Descriptor for `GApplianceType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gApplianceTypeDescriptor = $convert.base64Decode(
    'Cg5HQXBwbGlhbmNlVHlwZRIZChVHX0FQUExJQU5DRV9UWVBFX0hFQVQQABIZChVHX0FQUExJQU5DRV9UWVBFX0NPTEQQARIcChhHX0FQUExJQU5DRV9UWVBFX0NVVExFUlkQAg==');
@$core.Deprecated('Use nullableGApplianceTypeDescriptor instead')
const NullableGApplianceType$json = {
  '1': 'NullableGApplianceType',
  '2': [
    {'1': 'has_value', '3': 1, '4': 1, '5': 8, '10': 'hasValue'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.GApplianceType',
      '10': 'value'
    },
  ],
};

/// Descriptor for `NullableGApplianceType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nullableGApplianceTypeDescriptor =
    $convert.base64Decode(
        'ChZOdWxsYWJsZUdBcHBsaWFuY2VUeXBlEhsKCWhhc192YWx1ZRgBIAEoCFIIaGFzVmFsdWUSJQoFdmFsdWUYAiABKA4yDy5HQXBwbGlhbmNlVHlwZVIFdmFsdWU=');
