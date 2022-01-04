import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:decimal/decimal.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/field_descriptor.dart' as protofield;
import 'package:proto_generator/src/proto_mapper/field_descriptor.dart'
    as mapperfield;
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';

import 'proto/field_code_generator.dart';
import 'proto/field_code_generators/external_proto_name.dart';

String createFieldDeclarations(
  Iterable<protofield.FieldDescriptor> fieldDescriptors,
  List<String> externalProtoNames,
) {
  final fieldBuffer = StringBuffer();
  final lineNumbers = fieldDescriptors
      .where((fd) =>
          fd.number != null || (fd.isNullable && fd.hasValueNumber != null))
      .expand((fd) => [
            if (fd.number != null) fd.number!,
            if (fd.isNullable && fd.hasValueNumber != null) fd.hasValueNumber!,
          ])
      .toList();

  for (var fieldDescriptor in fieldDescriptors) {
    // final num = fieldDescriptor.number ?? _nextAvailable(lineNumbers);
    // lineNumbers.add(num);
    // final hasValueNum = null as int?;

    var fieldCodeGenerator =
        FieldCodeGenerator.fromFieldDescriptor(fieldDescriptor, lineNumbers);

    var fieldLine = fieldCodeGenerator.fieldLine;
    fieldBuffer.writeln(
        '  ${fieldDescriptor.isRepeated ? 'repeated ' : ''}$fieldLine');
    if (fieldDescriptor.isNullable) {
      fieldBuffer.writeln('  ${fieldCodeGenerator.hasValueLine}');
    }

    if (fieldCodeGenerator is! ExternalProtoNames) continue;
    var externalProtoNames2 =
        (fieldCodeGenerator as ExternalProtoNames).externalProtoNames;
    if (externalProtoNames2 != null) {
      for (String externalProtoName in externalProtoNames2) {
        if (!externalProtoNames.contains(externalProtoName)) {
          externalProtoNames.add(externalProtoName);
        }
      }
    }
  }

  return fieldBuffer.toString();
}

_nextAvailable(List<int> numbers) {
  // Compute XOR of all the elements in the array
  int xor = 0;
  for (final i in numbers) {
    xor = xor ^ i;
  }

  // Compute XOR of all the elements from 1 to `n+1`
  final n = numbers.length;
  for (int i = 1; i <= n + 1; i++) {
    xor = xor ^ i;
  }

  return xor;
}

void main() {
  final x = <int>[];
  final avail = _nextAvailable(x);
  print(avail);
}

extension ProtoDartTypeExtension on DartType {
  bool get hasMapProto {
    if (element == null) return false;
    final ret =
        TypeChecker.fromRuntime(MapProto).firstAnnotationOf(element!) != null;
    return ret;
  }

  bool get hasProto {
    if (element == null) return false;
    final ret =
        TypeChecker.fromRuntime(Proto).firstAnnotationOf(element!) != null;
    return ret;
  }

  String get packageName {
    final element = this.element;
    if (element == null) return '';
    var annotation = TypeChecker.fromRuntime(Proto).firstAnnotationOf(element);

    var packageName =
        annotation?.getField('packageName')?.toStringValue() ?? '';
    return packageName;
  }
}

extension ProtoMethodElementExtension on MethodElement {
  bool get hasMapProto {
    final alias = type.alias;
    if (alias == null) return false;
    final ret =
        TypeChecker.fromRuntime(MapProto).firstAnnotationOf(alias.element) !=
            null;
    return ret;
  }
}

String collectionProtoToValue(mapperfield.FieldDescriptor fieldDescriptor,
    DartType parameterType, String parameterName) {
  final fieldTypeName = parameterType.getDisplayString(withNullability: false);
  if (fieldTypeName == (Decimal).toString()) {
    return 'Decimal.parse($parameterName)';
  }
  if (fieldTypeName == (DateTime).toString()) {
    if (fieldDescriptor.dateTimePrecision == TimePrecision.microseconds) {
      return 'DateTime.fromMicrosecondsSinceEpoch($parameterName.toInt())';
    }
    return 'DateTime.fromMillisecondsSinceEpoch($parameterName.toInt())';
  }
  if (fieldTypeName == (Duration).toString()) {
    if (fieldDescriptor.durationPrecision == TimePrecision.microseconds) {
      return 'Duration(microseconds: $parameterName.toInt())';
    }
    return 'Duration(milliseconds: $parameterName.toInt())';
  }
  if (_hasDynamicValue(fieldDescriptor)) {
    return ''' DynamicProtoMapper.fromProto($parameterName)''';
  }
  return ''' const \$${fieldTypeName}ProtoMapper().fromProto($parameterName)''';
}

String collectionValueToProto(mapperfield.FieldDescriptor fieldDescriptor,
    DartType parameterType, String parameterName) {
  final fieldTypeName = parameterType.getDisplayString(withNullability: false);
  if (fieldTypeName == (Decimal).toString()) {
    return '$parameterName.toString()';
  }
  if (fieldTypeName == (DateTime).toString()) {
    if (fieldDescriptor.dateTimePrecision == TimePrecision.microseconds) {
      return 'Int64($parameterName.microsecondsSinceEpoch)';
    }
    return 'Int64($parameterName.millisecondsSinceEpoch)';
  }
  if (fieldTypeName == (Duration).toString()) {
    if (fieldDescriptor.durationPrecision == TimePrecision.microseconds) {
      return '$parameterName.inMicroseconds.toDouble()';
    }
    return '$parameterName.inMilliseconds.toDouble()';
  }
  if (_hasDynamicValue(fieldDescriptor)) {
    return ''' DynamicProtoMapper.toProto($parameterName)''';
  }
  return ''' const \$${fieldTypeName}ProtoMapper().toProto($parameterName)''';
}

bool _hasDynamicValue(mapperfield.FieldDescriptor fieldDescriptor) {
  return ((fieldDescriptor.fieldElementType.isDartCoreList || fieldDescriptor.fieldElementType.isDartCoreSet) &&
    (fieldDescriptor.parameterType.isDynamic || fieldDescriptor.parameterType.isDartCoreObject)) ||
    (fieldDescriptor.fieldElementType.isDartCoreMap && (
        ((fieldDescriptor.fieldElementType as InterfaceType).typeArguments[1].isDynamic ||
            (fieldDescriptor.fieldElementType as InterfaceType).typeArguments[1].isDartCoreObject))
    );
}
