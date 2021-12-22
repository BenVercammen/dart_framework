import 'package:analyzer/dart/element/type.dart';
import 'package:proto_generator/src/proto_common.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';
import 'external_proto_name.dart';

class MapFieldCodeGenerator extends FieldCodeGenerator
    implements ExternalProtoNames {
  MapFieldCodeGenerator(FieldDescriptor fieldDescriptor, int lineNumber)
      : super(fieldDescriptor, lineNumber) {
    final fieldElementType = fieldDescriptor.itemType;

    final packageName = fieldElementType.packageName;

    assert (fieldElementType is InterfaceType);
    final keyTypeName = _fieldTypeName((fieldElementType as InterfaceType).typeArguments[0], fieldDescriptor.prefix);
    final valueTypeName = _fieldTypeName((fieldElementType).typeArguments[1], fieldDescriptor.prefix);

    final fieldElementTypeName = '''map<$keyTypeName, $valueTypeName>''';

    _fieldType = packageName != ''
        ? '$packageName.$fieldElementTypeName'
        : fieldElementTypeName;

    _externalProtoNames = _initExternalProtoNames(fieldDescriptor);
  }

  Iterable<String>? _initExternalProtoNames(FieldDescriptor fieldDescriptor) {
    final names = <String>[];
    final argumentTypes = (fieldDescriptor.fieldElementType as InterfaceType).typeArguments;
    for (DartType argumentType in argumentTypes) {
      if (argumentType.isDartCoreString ||
          argumentType.isDartCoreInt ||
          argumentType.isDartCoreDouble ||
          argumentType.isDartCoreNum ||
          argumentType.isDartCoreBool) {
        continue;
      }
      final segments = argumentType.element!.source!.uri.pathSegments.toList();
      final lastSrc = segments.lastIndexOf('src');
      if (lastSrc != -1) segments.removeRange(0, lastSrc + 1);
      var fileName = segments[segments.length - 1];
      fileName = fileName.substring(0, fileName.length - 4) + 'proto';
      segments[segments.length - 1] = fileName;
      names.add(segments.join('/'));
    }
    return names;
  }

  Iterable<String>? _externalProtoNames;
  @override
  Iterable<String>? get externalProtoNames => _externalProtoNames;

  String? _fieldType;
  @override
  String? get fieldType => _fieldType;

  String _fieldTypeName(DartType keyType, String prefix) {
    if (keyType.isDartCoreString) {
      return 'string';
    } else if (keyType.isDartCoreInt) {
      return 'int32';
    } else if (keyType.isDartCoreDouble) {
      return 'int64';
    } else if (keyType.isDartCoreBool) {
      return 'bool';
    }
    return '$prefix${keyType.getDisplayString(withNullability: true)}';
  }
}
