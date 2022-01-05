// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utensils.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $KnifeProtoMapper implements ProtoMapper<Knife, GKnife> {
  const $KnifeProtoMapper();

  @override
  Knife fromProto(GKnife proto) => _$KnifeFromProto(proto);

  @override
  GKnife toProto(Knife entity) => _$KnifeToProto(entity);

  Knife fromJson(String json) => _$KnifeFromProto(GKnife.fromJson(json));
  String toJson(Knife entity) => _$KnifeToProto(entity).writeToJson();

  String toBase64Proto(Knife entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Knife fromBase64Proto(String base64Proto) =>
      GKnife.fromJson(utf8.decode(base64Decode(base64Proto))).toKnife();
}

GKnife _$KnifeToProto(Knife instance) {
  var proto = GKnife();

  proto.name = instance.name;
  proto.type = GKnifeType.valueOf(instance.type.index)!;

  return proto;
}

Knife _$KnifeFromProto(GKnife instance) => Knife(
      name: instance.name,
      type: KnifeType.values[instance.type.value],
    );

extension $KnifeProtoExtension on Knife {
  GKnife toProto() => _$KnifeToProto(this);
  String toJson() => _$KnifeToProto(this).writeToJson();

  static Knife fromProto(GKnife proto) => _$KnifeFromProto(proto);
  static Knife fromJson(String json) => _$KnifeFromProto(GKnife.fromJson(json));
}

extension $GKnifeProtoExtension on GKnife {
  Knife toKnife() => _$KnifeFromProto(this);
}

