import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto_common.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';
import 'package:recase/recase.dart';

class FieldDescriptor extends FieldDescriptorBase {
  final Proto protoAnnotation;
  final ProtoField? protoFieldAnnotation;
  final ProtoIgnore? protoIgnoreAnnotation;
  final bool forEnum;

  FieldDescriptor(
    this.protoAnnotation, {
    required String displayName,
    required String name,
    required bool isFinal,
    required DartType fieldElementType,
    this.protoFieldAnnotation,
    this.protoIgnoreAnnotation,
    this.forEnum = false,
  }) : super(
          displayName: displayName,
          name: name,
          isFinal: isFinal,
          fieldElementType: fieldElementType,
        );

  FieldDescriptor.fromFieldElement(
      FieldElement fieldElement, this.protoAnnotation, this.forEnum)
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

  String get protoFieldName {
    if (null != protoFieldAnnotation && null != protoFieldAnnotation?.name) {
      return protoFieldAnnotation!.name!;
    }
    if (useProtoFieldNamingConventions) {
      if (forEnum) {
        return '${prefix}_${fieldElementTypeName}_$name'
            .snakeCase
            .toUpperCase();
      }
      return name.snakeCase;
    }
    return name;
  }

  bool get isProtoIncluded =>
      !_hasProtoIgnore &&
      (protoAnnotation.includeFieldsByDefault || _hasProtoField);

  bool get useProtoFieldNamingConventions =>
      protoAnnotation.useProtoFieldNamingConventions ?? true;

  bool get typeHasProtoAnnotation => fieldElementType.hasMapProto;

  int? get number => protoFieldAnnotation?.number;
  int? get hasValueNumber => protoFieldAnnotation?.hasValueNumber;

  @override
  bool get parameterTypeIsEnum =>
      parameterType.element!.kind == ElementKind.ENUM;
}

const _protoFieldChecker = TypeChecker.fromRuntime(ProtoField);

ProtoField? _getProtoFieldAnnotation(FieldElement fieldElement) {
  final annotation = _protoFieldChecker.getFieldAnnotation(fieldElement);
  if (annotation == null) {
    return null;
  }
  final name = annotation.getField('name')!.toStringValue();
  final numberObj = annotation.getField('number')!;
  final hasValueNumberObj = annotation.getField('hasValueNumber')!;

  final number = numberObj.isNull ? null : numberObj.toIntValue();

  final hasValueNumber =
      hasValueNumberObj.isNull ? null : hasValueNumberObj.toIntValue();

  var ret = ProtoField(
    name: name,
    number: number,
    hasValueNumber: hasValueNumber,
  );
  return ret;
}

const _protoIgnoreChecker = TypeChecker.fromRuntime(ProtoIgnore);
ProtoIgnore? _getProtoIgnoreAnnotation(FieldElement fieldElement) =>
    _protoIgnoreChecker.getFieldAnnotation(fieldElement) == null
        ? null
        : ProtoIgnore();
