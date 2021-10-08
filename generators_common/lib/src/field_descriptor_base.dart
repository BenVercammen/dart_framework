import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';

/// Enhanced information over a [FieldElement]
class FieldDescriptorBase {
  FieldDescriptorBase.fromFieldElement(FieldElement fieldElement)
      : displayName = fieldElement.displayName,
        name = fieldElement.name,
        isFinal = fieldElement.isFinal,
        fieldElementType = fieldElement.type;

  FieldDescriptorBase({
    required this.displayName,
    required this.name,
    required this.isFinal,
    required this.fieldElementType,
  });

  /// The displayName of the field element.
  final String displayName;

  final String name;

  final bool isFinal;

  /// Gets a non-nullable value representation of the field.
  ///
  /// When the field is not a nullable field, this will
  /// simply returns the field's name. Otherwise, it will
  /// return the field's name followed by !.
  String get valueName => '$displayName${isNullable ? '!' : ''}';

  /// Returns the type of the field element
  final DartType fieldElementType;

  /// Returns the name of the type of the field element
  String get fieldElementTypeName =>
      fieldElementType.getDisplayString(withNullability: false);

  /// When the field element is a List, returns the type of List element
  DartType? get listParameterType =>
      fieldElementType.isDartCoreList && fieldElementType is ParameterizedType
          ? (fieldElementType as ParameterizedType).typeArguments.first
          : null;

  DartType? get iterableParameterType => fieldElementType.isDartCoreIterable &&
          fieldElementType is ParameterizedType
      ? (fieldElementType as ParameterizedType).typeArguments.first
      : null;

  DartType? get setParameterType =>
      fieldElementType.isDartCoreSet && fieldElementType is ParameterizedType
          ? (fieldElementType as ParameterizedType).typeArguments.first
          : null;

  /// Returns the list element type when the field is a list and
  /// returns the field element when otherwise
  DartType get itemType =>
      listParameterType ??
      setParameterType ??
      iterableParameterType ??
      fieldElementType;

  /// Returns true when the field is a list
  bool get isRepeated => listParameterType != null || setParameterType != null;

  /// Returns true when the field is an enum
  bool get typeIsEnum => fieldElementType.element!.kind == ElementKind.ENUM;

  /// Returns true when the field is a nullable type
  bool get isNullable =>
      fieldElementType.nullabilitySuffix == NullabilitySuffix.question;

  /// Returns the ? character when the field is a nullable type. Otherwise,
  /// returns an empty string
  String get nullSuffix => isNullable ? '?' : '';

  /// Returns an empty string when the field is a nullable, otherwise
  /// returns 'required'
  String get requiredPrefix => isNullable ? '' : ' required ';

  /// When the field element type is a generic, returns the
  /// first type parameter type
  DartType get parameterType {
    var pt = fieldElementType as ParameterizedType;
    var ret = pt.typeArguments[0];
    return ret;
  }

  /// Returns the name of the field using a Pascal Case
  String get pascalName {
    if (displayName == '') {
      return displayName;
    }
    return '${displayName.substring(0, 1).toUpperCase()}${displayName.substring(1)}';
  }

  /// When the field element type is a generic, returns the
  /// firt type parameter type name
  String get parameterTypeName =>
      parameterType.getDisplayString(withNullability: false);

  /// When the field element type is a generic, returns
  /// a value indicating whether the first type parameter is an enum
  bool get parameterTypeIsEnum =>
      parameterType.element!.kind == ElementKind.ENUM;
}