class $GarlicPressProtoMapper
    implements ProtoMapper<GarlicPress, GGarlicPress> {
  const $GarlicPressProtoMapper();

  @override
  GarlicPress fromProto(GGarlicPress proto) => _$GarlicPressFromProto(proto);

  @override
  GGarlicPress toProto(GarlicPress entity) => _$GarlicPressToProto(entity);

  GarlicPress fromJson(String json) =>
      _$GarlicPressFromProto(GGarlicPress.fromJson(json));
  String toJson(GarlicPress entity) =>
      _$GarlicPressToProto(entity).writeToJson();

  String toBase64Proto(GarlicPress entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  GarlicPress fromBase64Proto(String base64Proto) =>
      GGarlicPress.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toGarlicPress();
}

GGarlicPress _$GarlicPressToProto(GarlicPress instance) {
  var proto = GGarlicPress();

  proto.name = instance.name;
  proto.machineWashable = instance.machineWashable;

  return proto;
}

GarlicPress _$GarlicPressFromProto(GGarlicPress instance) => GarlicPress(
      name: instance.name,
      machineWashable: instance.machineWashable,
    );

extension $GarlicPressProtoExtension on GarlicPress {
  GGarlicPress toProto() => _$GarlicPressToProto(this);
  String toJson() => _$GarlicPressToProto(this).writeToJson();

  static GarlicPress fromProto(GGarlicPress proto) =>
      _$GarlicPressFromProto(proto);
  static GarlicPress fromJson(String json) =>
      _$GarlicPressFromProto(GGarlicPress.fromJson(json));
}

extension $GGarlicPressProtoExtension on GGarlicPress {
  GarlicPress toGarlicPress() => _$GarlicPressFromProto(this);
}

class $KitchenProtoMapper implements ProtoMapper<Kitchen, GKitchen> {
  const $KitchenProtoMapper();

  @override
  Kitchen fromProto(GKitchen proto) => _$KitchenFromProto(proto);

  @override
  GKitchen toProto(Kitchen entity) => _$KitchenToProto(entity);

  Kitchen fromJson(String json) => _$KitchenFromProto(GKitchen.fromJson(json));
  String toJson(Kitchen entity) => _$KitchenToProto(entity).writeToJson();

  String toBase64Proto(Kitchen entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Kitchen fromBase64Proto(String base64Proto) =>
      GKitchen.fromJson(utf8.decode(base64Decode(base64Proto))).toKitchen();
}

GKitchen _$KitchenToProto(Kitchen instance) {
  var proto = GKitchen();

  proto.recipeList.addAll(
      instance.recipeList.map((e) => const $RecipeProtoMapper().toProto(e)));

  proto.recipeMap.addAll(instance.recipeMap
      .map((k, v) => MapEntry(k, const $RecipeProtoMapper().toProto(v))));

  proto.nextInspectionDate =
      Int64(instance.nextInspectionDate.millisecondsSinceEpoch);

  return proto;
}

Kitchen _$KitchenFromProto(GKitchen instance) => Kitchen(
      recipeList: List<Recipe>.unmodifiable(instance.recipeList
          .map((e) => const $RecipeProtoMapper().fromProto(e))),
      recipeMap: instance.recipeMap
          .map((k, v) => MapEntry(k, const $RecipeProtoMapper().fromProto(v))),
      nextInspectionDate: DateTime.fromMillisecondsSinceEpoch(
          instance.nextInspectionDate.toInt()),
    );

extension $KitchenProtoExtension on Kitchen {
  GKitchen toProto() => _$KitchenToProto(this);
  String toJson() => _$KitchenToProto(this).writeToJson();

  static Kitchen fromProto(GKitchen proto) => _$KitchenFromProto(proto);
  static Kitchen fromJson(String json) =>
      _$KitchenFromProto(GKitchen.fromJson(json));
}

extension $GKitchenProtoExtension on GKitchen {
  Kitchen toKitchen() => _$KitchenFromProto(this);
}

class $ChefProtoMapper implements ProtoMapper<Chef, GChef> {
  const $ChefProtoMapper();

  @override
  Chef fromProto(GChef proto) => _$ChefFromProto(proto);

  @override
  GChef toProto(Chef entity) => _$ChefToProto(entity);

  Chef fromJson(String json) => _$ChefFromProto(GChef.fromJson(json));
  String toJson(Chef entity) => _$ChefToProto(entity).writeToJson();

  String toBase64Proto(Chef entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Chef fromBase64Proto(String base64Proto) =>
      GChef.fromJson(utf8.decode(base64Decode(base64Proto))).toChef();
}

GChef _$ChefToProto(Chef instance) {
  var proto = GChef();

  if (instance.favoriteRecipe != null) {
    proto.favoriteRecipe =
        const $RecipeProtoMapper().toProto(instance.favoriteRecipe!);
  }
  proto.favoriteRecipeHasValue = instance.favoriteRecipe != null;

  if (instance.favoriteKnife != null) {
    proto.favoriteKnife =
        const $KnifeProtoMapper().toProto(instance.favoriteKnife!);
  }
  proto.favoriteKnifeHasValue = instance.favoriteKnife != null;

  proto.favoriteApplianceType =
      GApplianceType.valueOf(instance.favoriteApplianceType.index)!;
  proto.favoriteWords.addAll(instance.favoriteWords);

  proto.birthdate = Int64(instance.birthdate.microsecondsSinceEpoch);
  if (instance.shelfLife != null) {
    proto.shelfLife = instance.shelfLife!.inMilliseconds.toDouble();
  }
  proto.shelfLifeHasValue = instance.shelfLife != null;

  return proto;
}

Chef _$ChefFromProto(GChef instance) => Chef(
      favoriteRecipe: (instance.favoriteRecipeHasValue
          ? (const $RecipeProtoMapper().fromProto(instance.favoriteRecipe))
          : null),
      favoriteKnife: (instance.favoriteKnifeHasValue
          ? (const $KnifeProtoMapper().fromProto(instance.favoriteKnife))
          : null),
      favoriteApplianceType:
          ApplianceType.values[instance.favoriteApplianceType.value],
      favoriteWords:
          List<String>.unmodifiable(instance.favoriteWords.map((e) => e)),
      birthdate:
          DateTime.fromMicrosecondsSinceEpoch(instance.birthdate.toInt()),
      shelfLife: (instance.shelfLifeHasValue
          ? (Duration(milliseconds: instance.shelfLife.toInt()))
          : null),
    );

extension $ChefProtoExtension on Chef {
  GChef toProto() => _$ChefToProto(this);
  String toJson() => _$ChefToProto(this).writeToJson();

  static Chef fromProto(GChef proto) => _$ChefFromProto(proto);
  static Chef fromJson(String json) => _$ChefFromProto(GChef.fromJson(json));
}

extension $GChefProtoExtension on GChef {
  Chef toChef() => _$ChefFromProto(this);
}

class $InventoryProtoMapper implements ProtoMapper<Inventory, GInventory> {
  const $InventoryProtoMapper();

  @override
  Inventory fromProto(GInventory proto) => _$InventoryFromProto(proto);

  @override
  GInventory toProto(Inventory entity) => _$InventoryToProto(entity);

  Inventory fromJson(String json) =>
      _$InventoryFromProto(GInventory.fromJson(json));
  String toJson(Inventory entity) => _$InventoryToProto(entity).writeToJson();

  String toBase64Proto(Inventory entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Inventory fromBase64Proto(String base64Proto) =>
      GInventory.fromJson(utf8.decode(base64Decode(base64Proto))).toInventory();
}

GInventory _$InventoryToProto(Inventory instance) {
  var proto = GInventory();

  proto.numberOfThings
      .addAll(instance.numberOfThings.map((k, v) => MapEntry(k, v)));

  proto.recipesByName.addAll(instance.recipesByName
      .map((k, v) => MapEntry(k, const $RecipeProtoMapper().toProto(v))));

  if (instance.timeSpan != null) {
    proto.timeSpan = instance.timeSpan!.inMicroseconds.toDouble();
  }
  proto.timeSpanHasValue = instance.timeSpan != null;

  return proto;
}

Inventory _$InventoryFromProto(GInventory instance) => Inventory(
      numberOfThings: instance.numberOfThings.map((k, v) => MapEntry(k, v)),
      recipesByName: instance.recipesByName
          .map((k, v) => MapEntry(k, const $RecipeProtoMapper().fromProto(v))),
      timeSpan: (instance.timeSpanHasValue
          ? (Duration(microseconds: instance.timeSpan.toInt()))
          : null),
    );

extension $InventoryProtoExtension on Inventory {
  GInventory toProto() => _$InventoryToProto(this);
  String toJson() => _$InventoryToProto(this).writeToJson();

  static Inventory fromProto(GInventory proto) => _$InventoryFromProto(proto);
  static Inventory fromJson(String json) =>
      _$InventoryFromProto(GInventory.fromJson(json));
}

extension $GInventoryProtoExtension on GInventory {
  Inventory toInventory() => _$InventoryFromProto(this);
}

class $PrecisionSubjectProtoMapper
    implements ProtoMapper<PrecisionSubject, GPrecisionSubject> {
  const $PrecisionSubjectProtoMapper();

  @override
  PrecisionSubject fromProto(GPrecisionSubject proto) =>
      _$PrecisionSubjectFromProto(proto);

  @override
  GPrecisionSubject toProto(PrecisionSubject entity) =>
      _$PrecisionSubjectToProto(entity);

  PrecisionSubject fromJson(String json) =>
      _$PrecisionSubjectFromProto(GPrecisionSubject.fromJson(json));
  String toJson(PrecisionSubject entity) =>
      _$PrecisionSubjectToProto(entity).writeToJson();

  String toBase64Proto(PrecisionSubject entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  PrecisionSubject fromBase64Proto(String base64Proto) =>
      GPrecisionSubject.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toPrecisionSubject();
}

GPrecisionSubject _$PrecisionSubjectToProto(PrecisionSubject instance) {
  var proto = GPrecisionSubject();

  proto.dateProperty = Int64(instance.dateProperty.microsecondsSinceEpoch);
  proto.durationProperty = instance.durationProperty.inMicroseconds.toDouble();

  return proto;
}

PrecisionSubject _$PrecisionSubjectFromProto(GPrecisionSubject instance) =>
    PrecisionSubject(
      dateProperty:
          DateTime.fromMicrosecondsSinceEpoch(instance.dateProperty.toInt()),
      durationProperty:
          Duration(microseconds: instance.durationProperty.toInt()),
    );

extension $PrecisionSubjectProtoExtension on PrecisionSubject {
  GPrecisionSubject toProto() => _$PrecisionSubjectToProto(this);
  String toJson() => _$PrecisionSubjectToProto(this).writeToJson();

  static PrecisionSubject fromProto(GPrecisionSubject proto) =>
      _$PrecisionSubjectFromProto(proto);
  static PrecisionSubject fromJson(String json) =>
      _$PrecisionSubjectFromProto(GPrecisionSubject.fromJson(json));
}

extension $GPrecisionSubjectProtoExtension on GPrecisionSubject {
  PrecisionSubject toPrecisionSubject() => _$PrecisionSubjectFromProto(this);
}

class $KnifeTypeProtoMapper implements ProtoMapper<KnifeType, GKnifeType> {
  const $KnifeTypeProtoMapper();

  @override
  KnifeType fromProto(GKnifeType proto) => KnifeType.values[proto.value];

  @override
  GKnifeType toProto(KnifeType entity) => GKnifeType.valueOf(entity.index)!;
}

extension $GKnifeTypeProtoExtension on GKnifeType {
  KnifeType toKnifeType() => const $KnifeTypeProtoMapper().fromProto(this);
}

class $ChefTypeProtoMapper implements ProtoMapper<ChefType, GChefType> {
  const $ChefTypeProtoMapper();

  @override
  ChefType fromProto(GChefType proto) => ChefType.values[proto.value];

  @override
  GChefType toProto(ChefType entity) => GChefType.valueOf(entity.index)!;
}

extension $GChefTypeProtoExtension on GChefType {
  ChefType toChefType() => const $ChefTypeProtoMapper().fromProto(this);
}
