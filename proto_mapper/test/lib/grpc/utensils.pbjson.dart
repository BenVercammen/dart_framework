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
const GKnifeType$json = const {
  '1': 'GKnifeType',
  '2': const [
    const {'1': 'G_KNIFE_TYPE_CHEFS_KNIFE', '2': 0},
    const {'1': 'G_KNIFE_TYPE_PARING_KNIFE', '2': 1},
    const {'1': 'G_KNIFE_TYPE_BREAD_KNIFE', '2': 2},
  ],
};

/// Descriptor for `GKnifeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gKnifeTypeDescriptor = $convert.base64Decode(
    'CgpHS25pZmVUeXBlEhwKGEdfS05JRkVfVFlQRV9DSEVGU19LTklGRRAAEh0KGUdfS05JRkVfVFlQRV9QQVJJTkdfS05JRkUQARIcChhHX0tOSUZFX1RZUEVfQlJFQURfS05JRkUQAg==');
@$core.Deprecated('Use gChefTypeDescriptor instead')
const GChefType$json = const {
  '1': 'GChefType',
  '2': const [
    const {'1': 'G_CHEF_TYPE_SENIOR_CHEF', '2': 0},
    const {'1': 'G_CHEF_TYPE_SOUS_CHEF', '2': 1},
    const {'1': 'G_CHEF_TYPE_PASTRY_CHEF', '2': 2},
    const {'1': 'G_CHEF_TYPE_FISH_CHEF', '2': 3},
  ],
};

/// Descriptor for `GChefType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gChefTypeDescriptor = $convert.base64Decode(
    'CglHQ2hlZlR5cGUSGwoXR19DSEVGX1RZUEVfU0VOSU9SX0NIRUYQABIZChVHX0NIRUZfVFlQRV9TT1VTX0NIRUYQARIbChdHX0NIRUZfVFlQRV9QQVNUUllfQ0hFRhACEhkKFUdfQ0hFRl9UWVBFX0ZJU0hfQ0hFRhAD');
@$core.Deprecated('Use gKnifeDescriptor instead')
const GKnife$json = const {
  '1': 'GKnife',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.GKnifeType',
      '10': 'type'
    },
  ],
};

/// Descriptor for `GKnife`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKnifeDescriptor = $convert.base64Decode(
    'CgZHS25pZmUSEgoEbmFtZRgBIAEoCVIEbmFtZRIfCgR0eXBlGAIgASgOMgsuR0tuaWZlVHlwZVIEdHlwZQ==');
@$core.Deprecated('Use gListOfKnifeDescriptor instead')
const GListOfKnife$json = const {
  '1': 'GListOfKnife',
  '2': const [
    const {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GKnife',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfKnife`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfKnifeDescriptor = $convert.base64Decode(
    'CgxHTGlzdE9mS25pZmUSHQoFaXRlbXMYASADKAsyBy5HS25pZmVSBWl0ZW1z');
@$core.Deprecated('Use gGarlicPressDescriptor instead')
const GGarlicPress$json = const {
  '1': 'GGarlicPress',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'machine_washable',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'machineWashable'
    },
  ],
};

/// Descriptor for `GGarlicPress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gGarlicPressDescriptor = $convert.base64Decode(
    'CgxHR2FybGljUHJlc3MSEgoEbmFtZRgBIAEoCVIEbmFtZRIpChBtYWNoaW5lX3dhc2hhYmxlGAIgASgIUg9tYWNoaW5lV2FzaGFibGU=');
