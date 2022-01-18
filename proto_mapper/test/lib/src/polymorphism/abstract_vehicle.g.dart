// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abstract_vehicle.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $AbstractVehicleProtoMapper
    implements ProtoMapper<AbstractVehicle, GAbstractVehicle> {
  const $AbstractVehicleProtoMapper();

  @override
  AbstractVehicle fromProto(GAbstractVehicle proto) =>
      _$AbstractVehicleFromProto(proto);

  @override
  GAbstractVehicle toProto(AbstractVehicle entity) =>
      _$AbstractVehicleToProto(entity);

  AbstractVehicle fromJson(String json) =>
      _$AbstractVehicleFromProto(GAbstractVehicle.fromJson(json));
  String toJson(AbstractVehicle entity) =>
      _$AbstractVehicleToProto(entity).writeToJson();

  String toBase64Proto(AbstractVehicle entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  AbstractVehicle fromBase64Proto(String base64Proto) =>
      GAbstractVehicle.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toAbstractVehicle();
}

GAbstractVehicle _$AbstractVehicleToProto(AbstractVehicle instance) {
  var uproto = GAbstractVehicle();

  if (instance is Bicycle) {
    uproto.bicycle = (const $BicycleProtoMapper()).toProto(instance);
    return uproto;
  }

  if (instance is Scooter) {
    uproto.scooter = (const $ScooterProtoMapper()).toProto(instance);
    return uproto;
  }

  throw UnimplementedError();
}

AbstractVehicle _$AbstractVehicleFromProto(GAbstractVehicle sInstance) {
  if (sInstance.hasBicycle()) {
    return sInstance.bicycle.toBicycle();
  }

  if (sInstance.hasScooter()) {
    return sInstance.scooter.toScooter();
  }

  throw UnimplementedError();
}

extension $AbstractVehicleProtoExtension on AbstractVehicle {
  GAbstractVehicle toProto() => _$AbstractVehicleToProto(this);
  String toJson() => _$AbstractVehicleToProto(this).writeToJson();

  static AbstractVehicle fromProto(GAbstractVehicle proto) =>
      _$AbstractVehicleFromProto(proto);
  static AbstractVehicle fromJson(String json) =>
      _$AbstractVehicleFromProto(GAbstractVehicle.fromJson(json));
}

extension $GAbstractVehicleProtoExtension on GAbstractVehicle {
  AbstractVehicle toAbstractVehicle() => _$AbstractVehicleFromProto(this);
}
