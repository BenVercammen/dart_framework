///
//  Generated code. Do not modify.
//  source: any_host.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gDynamicObjectDescriptor instead')
const GDynamicObject$json = {
  '1': 'GDynamicObject',
  '2': [
    {
      '1': 'dynamic_property',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'dynamicProperty'
    },
    {
      '1': 'object_property',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'objectProperty'
    },
  ],
};

/// Descriptor for `GDynamicObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gDynamicObjectDescriptor = $convert.base64Decode(
    'Cg5HRHluYW1pY09iamVjdBI/ChBkeW5hbWljX3Byb3BlcnR5GAEgASgLMhQuZ29vZ2xlLnByb3RvYnVmLkFueVIPZHluYW1pY1Byb3BlcnR5Ej0KD29iamVjdF9wcm9wZXJ0eRgCIAEoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSDm9iamVjdFByb3BlcnR5');
@$core.Deprecated('Use gListOfDynamicObjectDescriptor instead')
const GListOfDynamicObject$json = {
  '1': 'GListOfDynamicObject',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GDynamicObject',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfDynamicObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfDynamicObjectDescriptor = $convert.base64Decode(
    'ChRHTGlzdE9mRHluYW1pY09iamVjdBIlCgVpdGVtcxgBIAMoCzIPLkdEeW5hbWljT2JqZWN0UgVpdGVtcw==');
@$core.Deprecated('Use gDynamicMapDescriptor instead')
const GDynamicMap$json = {
  '1': 'GDynamicMap',
  '2': [
    {
      '1': 'dynamic_map',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GDynamicMap.DynamicMapEntry',
      '10': 'dynamicMap'
    },
    {
      '1': 'object_map',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.GDynamicMap.ObjectMapEntry',
      '10': 'objectMap'
    },
  ],
  '3': [GDynamicMap_DynamicMapEntry$json, GDynamicMap_ObjectMapEntry$json],
};

@$core.Deprecated('Use gDynamicMapDescriptor instead')
const GDynamicMap_DynamicMapEntry$json = {
  '1': 'DynamicMapEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use gDynamicMapDescriptor instead')
const GDynamicMap_ObjectMapEntry$json = {
  '1': 'ObjectMapEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `GDynamicMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gDynamicMapDescriptor = $convert.base64Decode(
    'CgtHRHluYW1pY01hcBI9CgtkeW5hbWljX21hcBgBIAMoCzIcLkdEeW5hbWljTWFwLkR5bmFtaWNNYXBFbnRyeVIKZHluYW1pY01hcBI6CgpvYmplY3RfbWFwGAIgAygLMhsuR0R5bmFtaWNNYXAuT2JqZWN0TWFwRW50cnlSCW9iamVjdE1hcBpTCg9EeW5hbWljTWFwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSKgoFdmFsdWUYAiABKAsyFC5nb29nbGUucHJvdG9idWYuQW55UgV2YWx1ZToCOAEaUgoOT2JqZWN0TWFwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSKgoFdmFsdWUYAiABKAsyFC5nb29nbGUucHJvdG9idWYuQW55UgV2YWx1ZToCOAE=');
@$core.Deprecated('Use gListOfDynamicMapDescriptor instead')
const GListOfDynamicMap$json = {
  '1': 'GListOfDynamicMap',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GDynamicMap', '10': 'items'},
  ],
};

/// Descriptor for `GListOfDynamicMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfDynamicMapDescriptor = $convert.base64Decode(
    'ChFHTGlzdE9mRHluYW1pY01hcBIiCgVpdGVtcxgBIAMoCzIMLkdEeW5hbWljTWFwUgVpdGVtcw==');
@$core.Deprecated('Use gDynamicSetDescriptor instead')
const GDynamicSet$json = {
  '1': 'GDynamicSet',
  '2': [
    {
      '1': 'dynamic_set',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'dynamicSet'
    },
    {
      '1': 'object_set',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'objectSet'
    },
  ],
};

/// Descriptor for `GDynamicSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gDynamicSetDescriptor = $convert.base64Decode(
    'CgtHRHluYW1pY1NldBI1CgtkeW5hbWljX3NldBgBIAMoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSCmR5bmFtaWNTZXQSMwoKb2JqZWN0X3NldBgCIAMoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSCW9iamVjdFNldA==');
@$core.Deprecated('Use gListOfDynamicSetDescriptor instead')
const GListOfDynamicSet$json = {
  '1': 'GListOfDynamicSet',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GDynamicSet', '10': 'items'},
  ],
};

/// Descriptor for `GListOfDynamicSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfDynamicSetDescriptor = $convert.base64Decode(
    'ChFHTGlzdE9mRHluYW1pY1NldBIiCgVpdGVtcxgBIAMoCzIMLkdEeW5hbWljU2V0UgVpdGVtcw==');
@$core.Deprecated('Use gDynamicListDescriptor instead')
const GDynamicList$json = {
  '1': 'GDynamicList',
  '2': [
    {
      '1': 'dynamic_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'dynamicList'
    },
    {
      '1': 'object_list',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'objectList'
    },
  ],
};

/// Descriptor for `GDynamicList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gDynamicListDescriptor = $convert.base64Decode(
    'CgxHRHluYW1pY0xpc3QSNwoMZHluYW1pY19saXN0GAEgAygLMhQuZ29vZ2xlLnByb3RvYnVmLkFueVILZHluYW1pY0xpc3QSNQoLb2JqZWN0X2xpc3QYAiADKAsyFC5nb29nbGUucHJvdG9idWYuQW55UgpvYmplY3RMaXN0');
@$core.Deprecated('Use gListOfDynamicListDescriptor instead')
const GListOfDynamicList$json = {
  '1': 'GListOfDynamicList',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GDynamicList',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfDynamicList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfDynamicListDescriptor = $convert.base64Decode(
    'ChJHTGlzdE9mRHluYW1pY0xpc3QSIwoFaXRlbXMYASADKAsyDS5HRHluYW1pY0xpc3RSBWl0ZW1z');
