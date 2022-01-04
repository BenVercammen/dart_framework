// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'any_host.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $DynamicObjectProtoMapper
    implements ProtoMapper<DynamicObject, GDynamicObject> {
  const $DynamicObjectProtoMapper();

  @override
  DynamicObject fromProto(GDynamicObject proto) =>
      _$DynamicObjectFromProto(proto);

  @override
  GDynamicObject toProto(DynamicObject entity) =>
      _$DynamicObjectToProto(entity);

  DynamicObject fromJson(String json) =>
      _$DynamicObjectFromProto(GDynamicObject.fromJson(json));
  String toJson(DynamicObject entity) =>
      _$DynamicObjectToProto(entity).writeToJson();

  String toBase64Proto(DynamicObject entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  DynamicObject fromBase64Proto(String base64Proto) =>
      GDynamicObject.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toDynamicObject();
}

GDynamicObject _$DynamicObjectToProto(DynamicObject instance) {
  var proto = GDynamicObject();

  proto.dynamicProperty = DynamicProtoMapper.toProto(instance.dynamicProperty);
  proto.objectProperty = DynamicProtoMapper.toProto(instance.objectProperty);

  return proto;
}

DynamicObject _$DynamicObjectFromProto(GDynamicObject instance) =>
    DynamicObject()
      ..dynamicProperty = DynamicProtoMapper.fromProto(instance.dynamicProperty)
      ..objectProperty = DynamicProtoMapper.fromProto(instance.objectProperty);

extension $DynamicObjectProtoExtension on DynamicObject {
  GDynamicObject toProto() => _$DynamicObjectToProto(this);
  String toJson() => _$DynamicObjectToProto(this).writeToJson();

  static DynamicObject fromProto(GDynamicObject proto) =>
      _$DynamicObjectFromProto(proto);
  static DynamicObject fromJson(String json) =>
      _$DynamicObjectFromProto(GDynamicObject.fromJson(json));
}

extension $GDynamicObjectProtoExtension on GDynamicObject {
  DynamicObject toDynamicObject() => _$DynamicObjectFromProto(this);
}

class $DynamicMapProtoMapper implements ProtoMapper<DynamicMap, GDynamicMap> {
  const $DynamicMapProtoMapper();

  @override
  DynamicMap fromProto(GDynamicMap proto) => _$DynamicMapFromProto(proto);

  @override
  GDynamicMap toProto(DynamicMap entity) => _$DynamicMapToProto(entity);

  DynamicMap fromJson(String json) =>
      _$DynamicMapFromProto(GDynamicMap.fromJson(json));
  String toJson(DynamicMap entity) => _$DynamicMapToProto(entity).writeToJson();

  String toBase64Proto(DynamicMap entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  DynamicMap fromBase64Proto(String base64Proto) =>
      GDynamicMap.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toDynamicMap();
}

GDynamicMap _$DynamicMapToProto(DynamicMap instance) {
  var proto = GDynamicMap();

  proto.dynamicMap.addAll(instance.dynamicMap
      .map((k, v) => MapEntry(k, DynamicProtoMapper.toProto(v))));

  proto.objectMap.addAll(instance.objectMap
      .map((k, v) => MapEntry(k, DynamicProtoMapper.toProto(v))));

  return proto;
}

DynamicMap _$DynamicMapFromProto(GDynamicMap instance) => DynamicMap()
  ..dynamicMap = instance.dynamicMap
      .map((k, v) => MapEntry(k, DynamicProtoMapper.fromProto(v)))
  ..objectMap = instance.objectMap
      .map((k, v) => MapEntry(k, DynamicProtoMapper.fromProto(v)));

extension $DynamicMapProtoExtension on DynamicMap {
  GDynamicMap toProto() => _$DynamicMapToProto(this);
  String toJson() => _$DynamicMapToProto(this).writeToJson();

  static DynamicMap fromProto(GDynamicMap proto) =>
      _$DynamicMapFromProto(proto);
  static DynamicMap fromJson(String json) =>
      _$DynamicMapFromProto(GDynamicMap.fromJson(json));
}

extension $GDynamicMapProtoExtension on GDynamicMap {
  DynamicMap toDynamicMap() => _$DynamicMapFromProto(this);
}

class $DynamicSetProtoMapper implements ProtoMapper<DynamicSet, GDynamicSet> {
  const $DynamicSetProtoMapper();

  @override
  DynamicSet fromProto(GDynamicSet proto) => _$DynamicSetFromProto(proto);

  @override
  GDynamicSet toProto(DynamicSet entity) => _$DynamicSetToProto(entity);

  DynamicSet fromJson(String json) =>
      _$DynamicSetFromProto(GDynamicSet.fromJson(json));
  String toJson(DynamicSet entity) => _$DynamicSetToProto(entity).writeToJson();

  String toBase64Proto(DynamicSet entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  DynamicSet fromBase64Proto(String base64Proto) =>
      GDynamicSet.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toDynamicSet();
}

GDynamicSet _$DynamicSetToProto(DynamicSet instance) {
  var proto = GDynamicSet();

  proto.dynamicSet
      .addAll(instance.dynamicSet.map((e) => DynamicProtoMapper.toProto(e)));

  proto.objectSet
      .addAll(instance.objectSet.map((e) => DynamicProtoMapper.toProto(e)));

  return proto;
}

DynamicSet _$DynamicSetFromProto(GDynamicSet instance) => DynamicSet()
  ..dynamicSet = Set<dynamic>.unmodifiable(
      instance.dynamicSet.map((e) => DynamicProtoMapper.fromProto(e)))
  ..objectSet = Set<Object>.unmodifiable(
      instance.objectSet.map((e) => DynamicProtoMapper.fromProto(e)));

extension $DynamicSetProtoExtension on DynamicSet {
  GDynamicSet toProto() => _$DynamicSetToProto(this);
  String toJson() => _$DynamicSetToProto(this).writeToJson();

  static DynamicSet fromProto(GDynamicSet proto) =>
      _$DynamicSetFromProto(proto);
  static DynamicSet fromJson(String json) =>
      _$DynamicSetFromProto(GDynamicSet.fromJson(json));
}

extension $GDynamicSetProtoExtension on GDynamicSet {
  DynamicSet toDynamicSet() => _$DynamicSetFromProto(this);
}

class $DynamicListProtoMapper
    implements ProtoMapper<DynamicList, GDynamicList> {
  const $DynamicListProtoMapper();

  @override
  DynamicList fromProto(GDynamicList proto) => _$DynamicListFromProto(proto);

  @override
  GDynamicList toProto(DynamicList entity) => _$DynamicListToProto(entity);

  DynamicList fromJson(String json) =>
      _$DynamicListFromProto(GDynamicList.fromJson(json));
  String toJson(DynamicList entity) =>
      _$DynamicListToProto(entity).writeToJson();

  String toBase64Proto(DynamicList entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  DynamicList fromBase64Proto(String base64Proto) =>
      GDynamicList.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toDynamicList();
}

GDynamicList _$DynamicListToProto(DynamicList instance) {
  var proto = GDynamicList();

  proto.dynamicList
      .addAll(instance.dynamicList.map((e) => DynamicProtoMapper.toProto(e)));

  proto.objectList
      .addAll(instance.objectList.map((e) => DynamicProtoMapper.toProto(e)));

  return proto;
}

DynamicList _$DynamicListFromProto(GDynamicList instance) => DynamicList()
  ..dynamicList = List<dynamic>.unmodifiable(
      instance.dynamicList.map((e) => DynamicProtoMapper.fromProto(e)))
  ..objectList = List<Object>.unmodifiable(
      instance.objectList.map((e) => DynamicProtoMapper.fromProto(e)));

extension $DynamicListProtoExtension on DynamicList {
  GDynamicList toProto() => _$DynamicListToProto(this);
  String toJson() => _$DynamicListToProto(this).writeToJson();

  static DynamicList fromProto(GDynamicList proto) =>
      _$DynamicListFromProto(proto);
  static DynamicList fromJson(String json) =>
      _$DynamicListFromProto(GDynamicList.fromJson(json));
}

extension $GDynamicListProtoExtension on GDynamicList {
  DynamicList toDynamicList() => _$DynamicListFromProto(this);
}
