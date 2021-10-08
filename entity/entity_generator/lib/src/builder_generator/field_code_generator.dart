import 'package:squarealfa_entity_annotations/squarealfa_entity_annotations.dart';

import 'field_code_generators/entity_field_code_generator.dart';
import 'field_code_generators/generic_field_code_generator.dart';
import 'field_code_generators/iterable_field_code_generator.dart';
import 'field_code_generators/list_field_code_generator.dart';
import 'field_code_generators/set_field_code_generator.dart';
import 'field_descriptor.dart';

abstract class FieldCodeGenerator {
  final FieldDescriptor fieldDescriptor;
  final BuildBuilder buildBuilder;

  String get constructorAssignment => '';

  FieldCodeGenerator(this.fieldDescriptor, this.buildBuilder);

  String get fieldType => fieldDescriptor.fieldElementTypeName;

  String get fieldDeclaration => fieldDescriptor.isNullable
      ? '  $fieldType? ${fieldDescriptor.displayName};'
      : '''
          $fieldType? \$${fieldDescriptor.displayName};
          $fieldType get ${fieldDescriptor.displayName} =>
              \$${fieldDescriptor.displayName} $defaultProvided;
          set ${fieldDescriptor.displayName}($fieldType value) => \$${fieldDescriptor.displayName} = value;
      ''';

  String get defaultProvided => !buildBuilder.useDefaultsProvider
      ? '!'
      : ' ?? _defaultsProvider.${fieldDescriptor.displayName}';

  bool get usesDefaultsProvided =>
      buildBuilder.useDefaultsProvider && !fieldDescriptor.isNullable;

  String get toBuilderMap =>
      '  ${fieldDescriptor.displayName}: $toBuilderExpression,';

  String get toBuilderExpression => 'entity.${fieldDescriptor.displayName}';

  String get constructorDeclaration => fieldDescriptor.isNullable
      ? 'this.${fieldDescriptor.displayName},'
      : '$fieldType? ${fieldDescriptor.displayName},';

  String get constructorStatement {
    if (fieldDescriptor.isNullable) return '';
    return '\$${fieldDescriptor.displayName} = ${fieldDescriptor.displayName};';
  }

  String get entityConstructorMap =>
      '${fieldDescriptor.displayName}: $constructorExpression,';

  String get constructorExpression => fieldDescriptor.displayName;

  factory FieldCodeGenerator.fromFieldDescriptor(
      FieldDescriptor fieldDescriptor, BuildBuilder buildBuilder) {
    if (fieldDescriptor.fieldElementType.isDartCoreList) {
      return ListFieldCodeGenerator(fieldDescriptor, buildBuilder);
    }
    if (fieldDescriptor.fieldElementType.isDartCoreSet) {
      return SetFieldCodeGenerator(fieldDescriptor, buildBuilder);
    }
    if (fieldDescriptor.fieldElementType.isDartCoreIterable) {
      return IterableFieldCodeGenerator(fieldDescriptor, buildBuilder);
    }
    if (!fieldDescriptor.typeIsEnum &&
        fieldDescriptor.typeHasEntityMapAnnotation) {
      return EntityFieldCodeGenerator(fieldDescriptor, buildBuilder);
    }
    return GenericFieldCodeGenerator(fieldDescriptor, buildBuilder);
  }
}
