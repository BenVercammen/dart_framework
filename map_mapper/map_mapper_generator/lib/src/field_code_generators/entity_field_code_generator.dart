import '../field_code_generator.dart';
import '../field_descriptor.dart';

class EntityFieldCodeGenerator extends FieldCodeGenerator {
  EntityFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, bool hasDefaultsProvider)
      : super(fieldDescriptor, hasDefaultsProvider);

  @override
  String get toMapExpression =>
      ''' const \$${fieldDescriptor.fieldElementTypeName}MapMapper().toMap(instance.$fieldName)''';

  @override
  String get toNullableMapExpression => '''
      (instance.$fieldName == null ? null :
      const \$${fieldDescriptor.fieldElementTypeName}MapMapper().toMap(instance.$fieldName!)
      )''';

  @override
  String fromMapExpression(String sourceExpression) =>
      ''' const \$${fieldDescriptor.fieldElementTypeName}MapMapper().fromMap($sourceExpression)''';

  @override
  String get fromNullableMapExpression => '''
  (map['$mapName'] != null
      ? const \$${fieldDescriptor.fieldElementTypeName}MapMapper().fromMap(map['$mapName'])
      : null)''';

  @override
  String get fieldNamesClassGetter =>
      '''\$${fieldDescriptor.fieldElementTypeName}FieldNames get $fieldName =>
             \$${fieldDescriptor.fieldElementTypeName}FieldNames.sub(prefix + _$fieldName); ''';
}
