import 'package:squarealfa_common_types/squarealfa_common_types.dart';

class MapProto {
  const MapProto({
    this.prefix,
    this.packageName = '',
    this.includeFieldsByDefault = true,
    this.dateTimePrecision,
    this.durationPrecision,
  });

  final String? packageName;
  final String? prefix;
  final bool includeFieldsByDefault;
  final TimePrecision? dateTimePrecision;
  final TimePrecision? durationPrecision;
}

const mapProto = MapProto();
