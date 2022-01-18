// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// AdaptedEntityGenerator
// **************************************************************************

class $VehiclePermissions extends EntityPermissions {
  const $VehiclePermissions();

  @override
  String get create => 'create_vehicle';

  @override
  String get delete => 'delete_vehicle';

  @override
  String get read => 'read_vehicle';

  @override
  String get update => 'update_vehicle';
}

class $VehicleEntityAdapter implements EntityAdapter<Vehicle> {
  @override
  final MapMapper<Vehicle> mapMapper = const $VehicleMapMapper();

  @override
  final Validator validator = const $VehicleValidator();

  @override
  final EntityPermissions permissions = const $VehiclePermissions();
}

// **************************************************************************
// BuilderGenerator
// **************************************************************************

class $VehicleBuilder implements Builder<Vehicle> {
  final _defaultsProvider = $VehicleDefaultsProvider();

  int? $weight;
  int get weight => $weight ?? _defaultsProvider.weight;
  set weight(int value) => $weight = value;

  $VehicleBuilder({
    int? weight,
  }) {
    $weight = weight;
  }

  $VehicleBuilder.fromVehicle(Vehicle entity)
      : this(
          weight: entity.weight,
        );

  @override
  Vehicle build() {
    final entity = _build();
    const $VehicleValidator().validateThrowing(entity);
    return entity;
  }

  @override
  BuildResult<Vehicle> tryBuild() {
    try {
      final entity = _build();
      final errors = $VehicleValidator().validate(entity);
      final result =
          BuildResult<Vehicle>(result: entity, validationErrors: errors);
      return result;
    } catch (ex) {
      return BuildResult<Vehicle>(exception: ex);
    }
  }

  Vehicle _build() {
    var entity = Vehicle(
      weight: weight,
    );
    return entity;
  }
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension $VehicleCopyWithExtension on Vehicle {
  Vehicle copyWith({
    int? weight,
  }) {
    return Vehicle(
      weight: weight ?? this.weight,
    );
  }
}

// **************************************************************************
// DefaultsProviderGenerator
// **************************************************************************

class $VehicleDefaultsProvider {
  const $VehicleDefaultsProvider();

  Vehicle createWithDefaults({
    int? weight,
  }) {
    return Vehicle(
      weight: weight ?? this.weight,
    );
  }

  int get weight => 0;
}

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $VehicleMapMapper extends MapMapper<Vehicle> {
  const $VehicleMapMapper();

  @override
  Vehicle fromMap(Map<String, dynamic> map) {
    final type = map['\$type'] as String?;
    switch (type) {
      case null:
      case 'Vehicle':
        return _fromMap(map);
      case 'Car':
        return (const $CarMapMapper()).fromMap(map);

      case 'Airplane':
        return (const $AirplaneMapMapper()).fromMap(map);

      default:
        throw UnimplementedError();
    }
  }

  Vehicle _fromMap(Map<String, dynamic> map) {
    final defaultsProvider = $VehicleDefaultsProvider();

    return Vehicle(
      weight: getValueOrDefault(map['weight'], () => defaultsProvider.weight,
          (mapValue) => mapValue as int),
    );
  }

  @override
  Map<String, dynamic> toMap(Vehicle instance) {
    if (instance is Car) {
      return {
        '\$type': 'Car',
        ...const $CarMapMapper().toMap(instance),
      };
    }

    if (instance is Airplane) {
      return {
        '\$type': 'Airplane',
        ...const $AirplaneMapMapper().toMap(instance),
      };
    }

    final map = <String, dynamic>{};

    map['\$type'] = 'Vehicle';

    map['weight'] = instance.weight;

    return map;
  }
}

extension $VehicleMapExtension on Vehicle {
  Map<String, dynamic> toMap() => const $VehicleMapMapper().toMap(this);
  static Vehicle fromMap(Map<String, dynamic> map) =>
      const $VehicleMapMapper().fromMap(map);
}

extension $MapVehicleExtension on Map<String, dynamic> {
  Vehicle toVehicle() => const $VehicleMapMapper().fromMap(this);
}

class $VehicleFieldNames {
  final String fieldName;
  final String prefix;

  $VehicleFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $VehicleFieldNames()
      : fieldName = '',
        prefix = '';

  static const _weight = 'weight';
  String get weight => prefix + _weight;

  @override
  String toString() => fieldName;
}

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $VehicleProtoMapper implements ProtoMapper<Vehicle, GVehicle> {
  const $VehicleProtoMapper();

  @override
  Vehicle fromProto(GVehicle proto) => _$VehicleFromProto(proto);

  @override
  GVehicle toProto(Vehicle entity) => _$VehicleToProto(entity);

  Vehicle fromJson(String json) => _$VehicleFromProto(GVehicle.fromJson(json));
  String toJson(Vehicle entity) => _$VehicleToProto(entity).writeToJson();

  String toBase64Proto(Vehicle entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Vehicle fromBase64Proto(String base64Proto) =>
      GVehicle.fromJson(utf8.decode(base64Decode(base64Proto))).toVehicle();
}

GVehicle _$VehicleToProto(Vehicle instance) {
  var uproto = GVehicle();

  if (instance is Car) {
    uproto.car = (const $CarProtoMapper()).toProto(instance);
    return uproto;
  }

  if (instance is Airplane) {
    uproto.airplane = (const $AirplaneProtoMapper()).toProto(instance);
    return uproto;
  }

  final proto = uproto.vehicle = GFieldsOfVehicle();

  proto.weight = instance.weight;

  return uproto;
}

Vehicle _$VehicleFromProto(GVehicle sInstance) {
  if (sInstance.hasCar()) {
    return sInstance.car.toCar();
  }

  if (sInstance.hasAirplane()) {
    return sInstance.airplane.toAirplane();
  }

  final instance = sInstance.vehicle;
  final ret = Vehicle(
    weight: instance.weight,
  );

  return ret;
}

extension $VehicleProtoExtension on Vehicle {
  GVehicle toProto() => _$VehicleToProto(this);
  String toJson() => _$VehicleToProto(this).writeToJson();

  static Vehicle fromProto(GVehicle proto) => _$VehicleFromProto(proto);
  static Vehicle fromJson(String json) =>
      _$VehicleFromProto(GVehicle.fromJson(json));
}

extension $GVehicleProtoExtension on GVehicle {
  Vehicle toVehicle() => _$VehicleFromProto(this);
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

class $VehicleValidator implements Validator {
  const $VehicleValidator();

  ValidationError? validateWeight(int value, {Vehicle? entity}) {
    return null;
  }

  ValidationError? $validateWeight(int? value, {Vehicle? entity}) {
    if (value == null) {
      return RequiredValidationError('weight');
    }
    return validateWeight(value, entity: entity);
  }

  @override
  ErrorList validate(covariant Vehicle entity) {
    var errors = <ValidationError>[];

    ValidationError? error;
    if ((error = validateWeight(entity.weight, entity: entity)) != null) {
      errors.add(error!);
    }

    return ErrorList(errors);
  }

  @override
  void validateThrowing(covariant Vehicle entity) {
    var errors = validate(entity);
    if (errors.validationErrors.isNotEmpty) throw errors;
  }
}
