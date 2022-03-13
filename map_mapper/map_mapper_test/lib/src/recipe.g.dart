// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $RecipeMapMapper extends MapMapper<Recipe> {
  const $RecipeMapMapper();

  @override
  Recipe fromMap(Map<String, dynamic> map) {
    final $kh = const DefaultKeyHandler();

    return Recipe(
      key: $kh.keyFromMap(map, 'key'),
      title: map['title'] as String,
      description: map['description'] as String?,
      categoryKey: $kh.keyFromMap(map, 'categoryKey'),
      secondaryCategoryKey: map['secondaryCategoryKey'] == null
          ? null
          : $kh.keyFromMap(map, 'secondaryCategoryKey'),
      category: const $CategoryMapMapper().fromMap(map['category']),
      ingredients: List<Ingredient>.unmodifiable(map['ingredients']
          .map((e) => const $IngredientMapMapper().fromMap(e))),
      publishDate: DateTime.fromMicrosecondsSinceEpoch(map['publishDate']),
      expiryDate: map['expiryDate'] == null
          ? null
          : DateTime.fromMicrosecondsSinceEpoch(map['expiryDate']),
      preparationDuration: Duration(microseconds: map['preparationDuration']),
      totalDuration: map['totalDuration'] == null
          ? null
          : Duration(microseconds: map['totalDuration']),
      isPublished: map['isPublished'] as bool,
      requiresRobot: map['requiresRobot'] as bool?,
      mainApplianceType: ApplianceType.values[map['mainApplianceType'] as int],
      secondaryApplianceType: map['secondaryApplianceType'] == null
          ? null
          : ApplianceType.values[map['secondaryApplianceType'] as int],
      tags: List<String>.unmodifiable(map['tags']),
      extraTags: map['extraTags'] == null
          ? null
          : List<String>.unmodifiable(map['extraTags']),
    );
  }

  @override
  Map<String, dynamic> toMap(Recipe instance) {
    final $kh = const DefaultKeyHandler();
    final map = <String, dynamic>{};

    $kh.keyToMap(map, instance.key, 'key');
    map['title'] = instance.title;
    map['description'] = instance.description;
    $kh.keyToMap(map, instance.categoryKey, 'categoryKey');
    $kh.keyToMap(
        map, instance.secondaryCategoryKey ?? '', 'secondaryCategoryKey');
    map['category'] = const $CategoryMapMapper().toMap(instance.category);
    map['ingredients'] = instance.ingredients
        .map((e) => const $IngredientMapMapper().toMap(e))
        .toList();
    map['publishDate'] = instance.publishDate.microsecondsSinceEpoch;
    map['expiryDate'] = instance.expiryDate?.microsecondsSinceEpoch;
    map['preparationDuration'] = instance.preparationDuration.inMicroseconds;
    map['totalDuration'] = instance.totalDuration?.inMicroseconds;
    map['isPublished'] = instance.isPublished;
    map['requiresRobot'] = instance.requiresRobot;
    map['mainApplianceType'] = instance.mainApplianceType.index;
    map['secondaryApplianceType'] = instance.secondaryApplianceType?.index;
    map['tags'] = instance.tags;
    map['extraTags'] = instance.extraTags;

    return map;
  }
}

extension $RecipeMapExtension on Recipe {
  Map<String, dynamic> toMap() => const $RecipeMapMapper().toMap(this);
  static Recipe fromMap(Map<String, dynamic> map) =>
      const $RecipeMapMapper().fromMap(map);
}

extension $MapRecipeExtension on Map<String, dynamic> {
  Recipe toRecipe() => const $RecipeMapMapper().fromMap(this);
}

class $RecipeFieldNames {
  final $kh = const DefaultKeyHandler();
  final String fieldName;
  final String prefix;

  $RecipeFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $RecipeFieldNames()
      : fieldName = '',
        prefix = '';

  static const _key = 'key';
  String get key => prefix + $kh.fieldNameToMapKey(_key);
  static const _title = 'title';
  String get title => prefix + _title;
  static const _description = 'description';
  String get description => prefix + _description;
  static const _categoryKey = 'categoryKey';
  String get categoryKey => prefix + $kh.fieldNameToMapKey(_categoryKey);
  static const _secondaryCategoryKey = 'secondaryCategoryKey';
  String get secondaryCategoryKey =>
      prefix + $kh.fieldNameToMapKey(_secondaryCategoryKey);
  static const _category = 'category';
  $CategoryFieldNames get category =>
      $CategoryFieldNames.sub(prefix + _category);
  static const _ingredients = 'ingredients';
  $IngredientFieldNames get ingredients =>
      $IngredientFieldNames.sub(prefix + _ingredients);

  static const _publishDate = 'publishDate';
  String get publishDate => prefix + _publishDate;
  static const _expiryDate = 'expiryDate';
  String get expiryDate => prefix + _expiryDate;
  static const _preparationDuration = 'preparationDuration';
  String get preparationDuration => prefix + _preparationDuration;
  static const _totalDuration = 'totalDuration';
  String get totalDuration => prefix + _totalDuration;
  static const _isPublished = 'isPublished';
  String get isPublished => prefix + _isPublished;
  static const _requiresRobot = 'requiresRobot';
  String get requiresRobot => prefix + _requiresRobot;
  static const _mainApplianceType = 'mainApplianceType';
  String get mainApplianceType => prefix + _mainApplianceType;
  static const _secondaryApplianceType = 'secondaryApplianceType';
  String get secondaryApplianceType => prefix + _secondaryApplianceType;
  static const _tags = 'tags';
  String get tags => prefix + _tags;
  static const _extraTags = 'extraTags';
  String get extraTags => prefix + _extraTags;

  @override
  String toString() => fieldName;
}
