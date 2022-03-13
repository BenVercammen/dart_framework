///
//  Generated code. Do not modify.
//  source: polymorphism/abstract_vehicle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gAbstractVehicleDescriptor instead')
const GAbstractVehicle$json = {
  '1': 'GAbstractVehicle',
  '2': [
    {
      '1': 'bicycle',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.GBicycle',
      '9': 0,
      '10': 'bicycle'
    },
    {
      '1': 'scooter',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.GScooter',
      '9': 0,
      '10': 'scooter'
    },
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `GAbstractVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAbstractVehicleDescriptor = $convert.base64Decode(
    'ChBHQWJzdHJhY3RWZWhpY2xlEiUKB2JpY3ljbGUYASABKAsyCS5HQmljeWNsZUgAUgdiaWN5Y2xlEiUKB3Njb290ZXIYAiABKAsyCS5HU2Nvb3RlckgAUgdzY29vdGVyQgcKBXByb3Bz');
@$core.Deprecated('Use gListOfAbstractVehicleDescriptor instead')
const GListOfAbstractVehicle$json = {
  '1': 'GListOfAbstractVehicle',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GAbstractVehicle',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfAbstractVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAbstractVehicleDescriptor =
    $convert.base64Decode(
        'ChZHTGlzdE9mQWJzdHJhY3RWZWhpY2xlEicKBWl0ZW1zGAEgAygLMhEuR0Fic3RyYWN0VmVoaWNsZVIFaXRlbXM=');
