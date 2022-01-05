import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

/// Annotate PODO class with MapMap in order to
/// signal the code generator that it is to produce
/// a map mapper for the class to which the annotation
/// was applied.
class MapMap {
  const MapMap({
    this.includeFieldsByDefault = true,
    this.useDefaultsProvider = false,
    required this.durationPrecision,
  });

  /// Determines whether to include all fields by default.
  ///
  /// When the value is true, all fields that do not have
  /// the [MapIgnore] annotation will be mapped.
  /// When the value is false, only the fields that have the
  /// [MapField] annotation will be included.
  final bool includeFieldsByDefault;
  final bool useDefaultsProvider;

  /// Defines the level of precision of DateTime and
  /// Duration fields.
  ///
  /// When left null, will assume the value configured
  /// in build.yaml or DateTimePrecision.microseconds
  ///
  /// This property is new in version 3.0.0.
  /// Versions below 3.0.0 mapped to a millisecond precision.
  final TimePrecision? durationPrecision;
}

@Deprecated(
    'Use the [MapMap] annotation, explicitly specifying the [dateTimePrecision] or alternatively the [mapMapped], having in attention that [mapMapped] defines a microsecond precision for Duration properties, which is a breaking change from versions below 3.0.0.')
const mapMap = MapMap(durationPrecision: TimePrecision.milliseconds);

const mapMapped = MapMap(durationPrecision: null);
