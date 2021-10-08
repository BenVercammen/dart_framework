import 'package:analyzer/dart/element/element.dart';

class ProtoServicesGeneratorBase {
  final String className;
  final ClassElement classElement;
  final String prefix;
  final String serviceClassName;

  ProtoServicesGeneratorBase._({
    required this.prefix,
    required this.classElement,
    required this.className,
  }) : serviceClassName = className.endsWith('Base')
            ? className.substring(0, className.length - 4)
            : className.endsWith('Interface')
                ? className.substring(0, className.length - 'Interface'.length)
                : className;

  ProtoServicesGeneratorBase({
    required String prefix,
    required ClassElement classElement,
  }) : this._(
          prefix: prefix,
          classElement: classElement,
          className: classElement.name,
        );

  String getParameterMessageName(String methodName) =>
      'G_$prefix${serviceClassName}_${methodName}_Parameters';

  String getReturnMessageName(String methodName) =>
      'G_$prefix${serviceClassName}_${methodName}_Return';
}
