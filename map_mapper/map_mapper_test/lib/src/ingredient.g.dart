// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $IngredientMapMapper extends MapMapper<Ingredient> {
  const $IngredientMapMapper();

  @override
  Ingredient fromMap(Map<String, dynamic> map) {
    final $kh = const DefaultKeyHandler();

    return Ingredient(
      key: $kh.keyFromMap(map, 'key'),
      description: map['description'] as String,
      quantity: Decimal.parse(map['quantity']),
      precision: map['precision'] as double,
      cookingDuration: Duration(microseconds: map['cookingDuration']),
      mainComponentKey: $kh.keyFromMap(map, 'mainComponentKey'),
      mainComponent: const $ComponentMapMapper().fromMap(map['mainComponent']),
      otherComponents: List<Component>.unmodifiable(map['otherComponents']
          .map((e) => const $ComponentMapMapper().fromMap(e))),
      alternativeComponent: (map['alternativeComponent'] != null
          ? const $ComponentMapMapper().fromMap(map['alternativeComponent'])
          : null),
      secondaryComponents: map['secondaryComponents'] == null
          ? null
          : List<Component>.unmodifiable(map['secondaryComponents']
              .map((e) => const $ComponentMapMapper().fromMap(e))),
    );
  }

  @override
  Map<String, dynamic> toMap(Ingredient instance) {
    final $kh = const DefaultKeyHandler();
    final map = <String, dynamic>{};

    $kh.keyToMap(map, instance.key, 'key');
    map['description'] = instance.description;
    map['quantity'] = instance.quantity.toString();
    map['precision'] = instance.precision;
    map['cookingDuration'] = instance.cookingDuration.inMicroseconds;
    $kh.keyToMap(map, instance.mainComponentKey, 'mainComponentKey');
    map['mainComponent'] =
        const $ComponentMapMapper().toMap(instance.mainComponent);
    map['otherComponents'] = instance.otherComponents
        .map((e) => const $ComponentMapMapper().toMap(e))
        .toList();
    map['alternativeComponent'] = (instance.alternativeComponent == null
        ? null
        : const $ComponentMapMapper().toMap(instance.alternativeComponent!));
    map['secondaryComponents'] = instance.secondaryComponents == null
        ? null
        : instance.secondaryComponents!
            .map((e) => const $ComponentMapMapper().toMap(e))
            .toList();

    return map;
  }
}

extension $IngredientMapExtension on Ingredient {
  Map<String, dynamic> toMap() => const $IngredientMapMapper().toMap(this);
  static Ingredient fromMap(Map<String, dynamic> map) =>
      const $IngredientMapMapper().fromMap(map);
}

extension $MapIngredientExtension on Map<String, dynamic> {
  Ingredient toIngredient() => const $IngredientMapMapper().fromMap(this);
}

class $IngredientFieldNames {
  final $kh = const DefaultKeyHandler();
  final String fieldName;
  final String prefix;

  $IngredientFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $IngredientFieldNames()
      : fieldName = '',
        prefix = '';

  static const _key = 'key';
  String get key => prefix + $kh.fieldNameToMapKey(_key);
  static const _description = 'description';
  String get description => prefix + _description;
  static const _quantity = 'quantity';
  String get quantity => prefix + _quantity;
  static const _precision = 'precision';
  String get precision => prefix + _precision;
  static const _cookingDuration = 'cookingDuration';
  String get cookingDuration => prefix + _cookingDuration;
  static const _mainComponentKey = 'mainComponentKey';
  String get mainComponentKey =>
      prefix + $kh.fieldNameToMapKey(_mainComponentKey);
  static const _mainComponent = 'mainComponent';
  $ComponentFieldNames get mainComponent =>
      $ComponentFieldNames.sub(prefix + _mainComponent);
  static const _otherComponents = 'otherComponents';
  $ComponentFieldNames get otherComponents =>
      $ComponentFieldNames.sub(prefix + _otherComponents);

  static const _alternativeComponent = 'alternativeComponent';
  $ComponentFieldNames get alternativeComponent =>
      $ComponentFieldNames.sub(prefix + _alternativeComponent);
  static const _secondaryComponents = 'secondaryComponents';
  $ComponentFieldNames get secondaryComponents =>
      $ComponentFieldNames.sub(prefix + _secondaryComponents);

  @override
  String toString() => fieldName;
}
