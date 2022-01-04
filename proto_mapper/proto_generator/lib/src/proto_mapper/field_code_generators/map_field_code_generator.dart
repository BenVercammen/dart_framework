import 'package:analyzer/dart/element/type.dart';
import 'package:proto_generator/src/proto_common.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';

class MapFieldCodeGenerator extends FieldCodeGenerator {
  MapFieldCodeGenerator(
    FieldDescriptor fieldDescriptor, {
    String refName = FieldCodeGenerator.defaultRefName,
    String protoRefName = FieldCodeGenerator.defaultProtoRefName,
  }) : super(
          fieldDescriptor,
          refName: refName,
          protoRefName: protoRefName,
        );

  String get _valueToProto {
    var typeArguments =
        (fieldDescriptor.fieldElementType as InterfaceType).typeArguments;
    final keyFieldTypeName = typeArguments[0];
    final valueFieldTypeName = typeArguments[1];

    final keyToProto = _toProto('k', keyFieldTypeName);
    final valueToProto = _toProto('v', valueFieldTypeName);

    return '''MapEntry($keyToProto, $valueToProto)''';
  }

  String _toProto(String parameterName, DartType parameterType) {
    if (parameterType.isDartCoreBool ||
        parameterType.isDartCoreDouble ||
        parameterType.isDartCoreInt ||
        parameterType.isDartCoreString) {
      return parameterName;
    }
    return collectionValueToProto(
        fieldDescriptor, parameterType, parameterName);
  }

  String get _toProtoConversion {
    return '.map((k, v) => $_valueToProto)';
  }

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''        
      $protoRef$protoFieldName
        .addAll($ref$fieldName${_toProtoConversion != '' ? '?' : ''}$_toProtoConversion ?? {});
        $hasValueToProtoMap;
      '''
      : '''
        $protoRef$protoFieldName
          .addAll($ref$fieldName$_toProtoConversion);

      ''';

  String _toValue(String parameterName, DartType parameterType) {
    if (parameterType.isDartCoreBool ||
        parameterType.isDartCoreDouble ||
        parameterType.isDartCoreInt ||
        parameterType.isDartCoreString) {
      return parameterName;
    }
    return collectionProtoToValue(
        fieldDescriptor, parameterType, parameterName);
  }

  String get _protoToValue {
    var typeArguments =
        (fieldDescriptor.fieldElementType as InterfaceType).typeArguments;
    final keyFieldTypeName = typeArguments[0];
    final valueFieldTypeName = typeArguments[1];

    final keyToProto = _toValue('k', keyFieldTypeName);
    final valueToProto = _toValue('v', valueFieldTypeName);

    return '''MapEntry($keyToProto, $valueToProto)''';
  }

  @override
  String get fromProtoNonNullableExpression =>
      '''$ref$protoFieldName.map((k, v) => $_protoToValue)''';
}
