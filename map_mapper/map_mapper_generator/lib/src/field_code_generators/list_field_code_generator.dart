import '../field_code_generator.dart';
import '../field_descriptor.dart';

class ListFieldCodeGenerator extends FieldCodeGenerator {
  ListFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, bool hasDefaultsProvider)
      : super(fieldDescriptor, hasDefaultsProvider);

  String _toMapExpression(bool isNullable) {
    if (fieldDescriptor.parameterTypeHasMapMapAnnotation) {
      final nullEscape = isNullable
          ? 'instance.$fieldName == null ? null : instance.$fieldName!'
          : 'instance.$fieldName';
      return '''$nullEscape.map((e) => const \$${fieldDescriptor.parameterTypeName}MapMapper().toMap(e)).toList()''';
    }
    return '''instance.$fieldName${fieldDescriptor.fieldElementType.isDartCoreList ? '' : isNullable ? '?.toList()' : '.toList()'}''';
  }

  @override
  String get fieldNamesClassGetter =>
      fieldDescriptor.parameterTypeHasMapMapAnnotation &&
              !fieldDescriptor.parameterTypeIsEnum
          ? ''' 
        \$${fieldDescriptor.parameterTypeName}FieldNames get $fieldName =>
             \$${fieldDescriptor.parameterTypeName}FieldNames.sub(prefix + _$fieldName);
        '''
          : super.fieldNamesClassGetter;

  @override
  String get toMapExpression => _toMapExpression(false);

  @override
  String get toNullableMapExpression => _toMapExpression(true);

  String get _fromMapConversion {
    if (fieldDescriptor.parameterTypeHasMapMapAnnotation) {
      return '''.map((e) => const \$${fieldDescriptor.parameterTypeName}MapMapper().fromMap(e))''';
    }
    return '';
  }

  @override
  String fromMapExpression(String sourceExpression) =>
      '''List<${fieldDescriptor.parameterTypeName}>.unmodifiable($sourceExpression$_fromMapConversion)''';

  @override
  String get fromNullableMapExpression =>
      '''map['$fieldName'] == null ? null : ${fromMapExpression('map[\'$fieldName\']')}''';
}
