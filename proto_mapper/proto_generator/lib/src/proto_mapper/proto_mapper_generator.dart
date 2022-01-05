import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import 'field_code_generator.dart';
import 'field_descriptor.dart';

part 'proto_mapper_generator.helpers.dart';

class ProtoMapperGenerator extends GeneratorForAnnotation<MapProto> {
  final BuilderOptions options;
  String? _prefix;

  late TimePrecision _dateTimePrecision;
  late TimePrecision _durationPrecision;

  ClassElement? _classElement;

  ClassElement? get classElement => _classElement;

  String? get className => _classElement?.name;

  String? get prefix => _prefix;

  ProtoMapperGenerator(this.options) {
    var config = options.config;
    _prefix = config['prefix'] as String? ?? 'G';
    _dateTimePrecision = TimePrecisionConversions.fromString(
        config['dateTimePrecision'] as String? ?? 'microseconds');
    _durationPrecision = TimePrecisionConversions.fromString(
        config['durationPrecision'] as String? ?? 'microseconds');
  }

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    var readAnnotation = _hydrateAnnotation(
      annotation,
      prefix: _prefix,
      dateTimePrecision: _dateTimePrecision,
      durationPrecision: _durationPrecision,
    );
    if (readAnnotation == null) return '';
    _prefix = readAnnotation.prefix ?? _prefix;

    _classElement = element.asClassElement();
    if (_classElement!.kind == ElementKind.ENUM) return renderEnumMapper();

    RenderMapperBuffers renderParms = _createRenderBuffers(readAnnotation);

    final mapper = _renderMapper(renderParms);
    return mapper;
  }

  RenderMapperBuffers _createRenderBuffers(MapProto readAnnotation) {
    final fieldDescriptors =
        _getFieldDescriptors(_classElement!, readAnnotation);
    final fromFieldDescriptors = [...fieldDescriptors];

    final toProtoFieldBuffer = StringBuffer();
    final fromProtoFieldBuffer = StringBuffer();
    final constructorFieldBuffer = StringBuffer();

    // lets get all the constructors which cover all final fields
    final constructors = _classElement!.constructors
        .where((constructor) => fieldDescriptors.every((fd) =>
            !fd.isFinal ||
            //fd.isLate ||
            constructor.parameters.any((cp) => cp.name == fd.name)));

    // let's just pick the first of the valid constructors
    final constructor = constructors.isEmpty
        ? throw InvalidGenerationSourceError(
            'Cannot generate proto mapper for class ${_classElement!.name} because it is missing a constructor that covers all final properties')
        : constructors.first;

    // generate the mapping for the constructor, consuming all
    // the fields that are set by the constructor
    _buildConstructorBuffer(
        constructor, fromFieldDescriptors, constructorFieldBuffer);

    // assign the remaining from proto field assignments
    // (that where not set by the constructor)
    for (var fieldDescriptor
        in fromFieldDescriptors.where((fd) => !fd.isFinal)) {
      final fieldCodeGenerator =
          FieldCodeGenerator.fromFieldDescriptor(fieldDescriptor);
      var fromProtoMap = fieldCodeGenerator.fromProtoMap;
      fromProtoFieldBuffer.writeln('  ..$fromProtoMap');
    }

    // assing the to proto field assignments
    for (var fieldDescriptor in fieldDescriptors) {
      final fieldCodeGenerator =
          FieldCodeGenerator.fromFieldDescriptor(fieldDescriptor);
      toProtoFieldBuffer.writeln(fieldCodeGenerator.toProtoMap);
    }

    final constructorName =
        constructor.name.isNotEmpty ? ".${constructor.name}" : constructor.name;

    final renderParms = RenderMapperBuffers(
      constructorName: constructorName,
      toProtoFieldBuffer: toProtoFieldBuffer,
      fromProtoFieldBuffer: fromProtoFieldBuffer,
      constructorFieldBuffer: constructorFieldBuffer,
    );
    return renderParms;
  }

  void _buildConstructorBuffer(
      ConstructorElement constructor,
      List<FieldDescriptor> fromFieldDescriptors,
      StringBuffer constructorFieldBuffer) {
    for (var constructorParameter in constructor.parameters) {
      final fieldDescriptorList = fromFieldDescriptors
          .where((element) => element.name == constructorParameter.name);

      if (fieldDescriptorList.isEmpty) {
        // If not found, there's not much we can do...
        continue;
      }
      final fieldDescriptor = fieldDescriptorList.first;
      fromFieldDescriptors.remove(fieldDescriptor);

      final fieldCodeGenerator =
          FieldCodeGenerator.fromFieldDescriptor(fieldDescriptor);
      // INLINE
      final constructorMap = constructorParameter.isNamed
          ? fieldCodeGenerator.constructorMap
          : fieldCodeGenerator.constructorMap
              .substring(constructorParameter.nameLength + 1);
      constructorFieldBuffer.writeln(constructorMap);
    }
  }

  String _renderMapper(RenderMapperBuffers renderParms) {
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
        
        ${renderParms.toProtoFieldBuffer}
        
        return proto;
      }

      $className _\$${className}FromProto($prefix$className instance) =>
        $className${renderParms.constructorName}(${renderParms.constructorFieldBuffer})
          ${renderParms.fromProtoFieldBuffer};

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

MapProto? _hydrateAnnotation(
  ConstantReader reader, {
  String? prefix,
  required TimePrecision dateTimePrecision,
  required TimePrecision durationPrecision,
}) {
  final annotatedDateTimePrecision =
      reader.getTimePrecision('dateTimePrecision') ?? dateTimePrecision;

  final annotatedDurationPrecision =
      reader.getTimePrecision('durationPrecision') ?? durationPrecision;

  var ret = MapProto(
    prefix: reader.read('prefix').literalValue as String? ?? prefix,
    packageName: reader.read('packageName').literalValue as String,
    dateTimePrecision: annotatedDateTimePrecision,
    durationPrecision: annotatedDurationPrecision,
  );

  return ret;
}

class RenderMapperBuffers {
  final String constructorName;
  final StringBuffer toProtoFieldBuffer;
  final StringBuffer fromProtoFieldBuffer;
  final StringBuffer constructorFieldBuffer;

  RenderMapperBuffers({
    required this.constructorName,
    required this.toProtoFieldBuffer,
    required this.fromProtoFieldBuffer,
    required this.constructorFieldBuffer,
  });
}
