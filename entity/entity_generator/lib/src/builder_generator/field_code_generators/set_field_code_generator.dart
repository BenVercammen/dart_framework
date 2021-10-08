import 'package:squarealfa_entity_annotations/squarealfa_entity_annotations.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';

class SetFieldCodeGenerator extends FieldCodeGenerator {
  SetFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, BuildBuilder buildBuilder)
      : super(fieldDescriptor, buildBuilder);

  @override
  String get fieldDeclaration =>
      '  $fieldType${fieldDescriptor.nullSuffix} ${fieldDescriptor.displayName};';

  @override
  String get fieldType => fieldDescriptor.parameterTypeHasEntityMapAnnotation &&
          !fieldDescriptor.parameterTypeIsEnum
      ? 'Set<\$${fieldDescriptor.parameterTypeName}Builder>'
      : super.fieldType;

  String get _setExpression => '''
        ${fieldDescriptor.isNullable ? 'entity.${fieldDescriptor.displayName} == null  ? null :' : ''}
        entity.${fieldDescriptor.valueName}.map((e) => 
          \$${fieldDescriptor.parameterTypeName}Builder.from${fieldDescriptor.parameterTypeName}(e)).toSet()''';

  @override
  String get toBuilderExpression =>
      fieldDescriptor.parameterTypeHasEntityMapAnnotation &&
              !fieldDescriptor.parameterTypeIsEnum
          ? _setExpression
          : 'entity.${fieldDescriptor.displayName}';

  @override
  String get constructorAssignment => fieldDescriptor.isNullable
      ? ''
      : '${fieldDescriptor.displayName} = ${fieldDescriptor.displayName} ?? {}';

  @override
  String get constructorStatement => '';

  @override
  String get constructorExpression => fieldDescriptor
              .parameterTypeHasEntityMapAnnotation &&
          !fieldDescriptor.parameterTypeIsEnum
      ? '''${fieldDescriptor.isNullable ? '${fieldDescriptor.displayName} == null ? null : ' : ''} Set.unmodifiable(${fieldDescriptor.valueName}.map((e) => e.build()))'''
      : fieldDescriptor.displayName;

  @override
  String get defaultProvided => ' ?? {}';

  @override
  bool get usesDefaultsProvided => false;
}
