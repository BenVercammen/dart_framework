///
//  Generated code. Do not modify.
//  source: polymorphism/bicycle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gBicycleDescriptor instead')
const GBicycle$json = {
  '1': 'GBicycle',
  '2': [
    {'1': 'weight', '3': 1, '4': 1, '5': 5, '10': 'weight'},
    {'1': 'wheel_diamater', '3': 2, '4': 1, '5': 9, '10': 'wheelDiamater'},
  ],
};

/// Descriptor for `GBicycle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gBicycleDescriptor = $convert.base64Decode(
    'CghHQmljeWNsZRIWCgZ3ZWlnaHQYASABKAVSBndlaWdodBIlCg53aGVlbF9kaWFtYXRlchgCIAEoCVINd2hlZWxEaWFtYXRlcg==');
@$core.Deprecated('Use gListOfBicycleDescriptor instead')
const GListOfBicycle$json = {
  '1': 'GListOfBicycle',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GBicycle', '10': 'items'},
  ],
};

/// Descriptor for `GListOfBicycle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfBicycleDescriptor = $convert.base64Decode(
    'Cg5HTGlzdE9mQmljeWNsZRIfCgVpdGVtcxgBIAMoCzIJLkdCaWN5Y2xlUgVpdGVtcw==');
