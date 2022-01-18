import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';
import 'grpc/ingredient.pb.dart';

part 'ingredient.g.dart';

@mapEntity
class Ingredient {
  final String description;
  final double quantity;

  const Ingredient({
    required this.description,
    required this.quantity,
  });
}

class MapEntity implements Proto, MapProto, MapMapped {
  @override
  final String packageName;
  @override
  final String? prefix;
  @override
  final bool useDefaultsProvider;

  @override
  final bool includeFieldsByDefault;

  const MapEntity({
    this.prefix = 'G',
    this.packageName = '',
    this.useDefaultsProvider = false,
    this.includeFieldsByDefault = true,
    this.knownSubClasses,
  });

  @override
  TimePrecision? get dateTimePrecision => null;

  @override
  TimePrecision? get durationPrecision => null;

  @override
  bool? get useProtoFieldNamingConventions => null;

  @override
  DateTimeRepresentation? get dateTimeRepresentation => null;

  @override
  final List<Type>? knownSubClasses;
}

const mapEntity = MapEntity();
