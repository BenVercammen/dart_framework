// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// BuilderGenerator
// **************************************************************************

class $CarBuilder implements Builder<Car> {
  final _defaultsProvider = $CarDefaultsProvider();

  int? $weight;
  int get weight => $weight ?? _defaultsProvider.weight;
  set weight(int value) => $weight = value;

  int? $numberOfDoors;
  int get numberOfDoors => $numberOfDoors ?? _defaultsProvider.numberOfDoors;
  set numberOfDoors(int value) => $numberOfDoors = value;

  $CarBuilder({
    int? weight,
    int? numberOfDoors,
  }) {
    $weight = weight;
    $numberOfDoors = numberOfDoors;
  }

  $CarBuilder.fromCar(Car entity)
      : this(
          weight: entity.weight,
          numberOfDoors: entity.numberOfDoors,
        );

  @override
  Car build() {
    final entity = _build();
    const $CarValidator().validateThrowing(entity);
    return entity;
  }

  @override
  BuildResult<Car> tryBuild() {
    try {
      final entity = _build();
      final errors = $CarValidator().validate(entity);
      final result = BuildResult<Car>(result: entity, validationErrors: errors);
      return result;
    } catch (ex) {
      return BuildResult<Car>(exception: ex);
    }
  }

  Car _build() {
    var entity = Car(
      weight: weight,
      numberOfDoors: numberOfDoors,
    );
    return entity;
  }
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension $CarCopyWithExtension on Car {
  Car copyWith({
    int? weight,
    int? numberOfDoors,
  }) {
    return Car(
      weight: weight ?? this.weight,
      numberOfDoors: numberOfDoors ?? this.numberOfDoors,
    );
  }
}

// **************************************************************************
// DefaultsProviderGenerator
// **************************************************************************

class $CarDefaultsProvider {
  const $CarDefaultsProvider();

  static const _superDefaultsProvider = $VehicleDefaultsProvider();

  Car createWithDefaults({
    int? weight,
    int? numberOfDoors,
  }) {
    return Car(
      weight: weight ?? this.weight,
      numberOfDoors: numberOfDoors ?? this.numberOfDoors,
    );
  }

  int get weight => _superDefaultsProvider.weight;
  int get numberOfDoors => 0;
}

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $CarMapMapper extends MapMapper<Car> {
  const $CarMapMapper();

  @override
  Car fromMap(Map<String, dynamic> map) {
    final defaultsProvider = $CarDefaultsProvider();

    return Car(
      weight: getValueOrDefault(map['weight'], () => defaultsProvider.weight,
          (mapValue) => mapValue as int),
      numberOfDoors: getValueOrDefault(map['numberOfDoors'],
          () => defaultsProvider.numberOfDoors, (mapValue) => mapValue as int),
    );
  }

  @override
  Map<String, dynamic> toMap(Car instance) {
    final map = <String, dynamic>{};

    map['weight'] = instance.weight;
    map['numberOfDoors'] = instance.numberOfDoors;

    return map;
  }
}

extension $CarMapExtension on Car {
  Map<String, dynamic> toMap() => const $CarMapMapper().toMap(this);
  static Car fromMap(Map<String, dynamic> map) =>
      const $CarMapMapper().fromMap(map);
}

extension $MapCarExtension on Map<String, dynamic> {
  Car toCar() => const $CarMapMapper().fromMap(this);
}

class $CarFieldNames {
  final String fieldName;
  final String prefix;

  $CarFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $CarFieldNames()
      : fieldName = '',
        prefix = '';

  static const _weight = 'weight';
  String get weight => prefix + _weight;
  static const _numberOfDoors = 'numberOfDoors';
  String get numberOfDoors => prefix + _numberOfDoors;

  @override
  String toString() => fieldName;
}

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $CarProtoMapper implements ProtoMapper<Car, GCar> {
  const $CarProtoMapper();

  @override
  Car fromProto(GCar proto) => _$CarFromProto(proto);

  @override
  GCar toProto(Car entity) => _$CarToProto(entity);

  Car fromJson(String json) => _$CarFromProto(GCar.fromJson(json));
  String toJson(Car entity) => _$CarToProto(entity).writeToJson();

  String toBase64Proto(Car entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Car fromBase64Proto(String base64Proto) =>
      GCar.fromJson(utf8.decode(base64Decode(base64Proto))).toCar();
}

GCar _$CarToProto(Car instance) {
  var proto = GCar();

  proto.weight = instance.weight;
  proto.numberOfDoors = instance.numberOfDoors;

  return proto;
}

Car _$CarFromProto(GCar instance) => Car(
      numberOfDoors: instance.numberOfDoors,
      weight: instance.weight,
    );

extension $CarProtoExtension on Car {
  GCar toProto() => _$CarToProto(this);
  String toJson() => _$CarToProto(this).writeToJson();

  static Car fromProto(GCar proto) => _$CarFromProto(proto);
  static Car fromJson(String json) => _$CarFromProto(GCar.fromJson(json));
}

extension $GCarProtoExtension on GCar {
  Car toCar() => _$CarFromProto(this);
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

class $CarValidator extends $VehicleValidator implements Validator {
  const $CarValidator();

  ValidationError? validateNumberOfDoors(int value, {Car? entity}) {
    return null;
  }

  ValidationError? $validateNumberOfDoors(int? value, {Car? entity}) {
    if (value == null) {
      return RequiredValidationError('numberOfDoors');
    }
    return validateNumberOfDoors(value, entity: entity);
  }

  @override
  ErrorList validate(covariant Car entity) {
    var errors = <ValidationError>[];

    ValidationError? error;
    if ((error = validateNumberOfDoors(entity.numberOfDoors, entity: entity)) !=
        null) {
      errors.add(error!);
    }

    return ErrorList.merge(super.validate(entity), errors);
  }

  @override
  void validateThrowing(covariant Car entity) {
    var errors = validate(entity);
    if (errors.validationErrors.isNotEmpty) throw errors;
  }
}
