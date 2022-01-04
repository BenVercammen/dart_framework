import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto_mapper/map_proto_reflected.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';
import 'package:recase/recase.dart';

import 'field_code_generator.dart';
import 'field_descriptor.dart';

part 'proto_mapper_generator.helpers.dart';

class ProtoMapperGenerator extends GeneratorForAnnotation<MapProto> {
  final BuilderOptions options;
  String? _prefix;

  late TimePrecision _dateTimePrecision;
  late TimePrecision _durationPrecision;
  late bool _allowMissingFields;

  ClassElement? _classElement;

  ClassElement? get classElement => _classElement;

  String? get className => _classElement?.name;

  String? get prefix => _prefix;

  ProtoMapperGenerator(this.options) {
    var config = options.config;
    _prefix = config['prefix'] as String? ?? 'G';
    _dateTimePrecision = _getTimePrecision(
        config['dateTimePrecision'] as String? ?? 'microseconds');
    _durationPrecision = _getTimePrecision(
        config['durationPrecision'] as String? ?? 'microseconds');
    _allowMissingFields = (config['allowMissingFields'] as bool? ?? false);
  }

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final mapProtoReflected = _hydrateAnnotation(
      annotation,
      prefix: _prefix,
      dateTimePrecision: _dateTimePrecision,
      durationPrecision: _durationPrecision,
      allowMissingFields: _allowMissingFields,
    );
    final mapProto = mapProtoReflected.mapProto;
    _prefix = mapProto.prefix ?? _prefix;

    _classElement = element.asClassElement();
    if (_classElement!.kind == ElementKind.ENUM) return renderEnumMapper();

    RenderMapperBuffers renderParms = _createRenderBuffers(mapProtoReflected);

