///
//  Generated code. Do not modify.
//  source: utensils.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gKnifeTypeDescriptor instead')
const GKnifeType$json = {
  '1': 'GKnifeType',
  '2': [
    {'1': 'chefsKnife', '2': 0},
    {'1': 'paringKnife', '2': 1},
    {'1': 'breadKnife', '2': 2},
  ],
};

/// Descriptor for `GKnifeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gKnifeTypeDescriptor = $convert.base64Decode(
    'CgpHS25pZmVUeXBlEg4KCmNoZWZzS25pZmUQABIPCgtwYXJpbmdLbmlmZRABEg4KCmJyZWFkS25pZmUQAg==');
@$core.Deprecated('Use gKnifeDescriptor instead')
const GKnife$json = {
  '1': 'GKnife',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.GKnifeType', '10': 'type'},
  ],
};

/// Descriptor for `GKnife`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKnifeDescriptor = $convert.base64Decode(
    'CgZHS25pZmUSEgoEbmFtZRgBIAEoCVIEbmFtZRIfCgR0eXBlGAIgASgOMgsuR0tuaWZlVHlwZVIEdHlwZQ==');
@$core.Deprecated('Use gListOfKnifeDescriptor instead')
const GListOfKnife$json = {
  '1': 'GListOfKnife',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GKnife', '10': 'items'},
  ],
};

/// Descriptor for `GListOfKnife`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfKnifeDescriptor = $convert.base64Decode(
    'CgxHTGlzdE9mS25pZmUSHQoFaXRlbXMYASADKAsyBy5HS25pZmVSBWl0ZW1z');
@$core.Deprecated('Use gGarlicPressDescriptor instead')
const GGarlicPress$json = {
  '1': 'GGarlicPress',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'machineWashable', '3': 2, '4': 1, '5': 8, '10': 'machineWashable'},
  ],
};

/// Descriptor for `GGarlicPress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gGarlicPressDescriptor = $convert.base64Decode(
    'CgxHR2FybGljUHJlc3MSEgoEbmFtZRgBIAEoCVIEbmFtZRIoCg9tYWNoaW5lV2FzaGFibGUYAiABKAhSD21hY2hpbmVXYXNoYWJsZQ==');
@$core.Deprecated('Use gListOfGarlicPressDescriptor instead')
const GListOfGarlicPress$json = {
  '1': 'GListOfGarlicPress',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GGarlicPress',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfGarlicPress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfGarlicPressDescriptor = $convert.base64Decode(
    'ChJHTGlzdE9mR2FybGljUHJlc3MSIwoFaXRlbXMYASADKAsyDS5HR2FybGljUHJlc3NSBWl0ZW1z');
@$core.Deprecated('Use gKitchenDescriptor instead')
const GKitchen$json = {
  '1': 'GKitchen',
  '2': [
    {
      '1': 'recipeList',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GRecipe',
      '10': 'recipeList'
    },
    {
      '1': 'recipeMap',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.GKitchen.RecipeMapEntry',
      '10': 'recipeMap'
    },
  ],
  '3': [GKitchen_RecipeMapEntry$json],
};

@$core.Deprecated('Use gKitchenDescriptor instead')
const GKitchen_RecipeMapEntry$json = {
  '1': 'RecipeMapEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.GRecipe', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GKitchen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKitchenDescriptor = $convert.base64Decode(
    'CghHS2l0Y2hlbhIoCgpyZWNpcGVMaXN0GAEgAygLMgguR1JlY2lwZVIKcmVjaXBlTGlzdBI2CglyZWNpcGVNYXAYAiADKAsyGC5HS2l0Y2hlbi5SZWNpcGVNYXBFbnRyeVIJcmVjaXBlTWFwGkYKDlJlY2lwZU1hcEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5Eh4KBXZhbHVlGAIgASgLMgguR1JlY2lwZVIFdmFsdWU6AjgB');
@$core.Deprecated('Use gListOfKitchenDescriptor instead')
const GListOfKitchen$json = {
  '1': 'GListOfKitchen',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GKitchen', '10': 'items'},
  ],
};

/// Descriptor for `GListOfKitchen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfKitchenDescriptor = $convert.base64Decode(
    'Cg5HTGlzdE9mS2l0Y2hlbhIfCgVpdGVtcxgBIAMoCzIJLkdLaXRjaGVuUgVpdGVtcw==');
