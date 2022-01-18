///
//  Generated code. Do not modify.
//  source: polymorphism/vehicle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gFieldsOfVehicleDescriptor instead')
const GFieldsOfVehicle$json = {
  '1': 'GFieldsOfVehicle',
  '2': [
    {'1': 'weight', '3': 1, '4': 1, '5': 5, '10': 'weight'},
  ],
};

/// Descriptor for `GFieldsOfVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfVehicleDescriptor = $convert
    .base64Decode('ChBHRmllbGRzT2ZWZWhpY2xlEhYKBndlaWdodBgBIAEoBVIGd2VpZ2h0');
@$core.Deprecated('Use gVehicleDescriptor instead')
const GVehicle$json = {
  '1': 'GVehicle',
  '2': [
    {
      '1': 'vehicle',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.GFieldsOfVehicle',
      '9': 0,
      '10': 'vehicle'
    },
    {
      '1': 'airplane',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.GAirplane',
      '9': 0,
      '10': 'airplane'
    },
    {'1': 'car', '3': 3, '4': 1, '5': 11, '6': '.GCar', '9': 0, '10': 'car'},
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `GVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gVehicleDescriptor = $convert.base64Decode(
    'CghHVmVoaWNsZRItCgd2ZWhpY2xlGAEgASgLMhEuR0ZpZWxkc09mVmVoaWNsZUgAUgd2ZWhpY2xlEigKCGFpcnBsYW5lGAIgASgLMgouR0FpcnBsYW5lSABSCGFpcnBsYW5lEhkKA2NhchgDIAEoCzIFLkdDYXJIAFIDY2FyQgcKBXByb3Bz');
@$core.Deprecated('Use gListOfVehicleDescriptor instead')
const GListOfVehicle$json = {
  '1': 'GListOfVehicle',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GVehicle', '10': 'items'},
  ],
};

/// Descriptor for `GListOfVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfVehicleDescriptor = $convert.base64Decode(
    'Cg5HTGlzdE9mVmVoaWNsZRIfCgVpdGVtcxgBIAMoCzIJLkdWZWhpY2xlUgVpdGVtcw==');
