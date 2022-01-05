///
//  Generated code. Do not modify.
//  source: lists_host.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gListsHostDescriptor instead')
const GListsHost$json = {
  '1': 'GListsHost',
  '2': [
    {'1': 'vbools', '3': 1, '4': 3, '5': 8, '10': 'vbools'},
    {'1': 'nvbools', '3': 2, '4': 3, '5': 8, '10': 'nvbools'},
    {'1': 'nvbools_has_value', '3': 3, '4': 1, '5': 8, '10': 'nvboolsHasValue'},
    {'1': 'vstrings', '3': 4, '4': 3, '5': 9, '10': 'vstrings'},
    {'1': 'nvstrings', '3': 5, '4': 3, '5': 9, '10': 'nvstrings'},
    {
      '1': 'nvstrings_has_value',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'nvstringsHasValue'
    },
    {'1': 'vdurations', '3': 7, '4': 3, '5': 1, '10': 'vdurations'},
    {'1': 'nvdurations', '3': 8, '4': 3, '5': 1, '10': 'nvdurations'},
    {
      '1': 'nvdurations_has_value',
      '3': 9,
      '4': 1,
      '5': 8,
      '10': 'nvdurationsHasValue'
    },
    {'1': 'vdatetimes', '3': 10, '4': 3, '5': 3, '10': 'vdatetimes'},
    {'1': 'nvdatetimes', '3': 11, '4': 3, '5': 3, '10': 'nvdatetimes'},
    {
      '1': 'nvdatetimes_has_value',
      '3': 12,
      '4': 1,
      '5': 8,
      '10': 'nvdatetimesHasValue'
    },
    {'1': 'vdecimals', '3': 13, '4': 3, '5': 9, '10': 'vdecimals'},
    {'1': 'nvdecimals', '3': 14, '4': 3, '5': 9, '10': 'nvdecimals'},
    {
      '1': 'nvdecimals_has_value',
      '3': 15,
      '4': 1,
      '5': 8,
      '10': 'nvdecimalsHasValue'
    },
    {'1': 'vints', '3': 16, '4': 3, '5': 5, '10': 'vints'},
    {'1': 'nvints', '3': 17, '4': 3, '5': 5, '10': 'nvints'},
    {'1': 'nvints_has_value', '3': 18, '4': 1, '5': 8, '10': 'nvintsHasValue'},
    {'1': 'vdoubles', '3': 19, '4': 3, '5': 1, '10': 'vdoubles'},
    {'1': 'nvdoubles', '3': 20, '4': 3, '5': 1, '10': 'nvdoubles'},
    {
      '1': 'nvdoubles_has_value',
      '3': 21,
      '4': 1,
      '5': 8,
      '10': 'nvdoublesHasValue'
    },
    {
      '1': 'vappliance_types',
      '3': 22,
      '4': 3,
      '5': 14,
      '6': '.GApplianceType',
      '10': 'vapplianceTypes'
    },
    {
      '1': 'nvappliance_types',
      '3': 23,
      '4': 3,
      '5': 14,
      '6': '.GApplianceType',
      '10': 'nvapplianceTypes'
    },
    {
      '1': 'nvappliance_types_has_value',
      '3': 24,
      '4': 1,
      '5': 8,
      '10': 'nvapplianceTypesHasValue'
    },
  ],
};

/// Descriptor for `GListsHost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListsHostDescriptor = $convert.base64Decode(
    'CgpHTGlzdHNIb3N0EhYKBnZib29scxgBIAMoCFIGdmJvb2xzEhgKB252Ym9vbHMYAiADKAhSB252Ym9vbHMSKgoRbnZib29sc19oYXNfdmFsdWUYAyABKAhSD252Ym9vbHNIYXNWYWx1ZRIaCgh2c3RyaW5ncxgEIAMoCVIIdnN0cmluZ3MSHAoJbnZzdHJpbmdzGAUgAygJUgludnN0cmluZ3MSLgoTbnZzdHJpbmdzX2hhc192YWx1ZRgGIAEoCFIRbnZzdHJpbmdzSGFzVmFsdWUSHgoKdmR1cmF0aW9ucxgHIAMoAVIKdmR1cmF0aW9ucxIgCgtudmR1cmF0aW9ucxgIIAMoAVILbnZkdXJhdGlvbnMSMgoVbnZkdXJhdGlvbnNfaGFzX3ZhbHVlGAkgASgIUhNudmR1cmF0aW9uc0hhc1ZhbHVlEh4KCnZkYXRldGltZXMYCiADKANSCnZkYXRldGltZXMSIAoLbnZkYXRldGltZXMYCyADKANSC252ZGF0ZXRpbWVzEjIKFW52ZGF0ZXRpbWVzX2hhc192YWx1ZRgMIAEoCFITbnZkYXRldGltZXNIYXNWYWx1ZRIcCgl2ZGVjaW1hbHMYDSADKAlSCXZkZWNpbWFscxIeCgpudmRlY2ltYWxzGA4gAygJUgpudmRlY2ltYWxzEjAKFG52ZGVjaW1hbHNfaGFzX3ZhbHVlGA8gASgIUhJudmRlY2ltYWxzSGFzVmFsdWUSFAoFdmludHMYECADKAVSBXZpbnRzEhYKBm52aW50cxgRIAMoBVIGbnZpbnRzEigKEG52aW50c19oYXNfdmFsdWUYEiABKAhSDm52aW50c0hhc1ZhbHVlEhoKCHZkb3VibGVzGBMgAygBUgh2ZG91YmxlcxIcCgludmRvdWJsZXMYFCADKAFSCW52ZG91YmxlcxIuChNudmRvdWJsZXNfaGFzX3ZhbHVlGBUgASgIUhFudmRvdWJsZXNIYXNWYWx1ZRI6ChB2YXBwbGlhbmNlX3R5cGVzGBYgAygOMg8uR0FwcGxpYW5jZVR5cGVSD3ZhcHBsaWFuY2VUeXBlcxI8ChFudmFwcGxpYW5jZV90eXBlcxgXIAMoDjIPLkdBcHBsaWFuY2VUeXBlUhBudmFwcGxpYW5jZVR5cGVzEj0KG252YXBwbGlhbmNlX3R5cGVzX2hhc192YWx1ZRgYIAEoCFIYbnZhcHBsaWFuY2VUeXBlc0hhc1ZhbHVl');
@$core.Deprecated('Use gListOfListsHostDescriptor instead')
const GListOfListsHost$json = {
  '1': 'GListOfListsHost',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GListsHost', '10': 'items'},
  ],
};

/// Descriptor for `GListOfListsHost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfListsHostDescriptor = $convert.base64Decode(
    'ChBHTGlzdE9mTGlzdHNIb3N0EiEKBWl0ZW1zGAEgAygLMgsuR0xpc3RzSG9zdFIFaXRlbXM=');
