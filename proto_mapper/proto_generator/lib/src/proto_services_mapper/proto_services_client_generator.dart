import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:build/build.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto_common.dart';
import 'package:proto_generator/src/proto_mapper/field_code_generator.dart';
import 'package:proto_generator/src/proto_mapper/field_descriptor.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../proto_services_generator_base.dart';
import 'method_descriptor.dart';

class ProtoServicesClientGenerator
    extends GeneratorForAnnotation<MapProtoServices> {
  final BuilderOptions options;
  late String _prefix;
  late String _defaultPackage;

  ProtoServicesClientGenerator(this.options) {
    var config = options.config;
    _prefix = config['prefix'] as String? ?? 'G';
    _defaultPackage = config['package'] as String? ?? '';
  }

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    var readAnnotation = _hydrateAnnotation(annotation, prefix: _prefix);

    final classElement = element.asClassElement();
    final generator = _Generator(
      annotation: readAnnotation,
      classElement: classElement,
      prefix: _prefix,
      packageName: readAnnotation.packageName != '' ? '' : _defaultPackage,
    );

    var ret = generator.generateForClass();

    return ret;
  }
}

class _Generator extends ProtoServicesGeneratorBase {
  final MapProtoServices annotation;
  final Iterable<MethodDescriptor> methodDescriptors;
  final String packageName;

  _Generator({
    required this.annotation,
    required String prefix,
    required ClassElement classElement,
    required this.packageName,
  })  : methodDescriptors = _getMethodDescriptors(classElement, annotation),
        super(classElement: classElement, prefix: prefix);

  String generateForClass() {
    final methodBuffer = StringBuffer();

    for (var methodDescriptor in methodDescriptors) {
      final methodName = methodDescriptor.name;
      if (!methodDescriptor.returnTypeIsFuture) {
        // we can't know how to implement sync methods
        continue;
      }

      final parameters = _getParameters(methodDescriptor);
      final assignments = StringBuffer();
      final gParm = _getGParameter(methodDescriptor, assignments);

      final resultBuffer = StringBuffer();
      final returnBuffer = StringBuffer();
      final returnType =
          _getReturnType(methodDescriptor, resultBuffer, returnBuffer);

      methodBuffer.writeln('''

  @override
  Future<$returnType> $methodName($parameters) async {
    final serviceClient = await get${prefix}ServiceClient();
    final \$parm = $gParm;

    $assignments

    $resultBuffer await serviceClient.$methodName(\$parm);
    
    $returnBuffer
  }

 
''');
    }

    final className = classElement.name;
    final serviceClassName = (className.endsWith('Base')
        ? className.substring(0, className.length - 'Base'.length)
        : className.endsWith('Interface')
            ? className.substring(0, className.length - 'Interface'.length)
            : className);

    var ret = '''

abstract class ${serviceClassName}ClientBase implements $className {
  Future<$prefix${serviceClassName}Client> get${prefix}ServiceClient();

  $methodBuffer
}

''';

    return ret;
  }

  String _getParameters(MethodDescriptor methodDescriptor) {
    final parameters = StringBuffer();
    for (final parm in methodDescriptor.methodElement.parameters) {
      final pType = parm.type;
      final pName = parm.displayName;
      parameters.write('$pType $pName, ');
    }
    return parameters.toString();
  }

  String _getGParameter(
    MethodDescriptor methodDescriptor,
    StringBuffer assignments,
  ) {
    final protoMappedParameter = _getProtoMappedParameter(methodDescriptor);
    if (protoMappedParameter.isNotEmpty) return protoMappedParameter;

    final messageName = getParameterMessageName(methodDescriptor.pascalName);

    _addAssignments(methodDescriptor, assignments);

    return '$messageName()';
  }

  void _addAssignments(
      MethodDescriptor methodDescriptor, StringBuffer assignments) {
    for (final parm in methodDescriptor.methodElement.parameters) {
      final type = parm.type;
      final fd = FieldDescriptor(
        MapProto(
          prefix: prefix,
          packageName: packageName,
        ),
        displayName: parm.displayName,
        isFinal: true,
        name: parm.name,
        fieldElementType: type,
      );
      final fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
        fd,
        refName: '',
        protoRefName: '\$parm',
      );

      final expression = fieldCodeGenerator.toProtoMap;
      assignments.writeln(expression);
    }
  }

  String _getProtoMappedParameter(MethodDescriptor methodDescriptor) {
    if (methodDescriptor.methodElement.parameters.length != 1) {
      return '';
    }
    final finalType = methodDescriptor.parameterType.finalType;
    if (!finalType.hasProto) return '';

    final parmName =
        methodDescriptor.methodElement.parameters.first.displayName;

    final toProto = methodDescriptor.parameterType.futureType.isList
        ? '${prefix}ListOf$finalType(items: $parmName.map((i) => i.toProto()))'
        : '$parmName.toProto()';
    return toProto;
  }

  _getReturnType(
    MethodDescriptor methodDescriptor,
    StringBuffer resultBuffer,
    StringBuffer returnBuffer,
  ) {
    final protoMappedReturnType =
        _getProtoMappedReturnType(methodDescriptor, resultBuffer, returnBuffer);
    if (protoMappedReturnType.isNotEmpty) {
      return protoMappedReturnType;
    }

    final rType = methodDescriptor.methodElement.returnType.futureType
        .getDisplayString(withNullability: true);
    final futureType = methodDescriptor.returnType.futureType;
    if (futureType.isVoid) {
      return rType;
    }

    final fd = FieldDescriptor(
      MapProto(
        prefix: prefix,
        packageName: packageName,
      ),
      displayName: 'value',
      isFinal: true,
      name: 'value',
      fieldElementType: futureType,
    );

    final fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
      fd,
      refName: '\$result',
    );

    resultBuffer.write(r'final $result = ');

    final assignment = fieldCodeGenerator.fromProtoExpression;
    returnBuffer.writeln('final \$ret = $assignment;');
    returnBuffer.writeln(r'return $ret;');

    return rType;
  }
}

String _getProtoMappedReturnType(
  MethodDescriptor methodDescriptor,
  StringBuffer resultBuffer,
  StringBuffer returnBuffer,
) {
  final returnType = methodDescriptor.returnType;
  final finalType = returnType.finalType;
  if (finalType.isVoid) return '';
  if (finalType.element?.kind == ElementKind.ENUM) return '';
  if (!finalType.hasMapProto) return '';
  if (returnType.futureType.nullabilitySuffix == NullabilitySuffix.question) {
    return '';
  }

  final entityType = finalType.getDisplayString(withNullability: false);
  final futureType = returnType.futureType;
  final toEntity = returnType.futureType.isList
      ? '\$result.items.map((i) => i.to$entityType()).toList()'
      : '\$result.to$entityType()';
  resultBuffer.write(r'final $result = ');
  returnBuffer.write('final \$ret = $toEntity;');
  returnBuffer.write(r'return $ret;');

  return futureType.getDisplayString(withNullability: true);
}

Iterable<MethodDescriptor> _getMethodDescriptors(
  ClassElement classElement,
  MapProtoServices annotation,
) {
  final methods = classElement.getSortedMethods();
  final methodDescriptors = methods
      .map((fieldElement) => MethodDescriptor.fromMethodElement(
            classElement,
            fieldElement,
            annotation,
          ))
      .where((element) => element.isProtoIncluded);
  return methodDescriptors;
}

MapProtoServices _hydrateAnnotation(ConstantReader reader,
    {String prefix = ''}) {
  var ret = MapProtoServices(
    prefix: reader.read('prefix').literalValue as String? ?? prefix,
  );

  return ret;
}
