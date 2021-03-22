import '../field_code_generator.dart';
import '../field_descriptor.dart';

class GenericFieldCodeGenerator extends FieldCodeGenerator {
  GenericFieldCodeGenerator(
      FieldDescriptor fieldDescriptor, bool hasDefaultsProvider)
      : super(fieldDescriptor, hasDefaultsProvider);

  String fromMapExpression(String sourceExpression) =>
      '$sourceExpression as ${fieldDescriptor.fieldElementTypeName}${fieldDescriptor.isNullable ? '?' : ''}';

  String get fromNullableMapExpression =>
      fromMapExpression('map[\'$mapName\']');
}
