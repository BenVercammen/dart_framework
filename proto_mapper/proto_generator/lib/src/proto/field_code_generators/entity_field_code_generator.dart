import 'package:proto_generator/src/proto_common.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';
import 'external_proto_name.dart';

class EntityFieldCodeGenerator extends FieldCodeGenerator
    implements ExternalProtoNames {
  EntityFieldCodeGenerator(FieldDescriptor fieldDescriptor, int lineNumber)
      : super(fieldDescriptor, lineNumber) {
    final fieldElementType = fieldDescriptor.itemType;

    final packageName = fieldElementType.packageName;

    final fieldElementTypeName =
        '''${fieldDescriptor.prefix}${fieldElementType.getDisplayString(withNullability: false)}''';
    _fieldType = packageName != ''
        ? '$packageName.$fieldElementTypeName'
        : fieldElementTypeName;

    _externalProtoNames = _initExternalProtoName(fieldDescriptor);
  }

  Iterable<String>? _initExternalProtoName(FieldDescriptor fieldDescriptor) {
    final fieldElementType = fieldDescriptor.itemType;
    final segments =
        fieldElementType.element!.source!.uri.pathSegments.toList();
    final lastSrc = segments.lastIndexOf('src');
    if (lastSrc != -1) segments.removeRange(0, lastSrc + 1);
    var fileName = segments[segments.length - 1];
    fileName = fileName.substring(0, fileName.length - 4) + 'proto';
    segments[segments.length - 1] = fileName;
    return [segments.join('/')];
  }

  Iterable<String>? _externalProtoNames;
  @override
  Iterable<String>? get externalProtoNames => _externalProtoNames;

  String? _fieldType;
  @override
  String? get fieldType => _fieldType;
}
