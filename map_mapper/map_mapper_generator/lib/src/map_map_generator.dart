import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import 'field_code_generator.dart';
import 'field_descriptor.dart';

class MapMapGenerator extends GeneratorForAnnotation<MapMap> {
  final BuilderOptions options;
  late final String _keyHandler;
  ClassElement? _classElement;
  String? _className;
  late TimePrecision _durationPrecision;

  MapMapGenerator(this.options) {
    var config = options.config;

    _keyHandler = config['keyHandler'] as String? ?? 'DefaultKeyHandler';
    _durationPrecision = TimePrecisionConversions.fromString(
        config['durationPrecision'] as String? ?? 'microseconds');
  }

  @override
  String? generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final readAnnotation =
        _hydrateAnnotation(annotation, durationPrecision: _durationPrecision);

    if (element is! ClassElement) return null;
    _classElement = element;
    _className = element.name;

    if (_classElement!.kind == ElementKind.ENUM) {
      return renderEnumMapper();
    }

    var toMapFieldBuffer = StringBuffer();
    var fromMapFieldBuffer = StringBuffer();
    var constructorFieldBuffer = StringBuffer();
    var fieldNamesBuffer = StringBuffer();

    var fieldDescriptors = _getFieldDescriptors(_classElement!, readAnnotation);
    var defaultsProviderClassName =
        getDefaultsProvider(_classElement, readAnnotation, fieldDescriptors);
    var hasDefaultsProvider = defaultsProviderClassName != null;
    var declareKh = false;

    for (var fieldDescriptor in fieldDescriptors) {
      var fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
          fieldDescriptor, hasDefaultsProvider);
      declareKh = declareKh || fieldCodeGenerator.usesKh;

      var toMapMap = fieldCodeGenerator.toMapMap;
      toMapFieldBuffer.writeln(toMapMap);

      if (fieldDescriptor.isFinal) {
        var constructorMap = fieldCodeGenerator.constructorMap;
        constructorFieldBuffer.writeln(constructorMap);
      } else {
        var fromMapMap = fieldCodeGenerator.fromMapMap;
        fromMapFieldBuffer.writeln(fromMapMap);
      }

      fieldNamesBuffer.writeln(fieldCodeGenerator.fieldNamesClassFieldName);
      fieldNamesBuffer.writeln(fieldCodeGenerator.fieldNamesClassGetter);
    }

    var ret = renderMapper(
      defaultsProviderClassName,
      toMapFieldBuffer,
      fromMapFieldBuffer,
      constructorFieldBuffer,
      fieldNamesBuffer,
      declareKh,
    );

    return ret;
  }

  String renderMapper(
    String? defaultsProviderClassName,
    StringBuffer toMapFieldBuffer,
    StringBuffer fromMapFieldBuffer,
    StringBuffer constructorFieldBuffer,
    StringBuffer fieldNamesBuffer,
    bool declareKh,
  ) {
    final className = _className;

    final defaultsProviderDeclaration =
        ((defaultsProviderClassName ?? '') == '')
            ? ''
            : 'final defaultsProvider = $defaultsProviderClassName();';

    final kh = declareKh ? 'final \$kh = const $_keyHandler();' : '';
    return '''

      class \$${className}MapMapper extends MapMapper<$className> {
        const \$${className}MapMapper();


        @override
        $className fromMap(Map<String, dynamic> map) { 
          $kh        
          $defaultsProviderDeclaration
          
          return $className($constructorFieldBuffer)
              $fromMapFieldBuffer; 
        }

        @override
        Map<String, dynamic> toMap($className instance) {
            $kh
            final map = <String, dynamic>{};
        
            $toMapFieldBuffer  
              
            return map;
        }
      }


      extension \$${className}MapExtension on $className {
        Map<String, dynamic> toMap() => const \$${className}MapMapper().toMap(this);
        static $className fromMap(Map<String, dynamic> map) => const \$${className}MapMapper().fromMap(map);
      }
      
      extension \$Map${className}Extension on Map<String, dynamic> {
        $className to$className() => const \$${className}MapMapper().fromMap(this);
      }
  

      class \$${className}FieldNames {
        $kh
        final String fieldName;
        final String prefix;

        \$${className}FieldNames.sub(this.fieldName) 
          : prefix = fieldName + '.';

      const \$${className}FieldNames()
        : fieldName = '',
          prefix = '';

        $fieldNamesBuffer

        @override
        String toString() => fieldName;
      }

  ''';
  }

  String renderEnumMapper() {
    var className = _className;
    return '''
    class \$${className}MapMapper
    {
      const \$${className}MapMapper();
      $className fromMap(dynamic e) => $className.values[e];
      dynamic toMap($className e) => e.index;
    }
    ''';
  }

  static String? getDefaultsProvider(
    ClassElement? classElement,
    MapMap annotation,
    Iterable<FieldDescriptor> fieldDescriptors,
  ) {
    if (annotation.useDefaultsProvider == false) {
      return null;
    }
    if (!fieldDescriptors.any((element) => !element.isNullable)) {
      return null;
    }
    return '\$${classElement!.name}DefaultsProvider';
  }
}

Iterable<FieldDescriptor> _getFieldDescriptors(
    ClassElement classElement, MapMap annotation) {
  final fieldSet = classElement.getSortedFieldSet();
  final fieldDescriptors = fieldSet
      .map((fieldElement) => FieldDescriptor.fromFieldElement(
            fieldElement,
            annotation,
          ))
      .where((element) => element.isMapIncluded);
  return fieldDescriptors;
}

MapMap _hydrateAnnotation(
  ConstantReader reader, {
  required TimePrecision durationPrecision,
}) {
  final annotatedDurationPrecision =
      reader.getTimePrecision('durationPrecision') ?? durationPrecision;

  var ret = MapMap(
    includeFieldsByDefault:
        reader.read('includeFieldsByDefault').literalValue as bool,
    useDefaultsProvider:
        reader.read('useDefaultsProvider').literalValue as bool,
    durationPrecision: annotatedDurationPrecision,
  );
  return ret;
}