    final mapper = _renderMapper(renderParms);
    return mapper;
  }

  RenderMapperBuffers _createRenderBuffers(
    MapProtoReflected mapProtoReflected,
  ) {
    final mapProto = mapProtoReflected.mapProto;
    final fieldDescriptors = _getFieldDescriptors(_classElement!, mapProto);
    final fromFieldDescriptors = [...fieldDescriptors];

    final toProtoFieldBuffer = StringBuffer();
    final fromProtoFieldBuffer = StringBuffer();
    final constructorFieldBuffer = StringBuffer();

    // let's get all the constructors which cover all non-nullable final fields
    final missingFields = <String>{};
    final constructors = _classElement!.constructors
        .where((constructor) => fieldDescriptors.every((fd) {
          final match = !fd.isFinal ||
            fd.isNullable ||
            //fd.isLate ||
            constructor.parameters.any((cp) => cp.name == fd.name);
          if (!match) {
            if (mapProto.allowMissingFields) {
              // TODO: log instead of print???
              print('WARNING: missing field ${fd.displayName}');
              return true;
            } else {
              missingFields.add(fd.displayName);
            }
          }
          return match;
        }));

    // let's just pick the first of the valid constructors
    final constructor = constructors.isEmpty
        ? throw InvalidGenerationSourceError(
            'Cannot generate proto mapper for class ${_classElement!.name} because it is missing a constructor that covers all final properties.\n'
                '\tMissing fields: $missingFields')
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

    // assign the to proto field assignments
    for (var fieldDescriptor in fieldDescriptors) {
      final fieldCodeGenerator =
          FieldCodeGenerator.fromFieldDescriptor(fieldDescriptor);
      toProtoFieldBuffer.writeln(fieldCodeGenerator.toProtoMap);
    }

    final constructorName =
        constructor.name.isNotEmpty ? ".${constructor.name}" : constructor.name;

    final toKnownSubClasses = _generateToKnownSubclassses(mapProtoReflected);
    final fromKnownSubClasses = _generateFromKnownSubclasses(mapProtoReflected);

    final renderParms = RenderMapperBuffers(
      constructorName: constructorName,
      toProtoFieldBuffer: toProtoFieldBuffer.toString(),
      fromProtoFieldBuffer: fromProtoFieldBuffer.toString(),
      constructorFieldBuffer: constructorFieldBuffer.toString(),
      toKnownSubclasses: toKnownSubClasses,
      fromKnownSubclasses: fromKnownSubClasses,
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

  String? _generateToKnownSubclassses(MapProtoReflected mapProtoReflected) {
    final kscs = mapProtoReflected.knownSubClasses;
    if (kscs == null) return null;

    final ret = kscs.map((ksc) {
      final className = ksc.getDisplayString(withNullability: false);
      final camelClassName = className.camelCase;
      final expression = '''
      if (instance is $className) {
        uproto.$camelClassName = (const \$${className}ProtoMapper()).toProto(instance);
        return uproto;
      }
    ''';
      return expression;
    }).join('\n');
    return ret;
  }

  String _renderMapper(RenderMapperBuffers renderParms) {
    final prefix = _prefix;
    final toVar = renderParms.toKnownSubclasses == null ? 'proto' : 'uproto';

    final toReturn = _classElement!.isAbstract
        ? 'throw UnimplementedError();'
        : '''
            ${renderParms.toKnownSubclasses == null ? '' : 'final proto = uproto.vehicle = ${prefix}FieldsOf$className();'}

        ${renderParms.toProtoFieldBuffer}
        
        return $toVar;
    ''';

    final fromProto = renderParms.fromKnownSubclasses != null
        ? '''
           $className _\$${className}FromProto($prefix$className sInstance) {
             ${renderParms.fromKnownSubclasses}

          ${classElement!.isAbstract ? '''
            throw UnimplementedError();
          ''' : '''
            final instance = sInstance.${className!.camelCase};
            final ret = $className${renderParms.constructorName}(${renderParms.constructorFieldBuffer})
          ${renderParms.fromProtoFieldBuffer};

            return ret;          
          '''}

           }    
          '''
        : '''
           $className _\$${className}FromProto($prefix$className instance) =>
        $className${renderParms.constructorName}(${renderParms.constructorFieldBuffer})
          ${renderParms.fromProtoFieldBuffer};

     ''';

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
        var $toVar = $prefix$className();
        
        ${renderParms.toKnownSubclasses ?? ''}

        $toReturn
      }

      $fromProto

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

  String? _generateFromKnownSubclasses(MapProtoReflected mapProtoReflected) {
    final kscs = mapProtoReflected.knownSubClasses;
    if (kscs == null) return null;

    final ret = kscs.map((ksc) {
      final className = ksc.getDisplayString(withNullability: false);
      final camelClassName = className.camelCase;
      final expression = '''
      if (sInstance.has$className()) {
        return sInstance.$camelClassName.to$className();
      }
      ''';
      return expression;
    }).join('\n');
    return ret;
  }
}

MapProtoReflected _hydrateAnnotation(
  ConstantReader reader, {
  String? prefix,
  required TimePrecision dateTimePrecision,
  required TimePrecision durationPrecision,
  required bool allowMissingFields,
}) {
  final annotatedDateTimePrecision =
      reader.getTimePrecision('dateTimePrecision') ?? dateTimePrecision;

  final annotatedDurationPrecision =
      reader.getTimePrecision('durationPrecision') ?? durationPrecision;

  final annotatedAllowMissingFields =
      reader.read('allowMissingFields').boolValue || allowMissingFields;

  var mapProto = MapProto(
    prefix: reader.read('prefix').literalValue as String? ?? prefix,
    packageName: reader.read('packageName').literalValue as String,
    dateTimePrecision: annotatedDateTimePrecision,
    durationPrecision: annotatedDurationPrecision,
    allowMissingFields: annotatedAllowMissingFields,
  );

  final kscReader = reader.read('knownSubClasses');
  final kscs = kscReader.isNull
      ? null
      : kscReader.listValue.map((ksc) {
          return ksc.toTypeValue()!;
        }).toList();

  final ret = MapProtoReflected(mapProto, kscs);

  return ret;
}

class RenderMapperBuffers {
  final String constructorName;
  final String toProtoFieldBuffer;
  final String fromProtoFieldBuffer;
  final String constructorFieldBuffer;
  final String? toKnownSubclasses;
  final String? fromKnownSubclasses;

  RenderMapperBuffers({
    required this.constructorName,
    required this.toProtoFieldBuffer,
    required this.fromProtoFieldBuffer,
    required this.constructorFieldBuffer,
    this.toKnownSubclasses,
    this.fromKnownSubclasses,
  });
}

TimePrecision _getTimePrecision(String value) {
  final values = TimePrecision.values.where((tp) => tp.name == value);
  if (values.isEmpty) {
    throw UnimplementedError();
  }
  return values.first;
}
