// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $CategoryMapMapper extends MapMapper<Category> {
  const $CategoryMapMapper();

  @override
  Category fromMap(Map<String, dynamic> map) {
    final $kh = const DefaultKeyHandler();

    return Category(
      id: $kh.keyFromMap(map, 'id'),
      title: map['title'] as String,
      mainComponentId: $kh.keyFromMap(map, 'mainComponentId'),
      mainComponent: const $ComponentMapMapper().fromMap(map['mainComponent']),
      alternativeComponent: (map['alternativeComponent'] != null
          ? const $ComponentMapMapper().fromMap(map['alternativeComponent'])
          : null),
      otherComponents: List<Component>.unmodifiable(map['otherComponents']
          .map((e) => const $ComponentMapMapper().fromMap(e))),
      secondaryComponents: map['secondaryComponents'] == null
          ? null
          : List<Component>.unmodifiable(map['secondaryComponents']
              .map((e) => const $ComponentMapMapper().fromMap(e))),
    );
  }

  @override
  Map<String, dynamic> toMap(Category instance) {
    final $kh = const DefaultKeyHandler();
    final map = <String, dynamic>{};

    $kh.keyToMap(map, instance.id, 'id');
    map['title'] = instance.title;
    $kh.keyToMap(map, instance.mainComponentId, 'mainComponentId');
    map['mainComponent'] =
        const $ComponentMapMapper().toMap(instance.mainComponent);
    map['alternativeComponent'] = (instance.alternativeComponent == null
        ? null
        : const $ComponentMapMapper().toMap(instance.alternativeComponent!));
    map['otherComponents'] = instance.otherComponents
        .map((e) => const $ComponentMapMapper().toMap(e))
        .toList();
    map['secondaryComponents'] = instance.secondaryComponents == null
        ? null
        : instance.secondaryComponents!
            .map((e) => const $ComponentMapMapper().toMap(e))
            .toList();

    return map;
  }
}

extension $CategoryMapExtension on Category {
  Map<String, dynamic> toMap() => const $CategoryMapMapper().toMap(this);
  static Category fromMap(Map<String, dynamic> map) =>
      const $CategoryMapMapper().fromMap(map);
}

extension $MapCategoryExtension on Map<String, dynamic> {
  Category toCategory() => const $CategoryMapMapper().fromMap(this);
}

class $CategoryFieldNames {
  final $kh = const DefaultKeyHandler();
  final String fieldName;
  final String prefix;

  $CategoryFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $CategoryFieldNames()
      : fieldName = '',
        prefix = '';

  static const _id = 'id';
  String get id => prefix + $kh.fieldNameToMapKey(_id);
  static const _title = 'title';
  String get title => prefix + _title;
  static const _mainComponentId = 'mainComponentId';
  String get mainComponentId =>
      prefix + $kh.fieldNameToMapKey(_mainComponentId);
  static const _mainComponent = 'mainComponent';
  $ComponentFieldNames get mainComponent =>
      $ComponentFieldNames.sub(prefix + _mainComponent);
  static const _alternativeComponent = 'alternativeComponent';
  $ComponentFieldNames get alternativeComponent =>
      $ComponentFieldNames.sub(prefix + _alternativeComponent);
  static const _otherComponents = 'otherComponents';
  $ComponentFieldNames get otherComponents =>
      $ComponentFieldNames.sub(prefix + _otherComponents);

  static const _secondaryComponents = 'secondaryComponents';
  $ComponentFieldNames get secondaryComponents =>
      $ComponentFieldNames.sub(prefix + _secondaryComponents);

  @override
  String toString() => fieldName;
}
