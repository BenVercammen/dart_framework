import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto_common.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class FieldDescriptor extends FieldDescriptorBase {
  final MapProto protoMapperAnnotation;
  final ProtoField? protoFieldAnnotation;
  final ProtoIgnore? protoIgnoreAnnotation;

  FieldDescriptor(
    this.protoMapperAnnotation, {
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
    FieldElement fieldElement,
    MapProto mapProtoBase,
  )   : protoMapperAnnotation = mapProtoBase,
        protoFieldAnnotation = _getProtoFieldAnnotation(fieldElement),
        protoIgnoreAnnotation = _getProtoIgnoreAnnotation(fieldElement),
        super.fromFieldElement(fieldElement);

  String get prefix => protoMapperAnnotation.prefix ?? '';

  @override
  bool get isRepeated => listParameterType != null;
  bool get _hasProtoIgnore => protoIgnoreAnnotation != null;
  bool get _hasProtoField => protoFieldAnnotation != null;

  String get protoFieldName => protoFieldAnnotation?.name ?? displayName;

  bool get isProtoIncluded =>
      !_hasProtoIgnore &&
      (protoMapperAnnotation.includeFieldsByDefault || _hasProtoField);

  bool get typeHasMapProtoAnnotation => fieldElementType.hasMapProto;

  @override
  bool get parameterTypeIsEnum =>
      parameterType.element!.kind == ElementKind.ENUM;

  TimePrecision get dateTimePrecision =>
      protoMapperAnnotation.dateTimePrecision ?? TimePrecision.microseconds;

  TimePrecision get durationPrecision =>
      protoMapperAnnotation.durationPrecision ?? TimePrecision.microseconds;
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
