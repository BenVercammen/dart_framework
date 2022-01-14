import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';

/// Annotate PODO class with MapMap in order to
/// signal the code generator that it is to produce
/// a map mapper for the class to which the annotation
/// was applied.
@Deprecated(
    '''Use the [MapMapped] annotation, having in attention that [MapMapped] has different default precisions, 
which is a breaking change from versions below 3.0.0. 

In order to restore the previous defaults, add a build.yaml file containing the following:

# Read about `build.yaml` at https://pub.dev/packages/build_config
targets:
  \$default:
    builders:
     map_mapper_generator:map_map_generator:
        options:
          durationPrecision: microseconds
          dateTimeRepresentation: iso8601String
''')
class MapMap extends MapMapped {
  const MapMap({
    bool includeFieldsByDefault = true,
    bool useDefaultsProvider = false,
    required TimePrecision durationPrecision,
    DateTimeRepresentation? dateTimeRepresentation =
        DateTimeRepresentation.iso8601String,
  }) : super(
          includeFieldsByDefault: includeFieldsByDefault,
          useDefaultsProvider: useDefaultsProvider,
          durationPrecision: durationPrecision,
          dateTimeRepresentation: dateTimeRepresentation,
        );
}

@Deprecated(
    '''Use the [mapMapped] annotation, having in attention that [mapMapped] defines a microsecond precision for Duration properties, 
which is a breaking change from versions below 3.0.0. 

In order to restore the previous defaults, add a build.yaml file containing the following:

# Read about `build.yaml` at https://pub.dev/packages/build_config
targets:
  \$default:
    builders:
     map_mapper_generator:map_map_generator:
        options:
          durationPrecision: microseconds
          dateTimeRepresentation: iso8601String

''')
const mapMap = MapMap(durationPrecision: TimePrecision.milliseconds);
