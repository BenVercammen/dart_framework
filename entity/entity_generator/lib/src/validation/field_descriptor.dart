import 'package:analyzer/dart/element/element.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_entity_annotations/squarealfa_entity_annotations.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class FieldDescriptor extends FieldElementDescriptorBase {
  FieldDescriptor._(FieldElement fieldElement) : super(fieldElement);

  factory FieldDescriptor.fromFieldElement(
    ClassElement classElement,
    FieldElement fieldElement,
  ) {
    return FieldDescriptor._(
      fieldElement,
    );
  }

  bool get typeIsValidatable {
    var annotation = TypeChecker.fromRuntime(Validatable)
        .firstAnnotationOf(fieldElementType.element!);
    return annotation != null;
  }

  bool get parameterTypeIsValidatable {
    var annotation = TypeChecker.fromRuntime(Validatable)
        .firstAnnotationOf(parameterType.element!);
    return annotation != null;
  }
}
