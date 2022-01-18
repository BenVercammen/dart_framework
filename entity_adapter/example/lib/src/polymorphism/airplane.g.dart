// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airplane.dart';

// **************************************************************************
// BuilderGenerator
// **************************************************************************

class $AirplaneBuilder implements Builder<Airplane> {
  final _defaultsProvider = $AirplaneDefaultsProvider();

  int? $weight;
  int get weight => $weight ?? _defaultsProvider.weight;
  set weight(int value) => $weight = value;

  int? $wingspan;
  int get wingspan => $wingspan ?? _defaultsProvider.wingspan;
  set wingspan(int value) => $wingspan = value;

  $AirplaneBuilder({
    int? weight,
    int? wingspan,
  }) {
    $weight = weight;
    $wingspan = wingspan;
  }

  $AirplaneBuilder.fromAirplane(Airplane entity)
      : this(
          weight: entity.weight,
          wingspan: entity.wingspan,
        );

  @override
  Airplane build() {
    final entity = _build();
    const $AirplaneValidator().validateThrowing(entity);
    return entity;
  }

  @override
  BuildResult<Airplane> tryBuild() {
    try {
      final entity = _build();
      final errors = $AirplaneValidator().validate(entity);
      final result =
          BuildResult<Airplane>(result: entity, validationErrors: errors);
      return result;
    } catch (ex) {
      return BuildResult<Airplane>(exception: ex);
    }
  }

  Airplane _build() {
    var entity = Airplane(
      weight: weight,
      wingspan: wingspan,
    );
    return entity;
  }
}

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension $AirplaneCopyWithExtension on Airplane {
  Airplane copyWith({
    int? weight,
    int? wingspan,
  }) {
    return Airplane(
      weight: weight ?? this.weight,
      wingspan: wingspan ?? this.wingspan,
    );
  }
}

// **************************************************************************
// DefaultsProviderGenerator
// **************************************************************************

class $AirplaneDefaultsProvider {
  const $AirplaneDefaultsProvider();

  static const _superDefaultsProvider = $VehicleDefaultsProvider();

  Airplane createWithDefaults({
    int? weight,
    int? wingspan,
  }) {
    return Airplane(
      weight: weight ?? this.weight,
      wingspan: wingspan ?? this.wingspan,
    );
  }

  int get weight => _superDefaultsProvider.weight;
  int get wingspan => 0;
}

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $AirplaneMapMapper extends MapMapper<Airplane> {
  const $AirplaneMapMapper();

  @override
  Airplane fromMap(Map<String, dynamic> map) {
    final defaultsProvider = $AirplaneDefaultsProvider();

    return Airplane(
      weight: getValueOrDefault(map['weight'], () => defaultsProvider.weight,
          (mapValue) => mapValue as int),
      wingspan: getValueOrDefault(map['wingspan'],
          () => defaultsProvider.wingspan, (mapValue) => mapValue as int),
    );
  }

  @override
  Map<String, dynamic> toMap(Airplane instance) {
    final map = <String, dynamic>{};

    map['weight'] = instance.weight;
    map['wingspan'] = instance.wingspan;

    return map;
  }
}

extension $AirplaneMapExtension on Airplane {
  Map<String, dynamic> toMap() => const $AirplaneMapMapper().toMap(this);
  static Airplane fromMap(Map<String, dynamic> map) =>
      const $AirplaneMapMapper().fromMap(map);
}

extension $MapAirplaneExtension on Map<String, dynamic> {
  Airplane toAirplane() => const $AirplaneMapMapper().fromMap(this);
}

class $AirplaneFieldNames {
  final String fieldName;
  final String prefix;

  $AirplaneFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $AirplaneFieldNames()
      : fieldName = '',
        prefix = '';

  static const _weight = 'weight';
  String get weight => prefix + _weight;
  static const _wingspan = 'wingspan';
  String get wingspan => prefix + _wingspan;

  @override
  String toString() => fieldName;
}

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $AirplaneProtoMapper implements ProtoMapper<Airplane, GAirplane> {
  const $AirplaneProtoMapper();

  @override
  Airplane fromProto(GAirplane proto) => _$AirplaneFromProto(proto);

  @override
  GAirplane toProto(Airplane entity) => _$AirplaneToProto(entity);

  Airplane fromJson(String json) =>
      _$AirplaneFromProto(GAirplane.fromJson(json));
  String toJson(Airplane entity) => _$AirplaneToProto(entity).writeToJson();

  String toBase64Proto(Airplane entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Airplane fromBase64Proto(String base64Proto) =>
      GAirplane.fromJson(utf8.decode(base64Decode(base64Proto))).toAirplane();
}

GAirplane _$AirplaneToProto(Airplane instance) {
  var proto = GAirplane();

  proto.weight = instance.weight;
  proto.wingspan = instance.wingspan;

  return proto;
}

Airplane _$AirplaneFromProto(GAirplane instance) => Airplane(
      weight: instance.weight,
      wingspan: instance.wingspan,
    );

extension $AirplaneProtoExtension on Airplane {
  GAirplane toProto() => _$AirplaneToProto(this);
  String toJson() => _$AirplaneToProto(this).writeToJson();

  static Airplane fromProto(GAirplane proto) => _$AirplaneFromProto(proto);
  static Airplane fromJson(String json) =>
      _$AirplaneFromProto(GAirplane.fromJson(json));
}

extension $GAirplaneProtoExtension on GAirplane {
  Airplane toAirplane() => _$AirplaneFromProto(this);
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

class $AirplaneValidator extends $VehicleValidator implements Validator {
  const $AirplaneValidator();

  ValidationError? validateWingspan(int value, {Airplane? entity}) {
    return null;
  }

  ValidationError? $validateWingspan(int? value, {Airplane? entity}) {
    if (value == null) {
      return RequiredValidationError('wingspan');
    }
    return validateWingspan(value, entity: entity);
  }

  @override
  ErrorList validate(covariant Airplane entity) {
    var errors = <ValidationError>[];

    ValidationError? error;
    if ((error = validateWingspan(entity.wingspan, entity: entity)) != null) {
      errors.add(error!);
    }

    return ErrorList.merge(super.validate(entity), errors);
  }

  @override
  void validateThrowing(covariant Airplane entity) {
    var errors = validate(entity);
    if (errors.validationErrors.isNotEmpty) throw errors;
  }
}
