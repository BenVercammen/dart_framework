///
//  Generated code. Do not modify.
//  source: recipe.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gRecipeDescriptor instead')
const GRecipe$json = {
  '1': 'GRecipe',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'descriptionHasValue',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'descriptionHasValue'
    },
    {
      '1': 'category',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.GCategory',
      '10': 'category'
    },
    {
      '1': 'ingredients',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.GIngredient',
      '10': 'ingredients'
    },
    {'1': 'publishDate', '3': 6, '4': 1, '5': 3, '10': 'publishDate'},
    {'1': 'expiryDate', '3': 7, '4': 1, '5': 3, '10': 'expiryDate'},
    {
      '1': 'expiryDateHasValue',
      '3': 8,
      '4': 1,
      '5': 8,
      '10': 'expiryDateHasValue'
    },
    {
      '1': 'preparationDuration',
      '3': 9,
      '4': 1,
      '5': 1,
      '10': 'preparationDuration'
    },
    {'1': 'totalDuration', '3': 10, '4': 1, '5': 1, '10': 'totalDuration'},
    {
      '1': 'totalDurationHasValue',
      '3': 11,
      '4': 1,
      '5': 8,
      '10': 'totalDurationHasValue'
    },
    {'1': 'isPublished', '3': 12, '4': 1, '5': 8, '10': 'isPublished'},
    {'1': 'requiresRobot', '3': 13, '4': 1, '5': 8, '10': 'requiresRobot'},
    {
      '1': 'requiresRobotHasValue',
      '3': 14,
      '4': 1,
      '5': 8,
      '10': 'requiresRobotHasValue'
    },
    {
      '1': 'mainApplianceType',
      '3': 15,
      '4': 1,
      '5': 14,
      '6': '.GApplianceType',
      '10': 'mainApplianceType'
    },
    {
      '1': 'secondaryApplianceType',
      '3': 16,
      '4': 1,
      '5': 14,
      '6': '.GApplianceType',
      '10': 'secondaryApplianceType'
    },
    {
      '1': 'secondaryApplianceTypeHasValue',
      '3': 17,
      '4': 1,
      '5': 8,
      '10': 'secondaryApplianceTypeHasValue'
    },
    {'1': 'tags', '3': 18, '4': 3, '5': 9, '10': 'tags'},
    {'1': 'extraTags', '3': 19, '4': 3, '5': 9, '10': 'extraTags'},
    {
      '1': 'extraTagsHasValue',
      '3': 20,
      '4': 1,
      '5': 8,
      '10': 'extraTagsHasValue'
    },
  ],
};

/// Descriptor for `GRecipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRecipeDescriptor = $convert.base64Decode(
    'CgdHUmVjaXBlEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SMAoTZGVzY3JpcHRpb25IYXNWYWx1ZRgDIAEoCFITZGVzY3JpcHRpb25IYXNWYWx1ZRImCghjYXRlZ29yeRgEIAEoCzIKLkdDYXRlZ29yeVIIY2F0ZWdvcnkSLgoLaW5ncmVkaWVudHMYBSADKAsyDC5HSW5ncmVkaWVudFILaW5ncmVkaWVudHMSIAoLcHVibGlzaERhdGUYBiABKANSC3B1Ymxpc2hEYXRlEh4KCmV4cGlyeURhdGUYByABKANSCmV4cGlyeURhdGUSLgoSZXhwaXJ5RGF0ZUhhc1ZhbHVlGAggASgIUhJleHBpcnlEYXRlSGFzVmFsdWUSMAoTcHJlcGFyYXRpb25EdXJhdGlvbhgJIAEoAVITcHJlcGFyYXRpb25EdXJhdGlvbhIkCg10b3RhbER1cmF0aW9uGAogASgBUg10b3RhbER1cmF0aW9uEjQKFXRvdGFsRHVyYXRpb25IYXNWYWx1ZRgLIAEoCFIVdG90YWxEdXJhdGlvbkhhc1ZhbHVlEiAKC2lzUHVibGlzaGVkGAwgASgIUgtpc1B1Ymxpc2hlZBIkCg1yZXF1aXJlc1JvYm90GA0gASgIUg1yZXF1aXJlc1JvYm90EjQKFXJlcXVpcmVzUm9ib3RIYXNWYWx1ZRgOIAEoCFIVcmVxdWlyZXNSb2JvdEhhc1ZhbHVlEj0KEW1haW5BcHBsaWFuY2VUeXBlGA8gASgOMg8uR0FwcGxpYW5jZVR5cGVSEW1haW5BcHBsaWFuY2VUeXBlEkcKFnNlY29uZGFyeUFwcGxpYW5jZVR5cGUYECABKA4yDy5HQXBwbGlhbmNlVHlwZVIWc2Vjb25kYXJ5QXBwbGlhbmNlVHlwZRJGCh5zZWNvbmRhcnlBcHBsaWFuY2VUeXBlSGFzVmFsdWUYESABKAhSHnNlY29uZGFyeUFwcGxpYW5jZVR5cGVIYXNWYWx1ZRISCgR0YWdzGBIgAygJUgR0YWdzEhwKCWV4dHJhVGFncxgTIAMoCVIJZXh0cmFUYWdzEiwKEWV4dHJhVGFnc0hhc1ZhbHVlGBQgASgIUhFleHRyYVRhZ3NIYXNWYWx1ZQ==');
@$core.Deprecated('Use gListOfRecipeDescriptor instead')
const GListOfRecipe$json = {
  '1': 'GListOfRecipe',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GRecipe', '10': 'items'},
  ],
};

/// Descriptor for `GListOfRecipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfRecipeDescriptor = $convert.base64Decode(
    'Cg1HTGlzdE9mUmVjaXBlEh4KBWl0ZW1zGAEgAygLMgguR1JlY2lwZVIFaXRlbXM=');
