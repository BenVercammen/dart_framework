///
//  Generated code. Do not modify.
//  source: polymorphism/airplane.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gAirplaneDescriptor instead')
const GAirplane$json = {
  '1': 'GAirplane',
  '2': [
    {'1': 'weight', '3': 1, '4': 1, '5': 5, '10': 'weight'},
    {'1': 'wingspan', '3': 2, '4': 1, '5': 5, '10': 'wingspan'},
  ],
};

/// Descriptor for `GAirplane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAirplaneDescriptor = $convert.base64Decode(
    'CglHQWlycGxhbmUSFgoGd2VpZ2h0GAEgASgFUgZ3ZWlnaHQSGgoId2luZ3NwYW4YAiABKAVSCHdpbmdzcGFu');
@$core.Deprecated('Use gListOfAirplaneDescriptor instead')
const GListOfAirplane$json = {
  '1': 'GListOfAirplane',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GAirplane', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAirplane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAirplaneDescriptor = $convert.base64Decode(
    'Cg9HTGlzdE9mQWlycGxhbmUSIAoFaXRlbXMYASADKAsyCi5HQWlycGxhbmVSBWl0ZW1z');
