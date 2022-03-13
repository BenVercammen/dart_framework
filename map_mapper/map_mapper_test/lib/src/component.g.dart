// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $ComponentMapMapper extends MapMapper<Component> {
  const $ComponentMapMapper();

  @override
  Component fromMap(Map<String, dynamic> map) {
    return Component(
      description: map['description'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(Component instance) {
    final map = <String, dynamic>{};

    map['description'] = instance.description;

    return map;
  }
}

extension $ComponentMapExtension on Component {
  Map<String, dynamic> toMap() => const $ComponentMapMapper().toMap(this);
  static Component fromMap(Map<String, dynamic> map) =>
      const $ComponentMapMapper().fromMap(map);
}

extension $MapComponentExtension on Map<String, dynamic> {
  Component toComponent() => const $ComponentMapMapper().fromMap(this);
}

class $ComponentFieldNames {
  final String fieldName;
  final String prefix;

  $ComponentFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $ComponentFieldNames()
      : fieldName = '',
        prefix = '';

  static const _description = 'description';
  String get description => prefix + _description;

  @override
  String toString() => fieldName;
}
