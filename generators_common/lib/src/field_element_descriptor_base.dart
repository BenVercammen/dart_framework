import 'package:analyzer/dart/element/element.dart';
import 'package:squarealfa_generators_common/src/field_descriptor_base.dart';

/// Enhanced information over a [FieldElement]
class FieldElementDescriptorBase extends FieldDescriptorBase {
  final FieldElement fieldElement;

  FieldElementDescriptorBase(this.fieldElement)
      : super.fromFieldElement(fieldElement);
}
