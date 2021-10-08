import 'package:analyzer/dart/element/element.dart';
import 'package:defaults_provider_annotations/defaults_provider_annotations.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class FieldDescriptor extends FieldDescriptorBase {
  FieldDescriptor._(FieldElement fieldElement)
      : super.fromFieldElement(fieldElement);

  factory FieldDescriptor.fromFieldElement(FieldElement fieldElement) {
    return FieldDescriptor._(fieldElement);
  }

  bool get typeHasDefaultsProvider {
    var annotation = TypeChecker.fromRuntime(DefaultsProvider)
        .firstAnnotationOf(fieldElementType.element!);
    return annotation != null;
  }
}
