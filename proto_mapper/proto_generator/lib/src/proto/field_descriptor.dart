import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto_common.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class FieldDescriptor extends FieldDescriptorBase {
  final Proto protoAnnotation;
  final ProtoField? protoFieldAnnotation;
  final ProtoIgnore? protoIgnoreAnnotation;

  FieldDescriptor(
    this.protoAnnotation, {
    required String displayName,
    required String name,
    required bool isFinal,
    required DartType fieldElementType,
    this.protoFieldAnnotation,
    this.protoIgnoreAnnotation,
  }) : super(
          displayName: displayName,
          name: name,
          isFinal: isFinal,
          fieldElementType: fieldElementType,
        );

  FieldDescriptor.fromFieldElement(
      FieldElement fieldElement, this.protoAnnotation)
      : protoFieldAnnotation = _getProtoFieldAnnotation(fieldElement),
        protoIgnoreAnnotation = _getProtoIgnoreAnnotation(fieldElement),
        super.fromFieldElement(fieldElement);

  String get prefix => protoAnnotation.prefix ?? '';

  @override
  bool get isRepeated =>
      listParameterType != null ||
      setParameterType != null ||
      iterableParameterType != null;
  bool get _hasProtoIgnore => protoIgnoreAnnotation != null;
  bool get _hasProtoField => protoFieldAnnotation != null;

  String get protoFieldName => protoFieldAnnotation?.name ?? name;

  bool get isProtoIncluded =>
      !_hasProtoIgnore &&
      (protoAnnotation.includeFieldsByDefault || _hasProtoField);

  bool get typeHasProtoAnnotation => fieldElementType.hasMapProto;

  @override
  bool get parameterTypeIsEnum =>
      parameterType.element!.kind == ElementKind.ENUM;
}

const _protoFieldChecker = TypeChecker.fromRuntime(ProtoField);

ProtoField? _getProtoFieldAnnotation(FieldElement fieldElement) {
  var annotation = _protoFieldChecker.getFieldAnnotation(fieldElement);
  if (annotation == null) return null;
  var name = annotation.getField('name')!.toStringValue();
  var ret = ProtoField(name: name);
  return ret;
}

const _protoIgnoreChecker = TypeChecker.fromRuntime(ProtoIgnore);
ProtoIgnore? _getProtoIgnoreAnnotation(FieldElement fieldElement) =>
    _protoIgnoreChecker.getFieldAnnotation(fieldElement) == null
        ? null
        : ProtoIgnore();