@$core.Deprecated('Use gListOfGarlicPressDescriptor instead')
const GListOfGarlicPress$json = const {
  '1': 'GListOfGarlicPress',
  '2': const [
    const {
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
const GKitchen$json = const {
  '1': 'GKitchen',
  '2': const [
    const {
      '1': 'recipeList',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GRecipe',
      '10': 'recipeList'
    },
    const {
      '1': 'recipeMap',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.GKitchen.RecipeMapEntry',
      '10': 'recipeMap'
    },
    const {
      '1': 'nextInspectionDate',
      '3': 3,
      '4': 1,
      '5': 3,
      '10': 'nextInspectionDate'
    },
  ],
  '3': const [GKitchen_RecipeMapEntry$json],
};

@$core.Deprecated('Use gKitchenDescriptor instead')
const GKitchen_RecipeMapEntry$json = const {
  '1': 'RecipeMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.GRecipe',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `GKitchen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKitchenDescriptor = $convert.base64Decode(
    'CghHS2l0Y2hlbhIoCgpyZWNpcGVMaXN0GAEgAygLMgguR1JlY2lwZVIKcmVjaXBlTGlzdBI2CglyZWNpcGVNYXAYAiADKAsyGC5HS2l0Y2hlbi5SZWNpcGVNYXBFbnRyeVIJcmVjaXBlTWFwEi4KEm5leHRJbnNwZWN0aW9uRGF0ZRgDIAEoA1ISbmV4dEluc3BlY3Rpb25EYXRlGkYKDlJlY2lwZU1hcEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5Eh4KBXZhbHVlGAIgASgLMgguR1JlY2lwZVIFdmFsdWU6AjgB');
@$core.Deprecated('Use gListOfKitchenDescriptor instead')
const GListOfKitchen$json = const {
  '1': 'GListOfKitchen',
  '2': const [
    const {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GKitchen',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfKitchen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfKitchenDescriptor = $convert.base64Decode(
    'Cg5HTGlzdE9mS2l0Y2hlbhIfCgVpdGVtcxgBIAMoCzIJLkdLaXRjaGVuUgVpdGVtcw==');
@$core.Deprecated('Use gChefDescriptor instead')
const GChef$json = const {
  '1': 'GChef',
  '2': const [
    const {
      '1': 'favorite_recipe',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.GRecipe',
      '10': 'favoriteRecipe'
    },
    const {
      '1': 'favorite_recipe_has_value',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'favoriteRecipeHasValue'
    },
    const {
      '1': 'favorite_knife',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.GKnife',
      '10': 'favoriteKnife'
    },
    const {
      '1': 'favorite_knife_has_value',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'favoriteKnifeHasValue'
    },
    const {
      '1': 'favorite_appliance_type',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.GApplianceType',
      '10': 'favoriteApplianceType'
    },
    const {
      '1': 'favorite_words',
      '3': 6,
      '4': 3,
      '5': 9,
      '10': 'favoriteWords'
    },
    const {'1': 'birthdate', '3': 7, '4': 1, '5': 3, '10': 'birthdate'},
    const {'1': 'shelf_life', '3': 8, '4': 1, '5': 1, '10': 'shelfLife'},
    const {
      '1': 'shelf_life_has_value',
      '3': 9,
      '4': 1,
      '5': 8,
      '10': 'shelfLifeHasValue'
    },
  ],
};

/// Descriptor for `GChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gChefDescriptor = $convert.base64Decode(
    'CgVHQ2hlZhIxCg9mYXZvcml0ZV9yZWNpcGUYASABKAsyCC5HUmVjaXBlUg5mYXZvcml0ZVJlY2lwZRI5ChlmYXZvcml0ZV9yZWNpcGVfaGFzX3ZhbHVlGAIgASgIUhZmYXZvcml0ZVJlY2lwZUhhc1ZhbHVlEi4KDmZhdm9yaXRlX2tuaWZlGAMgASgLMgcuR0tuaWZlUg1mYXZvcml0ZUtuaWZlEjcKGGZhdm9yaXRlX2tuaWZlX2hhc192YWx1ZRgEIAEoCFIVZmF2b3JpdGVLbmlmZUhhc1ZhbHVlEkcKF2Zhdm9yaXRlX2FwcGxpYW5jZV90eXBlGAUgASgOMg8uR0FwcGxpYW5jZVR5cGVSFWZhdm9yaXRlQXBwbGlhbmNlVHlwZRIlCg5mYXZvcml0ZV93b3JkcxgGIAMoCVINZmF2b3JpdGVXb3JkcxIcCgliaXJ0aGRhdGUYByABKANSCWJpcnRoZGF0ZRIdCgpzaGVsZl9saWZlGAggASgBUglzaGVsZkxpZmUSLwoUc2hlbGZfbGlmZV9oYXNfdmFsdWUYCSABKAhSEXNoZWxmTGlmZUhhc1ZhbHVl');
@$core.Deprecated('Use gListOfChefDescriptor instead')
const GListOfChef$json = const {
  '1': 'GListOfChef',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GChef', '10': 'items'},
  ],
};

/// Descriptor for `GListOfChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfChefDescriptor = $convert.base64Decode(
    'CgtHTGlzdE9mQ2hlZhIcCgVpdGVtcxgBIAMoCzIGLkdDaGVmUgVpdGVtcw==');
@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory$json = const {
  '1': 'GInventory',
  '2': const [
    const {
      '1': 'number_of_things',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GInventory.NumberOfThingsEntry',
      '10': 'numberOfThings'
    },
    const {
      '1': 'recipes_by_name',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.GInventory.RecipesByNameEntry',
      '10': 'recipesByName'
    },
    const {'1': 'time_span', '3': 3, '4': 1, '5': 1, '10': 'timeSpan'},
    const {
      '1': 'time_span_has_value',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'timeSpanHasValue'
    },
  ],
  '3': const [
    GInventory_NumberOfThingsEntry$json,
    GInventory_RecipesByNameEntry$json
  ],
};

@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory_NumberOfThingsEntry$json = const {
  '1': 'NumberOfThingsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory_RecipesByNameEntry$json = const {
  '1': 'RecipesByNameEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.GRecipe',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `GInventory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gInventoryDescriptor = $convert.base64Decode(
    'CgpHSW52ZW50b3J5EkkKEG51bWJlcl9vZl90aGluZ3MYASADKAsyHy5HSW52ZW50b3J5Lk51bWJlck9mVGhpbmdzRW50cnlSDm51bWJlck9mVGhpbmdzEkYKD3JlY2lwZXNfYnlfbmFtZRgCIAMoCzIeLkdJbnZlbnRvcnkuUmVjaXBlc0J5TmFtZUVudHJ5Ug1yZWNpcGVzQnlOYW1lEhsKCXRpbWVfc3BhbhgDIAEoAVIIdGltZVNwYW4SLQoTdGltZV9zcGFuX2hhc192YWx1ZRgEIAEoCFIQdGltZVNwYW5IYXNWYWx1ZRpBChNOdW1iZXJPZlRoaW5nc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgFUgV2YWx1ZToCOAEaSgoSUmVjaXBlc0J5TmFtZUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5Eh4KBXZhbHVlGAIgASgLMgguR1JlY2lwZVIFdmFsdWU6AjgB');
@$core.Deprecated('Use gListOfInventoryDescriptor instead')
const GListOfInventory$json = const {
  '1': 'GListOfInventory',
  '2': const [
    const {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GInventory',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfInventory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfInventoryDescriptor = $convert.base64Decode(
    'ChBHTGlzdE9mSW52ZW50b3J5EiEKBWl0ZW1zGAEgAygLMgsuR0ludmVudG9yeVIFaXRlbXM=');
@$core.Deprecated('Use gPrecisionSubjectDescriptor instead')
const GPrecisionSubject$json = const {
  '1': 'GPrecisionSubject',
  '2': const [
    const {'1': 'date_property', '3': 1, '4': 1, '5': 3, '10': 'dateProperty'},
    const {
      '1': 'duration_property',
      '3': 2,
      '4': 1,
      '5': 1,
      '10': 'durationProperty'
    },
  ],
};

/// Descriptor for `GPrecisionSubject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gPrecisionSubjectDescriptor = $convert.base64Decode(
    'ChFHUHJlY2lzaW9uU3ViamVjdBIjCg1kYXRlX3Byb3BlcnR5GAEgASgDUgxkYXRlUHJvcGVydHkSKwoRZHVyYXRpb25fcHJvcGVydHkYAiABKAFSEGR1cmF0aW9uUHJvcGVydHk=');
@$core.Deprecated('Use gListOfPrecisionSubjectDescriptor instead')
const GListOfPrecisionSubject$json = const {
  '1': 'GListOfPrecisionSubject',
  '2': const [
    const {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GPrecisionSubject',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfPrecisionSubject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfPrecisionSubjectDescriptor =
    $convert.base64Decode(
        'ChdHTGlzdE9mUHJlY2lzaW9uU3ViamVjdBIoCgVpdGVtcxgBIAMoCzISLkdQcmVjaXNpb25TdWJqZWN0UgVpdGVtcw==');
@$core.Deprecated('Use nullableGKnifeTypeDescriptor instead')
const NullableGKnifeType$json = const {
  '1': 'NullableGKnifeType',
  '2': const [
    const {'1': 'has_value', '3': 1, '4': 1, '5': 8, '10': 'hasValue'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.GKnifeType',
      '10': 'value'
    },
  ],
};

/// Descriptor for `NullableGKnifeType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nullableGKnifeTypeDescriptor = $convert.base64Decode(
    'ChJOdWxsYWJsZUdLbmlmZVR5cGUSGwoJaGFzX3ZhbHVlGAEgASgIUghoYXNWYWx1ZRIhCgV2YWx1ZRgCIAEoDjILLkdLbmlmZVR5cGVSBXZhbHVl');
@$core.Deprecated('Use nullableGChefTypeDescriptor instead')
const NullableGChefType$json = const {
  '1': 'NullableGChefType',
  '2': const [
    const {'1': 'has_value', '3': 1, '4': 1, '5': 8, '10': 'hasValue'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.GChefType',
      '10': 'value'
    },
  ],
};

/// Descriptor for `NullableGChefType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nullableGChefTypeDescriptor = $convert.base64Decode(
    'ChFOdWxsYWJsZUdDaGVmVHlwZRIbCgloYXNfdmFsdWUYASABKAhSCGhhc1ZhbHVlEiAKBXZhbHVlGAIgASgOMgouR0NoZWZUeXBlUgV2YWx1ZQ==');
