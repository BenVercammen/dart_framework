import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import 'field_code_generator.dart';
import 'field_descriptor.dart';

part 'proto_mapper_generator.helpers.dart';

class ProtoMapperGenerator extends GeneratorForAnnotation<MapProto> {
  final BuilderOptions options;
  String? _prefix;

  ClassElement? _classElement;
  ClassElement? get classElement => _classElement;
  String? get className => _classElement?.name;

  String? get prefix => _prefix;

  ProtoMapperGenerator(this.options) {
    var config = options.config;
    _prefix = config['prefix'] as String? ?? 'G';
  }

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    var readAnnotation = _hydrateAnnotation(annotation, prefix: _prefix);
    if (readAnnotation == null) return '';
    _prefix = readAnnotation.prefix ?? _prefix;

    _classElement = element.asClassElement();
    if (_classElement!.kind == ElementKind.ENUM) return renderEnumMapper();

    final fieldDescriptors =
        _getFieldDescriptors(_classElement!, readAnnotation);

    var finalToProtoFieldBuffer = StringBuffer();
    var finalFromProtoFieldBuffer = StringBuffer();
    var finalConstructorFieldBuffer = StringBuffer();
    var constructorName = '';

    // toProto is just fields, regardless of constructors...
    for (var fieldDescriptor in fieldDescriptors) {
      final fieldCodeGenerator =
        FieldCodeGenerator.fromFieldDescriptor(fieldDescriptor);
      finalToProtoFieldBuffer.writeln(fieldCodeGenerator.toProtoMap);
    }

    // All constructors should be eligible for use
    for (final constructor in _classElement!.constructors) {
      var fromProtoFieldBuffer = StringBuffer();
      var constructorFieldBuffer = StringBuffer();
      var nonCoveredFields = List<FieldDescriptor>.from(fieldDescriptors);
      constructorName = constructor.name.isNotEmpty ? ".${constructor.name}" : constructor.name;

      // First use the available constructor parameters (this way we preserve unnamed constructor arg order)
      for (ParameterElement constructorParameter in constructor.parameters) {
        final fieldDescriptorList = fieldDescriptors.where((element) => element.name == constructorParameter.name);
        if (fieldDescriptorList.isEmpty) {
          // If not found, there's not much we can do...
          continue;
        }
        final fieldCodeGenerator =
          FieldCodeGenerator.fromFieldDescriptor(fieldDescriptorList.first);
        // INLINE
        var constructorMap = fieldCodeGenerator.constructorMap;
        if (!constructorParameter.isNamed) {
          constructorMap = constructorMap.substring(constructorParameter.nameLength + 1);
        }
        constructorFieldBuffer.writeln(constructorMap);
        // Remove from nonCoveredFields, as we have it covered...
        nonCoveredFields.removeWhere((element) => element.name == constructorParameter.name);
      }
      // Then append the (non-final) fields not included within the constructor
      // Final fields will be skipped, as they can't be set anyway...
      for (var fieldDescriptor in nonCoveredFields) {
        final fieldCodeGenerator =
          FieldCodeGenerator.fromFieldDescriptor(fieldDescriptor);
        if (!fieldDescriptor.isFinal) {
          var fromProtoMap = fieldCodeGenerator.fromProtoMap;
          fromProtoFieldBuffer.writeln('  ..$fromProtoMap');
        }
      }
      if (nonCoveredFields.isEmpty || (finalFromProtoFieldBuffer.isEmpty && finalConstructorFieldBuffer.isEmpty)) {
        finalFromProtoFieldBuffer = StringBuffer(fromProtoFieldBuffer);
        finalConstructorFieldBuffer = StringBuffer(constructorFieldBuffer);
      }
      // If 100% field coverage, we're done..
      if (nonCoveredFields.isEmpty) {
        break;
      }
    }

    var renderBuffer = StringBuffer();
    var mapper = _renderMapper(
      constructorName,
      finalToProtoFieldBuffer,
      finalFromProtoFieldBuffer,
      finalConstructorFieldBuffer,
    );

    renderBuffer.writeln(mapper);

    return renderBuffer.toString();
  }

  String _renderMapper(
    String constructorName,
    StringBuffer toProtoFieldBuffer,
    StringBuffer fromProtoFieldBuffer,
    StringBuffer constructorFieldBuffer,
  ) {
    var prefix = _prefix;

    return '''
  
      class \$${className}ProtoMapper implements ProtoMapper<$className, $prefix$className> {
        const \$${className}ProtoMapper();

        @override
        $className fromProto($prefix$className proto) => _\$${className}FromProto(proto);
  
        @override
        $prefix$className toProto($className entity) => _\$${className}ToProto(entity);
        
        $className fromJson(String json) =>
          _\$${className}FromProto($prefix$className.fromJson(json));
        String toJson($className entity) => _\$${className}ToProto(entity).writeToJson();

        String toBase64Proto($className entity) =>
          base64Encode(utf8.encode(entity.toProto().writeToJson()));

        $className fromBase64Proto(String base64Proto) =>
            $prefix$className.fromJson(utf8.decode(base64Decode(base64Proto)))
                .to$className();
      }
      
            

      $prefix$className _\$${className}ToProto($className instance) 
      {
        var proto = $prefix$className();
        
        $toProtoFieldBuffer
        
        return proto;
      }

      $className _\$${className}FromProto($prefix$className instance) =>
        $className$constructorName($constructorFieldBuffer)
          $fromProtoFieldBuffer;

      extension \$${className}ProtoExtension on $className {
        $prefix$className toProto() => _\$${className}ToProto(this);
        String toJson() => _\$${className}ToProto(this).writeToJson();
      
        static $className fromProto($prefix$className proto) => _\$${className}FromProto(proto);
        static $className fromJson(String json) => _\$${className}FromProto($prefix$className.fromJson(json));
      }
      
      
      extension \$$prefix${className}ProtoExtension on $prefix$className {
        $className to$className() => _\$${className}FromProto(this);
      }
     

  ''';
  }

  String renderEnumMapper() {
    return '''
      class \$${className}ProtoMapper implements ProtoMapper<$className, $prefix$className> {
        const \$${className}ProtoMapper();

        @override
        $className fromProto($prefix$className proto) => 
          $className.values[proto.value];
        
          
        @override
        $prefix$className toProto($className entity) => 
          $prefix$className.valueOf(entity.index)!;
      }    

      extension \$$prefix${className}ProtoExtension on $prefix$className {
  $className to$className() =>
      const \$${className}ProtoMapper().fromProto(this);
}

  ''';
  }
}

MapProto? _hydrateAnnotation(ConstantReader reader, {String? prefix}) {
  var ret = MapProto(
    prefix: reader.read('prefix').literalValue as String? ?? prefix,
    packageName: reader.read('packageName').literalValue as String,
  );

  return ret;
}
