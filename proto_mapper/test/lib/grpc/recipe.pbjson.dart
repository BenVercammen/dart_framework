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
const GRecipe$json = const {
  '1': 'GRecipe',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'description_has_value',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'descriptionHasValue'
    },
    const {
      '1': 'category',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.GCategory',
      '10': 'category'
    },
    const {
      '1': 'ingredients',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.GIngredient',
      '10': 'ingredients'
    },
    const {'1': 'publish_date', '3': 6, '4': 1, '5': 3, '10': 'publishDate'},
    const {'1': 'expiry_date', '3': 7, '4': 1, '5': 3, '10': 'expiryDate'},
    const {
      '1': 'expiry_date_has_value',
      '3': 8,
      '4': 1,
      '5': 8,
      '10': 'expiryDateHasValue'
    },
    const {
      '1': 'preparation_duration',
      '3': 9,
      '4': 1,
      '5': 1,
      '10': 'preparationDuration'
    },
    const {
      '1': 'total_duration',
      '3': 10,
      '4': 1,
      '5': 1,
      '10': 'totalDuration'
    },
    const {
      '1': 'total_duration_has_value',
      '3': 11,
      '4': 1,
      '5': 8,
      '10': 'totalDurationHasValue'
    },
    const {'1': 'is_published', '3': 12, '4': 1, '5': 8, '10': 'isPublished'},
    const {
      '1': 'requires_robot',
      '3': 13,
      '4': 1,
      '5': 8,
      '10': 'requiresRobot'
    },
    const {
      '1': 'requires_robot_has_value',
      '3': 14,
      '4': 1,
      '5': 8,
      '10': 'requiresRobotHasValue'
    },
    const {
      '1': 'main_appliance_type',
      '3': 15,
      '4': 1,
      '5': 14,
      '6': '.GApplianceType',
      '10': 'mainApplianceType'
    },
    const {
      '1': 'secondary_appliance_type',
      '3': 16,
      '4': 1,
      '5': 14,
      '6': '.GApplianceType',
      '10': 'secondaryApplianceType'
    },
    const {
      '1': 'secondary_appliance_type_has_value',
      '3': 17,
      '4': 1,
      '5': 8,
      '10': 'secondaryApplianceTypeHasValue'
    },
    const {'1': 'tags', '3': 18, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'extra_tags', '3': 19, '4': 3, '5': 9, '10': 'extraTags'},
    const {
      '1': 'extra_tags_has_value',
      '3': 20,
      '4': 1,
      '5': 8,
      '10': 'extraTagsHasValue'
    },
  ],
};

/// Descriptor for `GRecipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRecipeDescriptor = $convert.base64Decode(
    'CgdHUmVjaXBlEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SMgoVZGVzY3JpcHRpb25faGFzX3ZhbHVlGAMgASgIUhNkZXNjcmlwdGlvbkhhc1ZhbHVlEiYKCGNhdGVnb3J5GAQgASgLMgouR0NhdGVnb3J5UghjYXRlZ29yeRIuCgtpbmdyZWRpZW50cxgFIAMoCzIMLkdJbmdyZWRpZW50UgtpbmdyZWRpZW50cxIhCgxwdWJsaXNoX2RhdGUYBiABKANSC3B1Ymxpc2hEYXRlEh8KC2V4cGlyeV9kYXRlGAcgASgDUgpleHBpcnlEYXRlEjEKFWV4cGlyeV9kYXRlX2hhc192YWx1ZRgIIAEoCFISZXhwaXJ5RGF0ZUhhc1ZhbHVlEjEKFHByZXBhcmF0aW9uX2R1cmF0aW9uGAkgASgBUhNwcmVwYXJhdGlvbkR1cmF0aW9uEiUKDnRvdGFsX2R1cmF0aW9uGAogASgBUg10b3RhbER1cmF0aW9uEjcKGHRvdGFsX2R1cmF0aW9uX2hhc192YWx1ZRgLIAEoCFIVdG90YWxEdXJhdGlvbkhhc1ZhbHVlEiEKDGlzX3B1Ymxpc2hlZBgMIAEoCFILaXNQdWJsaXNoZWQSJQoOcmVxdWlyZXNfcm9ib3QYDSABKAhSDXJlcXVpcmVzUm9ib3QSNwoYcmVxdWlyZXNfcm9ib3RfaGFzX3ZhbHVlGA4gASgIUhVyZXF1aXJlc1JvYm90SGFzVmFsdWUSPwoTbWFpbl9hcHBsaWFuY2VfdHlwZRgPIAEoDjIPLkdBcHBsaWFuY2VUeXBlUhFtYWluQXBwbGlhbmNlVHlwZRJJChhzZWNvbmRhcnlfYXBwbGlhbmNlX3R5cGUYECABKA4yDy5HQXBwbGlhbmNlVHlwZVIWc2Vjb25kYXJ5QXBwbGlhbmNlVHlwZRJKCiJzZWNvbmRhcnlfYXBwbGlhbmNlX3R5cGVfaGFzX3ZhbHVlGBEgASgIUh5zZWNvbmRhcnlBcHBsaWFuY2VUeXBlSGFzVmFsdWUSEgoEdGFncxgSIAMoCVIEdGFncxIdCgpleHRyYV90YWdzGBMgAygJUglleHRyYVRhZ3MSLwoUZXh0cmFfdGFnc19oYXNfdmFsdWUYFCABKAhSEWV4dHJhVGFnc0hhc1ZhbHVl');
@$core.Deprecated('Use gListOfRecipeDescriptor instead')
const GListOfRecipe$json = const {
  '1': 'GListOfRecipe',
  '2': const [
    const {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GRecipe',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfRecipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfRecipeDescriptor = $convert.base64Decode(
    'Cg1HTGlzdE9mUmVjaXBlEh4KBWl0ZW1zGAEgAygLMgguR1JlY2lwZVIFaXRlbXM=');