@$core.Deprecated('Use gChefDescriptor instead')
const GChef$json = {
  '1': 'GChef',
  '2': [
    {
      '1': 'favoriteRecipe',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.GRecipe',
      '10': 'favoriteRecipe'
    },
    {
      '1': 'favoriteKnife',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.GKnife',
      '10': 'favoriteKnife'
    },
    {
      '1': 'favoriteApplianceType',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.GApplianceType',
      '10': 'favoriteApplianceType'
    },
  ],
};

/// Descriptor for `GChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gChefDescriptor = $convert.base64Decode(
    'CgVHQ2hlZhIwCg5mYXZvcml0ZVJlY2lwZRgBIAEoCzIILkdSZWNpcGVSDmZhdm9yaXRlUmVjaXBlEi0KDWZhdm9yaXRlS25pZmUYAiABKAsyBy5HS25pZmVSDWZhdm9yaXRlS25pZmUSRQoVZmF2b3JpdGVBcHBsaWFuY2VUeXBlGAMgASgOMg8uR0FwcGxpYW5jZVR5cGVSFWZhdm9yaXRlQXBwbGlhbmNlVHlwZQ==');
@$core.Deprecated('Use gListOfChefDescriptor instead')
const GListOfChef$json = {
  '1': 'GListOfChef',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GChef', '10': 'items'},
  ],
};

/// Descriptor for `GListOfChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfChefDescriptor = $convert.base64Decode(
    'CgtHTGlzdE9mQ2hlZhIcCgVpdGVtcxgBIAMoCzIGLkdDaGVmUgVpdGVtcw==');
@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory$json = {
  '1': 'GInventory',
  '2': [
    {
      '1': 'numberOfThings',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GInventory.NumberOfThingsEntry',
      '10': 'numberOfThings'
    },
    {
      '1': 'recipesByName',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.GInventory.RecipesByNameEntry',
      '10': 'recipesByName'
    },
  ],
  '3': [
    GInventory_NumberOfThingsEntry$json,
    GInventory_RecipesByNameEntry$json
  ],
};

@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory_NumberOfThingsEntry$json = {
  '1': 'NumberOfThingsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory_RecipesByNameEntry$json = {
  '1': 'RecipesByNameEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.GRecipe', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GInventory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gInventoryDescriptor = $convert.base64Decode(
    'CgpHSW52ZW50b3J5EkcKDm51bWJlck9mVGhpbmdzGAEgAygLMh8uR0ludmVudG9yeS5OdW1iZXJPZlRoaW5nc0VudHJ5Ug5udW1iZXJPZlRoaW5ncxJECg1yZWNpcGVzQnlOYW1lGAIgAygLMh4uR0ludmVudG9yeS5SZWNpcGVzQnlOYW1lRW50cnlSDXJlY2lwZXNCeU5hbWUaQQoTTnVtYmVyT2ZUaGluZ3NFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoBVIFdmFsdWU6AjgBGkoKElJlY2lwZXNCeU5hbWVFbnRyeRIQCgNrZXkYASABKAlSA2tleRIeCgV2YWx1ZRgCIAEoCzIILkdSZWNpcGVSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use gListOfInventoryDescriptor instead')
const GListOfInventory$json = {
  '1': 'GListOfInventory',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GInventory', '10': 'items'},
  ],
};

/// Descriptor for `GListOfInventory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfInventoryDescriptor = $convert.base64Decode(
    'ChBHTGlzdE9mSW52ZW50b3J5EiEKBWl0ZW1zGAEgAygLMgsuR0ludmVudG9yeVIFaXRlbXM=');
@$core.Deprecated('Use nullableGKnifeTypeDescriptor instead')
const NullableGKnifeType$json = {
  '1': 'NullableGKnifeType',
  '2': [
    {'1': 'hasValue', '3': 1, '4': 1, '5': 8, '10': 'hasValue'},
    {'1': 'value', '3': 2, '4': 1, '5': 14, '6': '.GKnifeType', '10': 'value'},
  ],
};

/// Descriptor for `NullableGKnifeType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nullableGKnifeTypeDescriptor = $convert.base64Decode(
    'ChJOdWxsYWJsZUdLbmlmZVR5cGUSGgoIaGFzVmFsdWUYASABKAhSCGhhc1ZhbHVlEiEKBXZhbHVlGAIgASgOMgsuR0tuaWZlVHlwZVIFdmFsdWU=');
