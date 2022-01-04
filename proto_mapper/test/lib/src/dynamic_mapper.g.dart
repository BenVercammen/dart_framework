import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:decimal/decimal.dart';
import 'package:protobuf/protobuf.dart';
import '../grpc/google/protobuf/any.pb.dart';
import '../grpc/any_host.pb.dart';
import '../grpc/calc_parameters.pb.dart';
import '../grpc/calc_result.pb.dart';
import '../grpc/category.pb.dart';
import '../grpc/component.pb.dart';
import '../grpc/constructors_host.pb.dart';
import '../grpc/empty.pb.dart';
import '../grpc/ingredient.pb.dart';
import '../grpc/key.pb.dart';
import '../grpc/lists_host.pb.dart';
import '../grpc/recipe.pb.dart';
import '../grpc/utensils.pb.dart';
import 'package:proto_generator_test/src/any_host.dart';
import 'package:proto_generator_test/src/appliance_type.dart';
import 'package:proto_generator_test/src/calc_parameters.dart';
import 'package:proto_generator_test/src/calc_result.dart';
import 'package:proto_generator_test/src/category.dart';
import 'package:proto_generator_test/src/component.dart';
import 'package:proto_generator_test/src/constructors_host.dart';
import 'package:proto_generator_test/src/empty.dart';
import 'package:proto_generator_test/src/ingredient.dart';
import 'package:proto_generator_test/src/key.dart';
import 'package:proto_generator_test/src/lists_host.dart';
import 'package:proto_generator_test/src/recipe.dart';
import 'package:proto_generator_test/src/recipe_type.dart';
import 'package:proto_generator_test/src/utensils.dart';

/// Generated Mapper class used for packing and unpacking "google.protobuf.Any" fields or values
class DynamicProtoMapper {
  static final TypeRegistry typeRegistry = TypeRegistry([
    GDynamicObject(),
    GDynamicMap(),
    GDynamicSet(),
    GDynamicList(),
    GCalcParameters(),
    GCalcResult(),
    GCategory(),
    GComponent(),
    GConstructObject1(),
    GConstructObject2(),
    GConstructObject3(),
    GConstructObject4(),
    GConstructObject5(),
    GConstructObject6(),
    GConstructObject7(),
    GConstructObject8(),
    GEmpty(),
    GIngredient(),
    GKey(),
    GListsHost(),
    GRecipe(),
    GKnife(),
    GGarlicPress(),
    GKitchen(),
    GChef(),
    GInventory(),
    GPrecisionSubject()
  ]);

  static dynamic fromProto(Any proto) {
    switch (proto.typeUrl) {
      case 'type.protogenerator.test/String':
        return utf8.decode(proto.value);
      case 'type.protogenerator.test/int8':
        return Uint8List.fromList(proto.value).buffer.asByteData().getUint8(0);
      case 'type.protogenerator.test/int16':
        return Uint8List.fromList(proto.value)
            .buffer
            .asByteData()
            .getUint16(0, Endian.big);
      case 'type.protogenerator.test/int32':
        return Uint8List.fromList(proto.value)
            .buffer
            .asByteData()
            .getUint32(0, Endian.big);
      case 'type.protogenerator.test/int64':
        return Uint8List.fromList(proto.value)
            .buffer
            .asByteData()
            .getUint64(0, Endian.big);
      case 'type.protogenerator.test/float32':
        return Uint8List.fromList(proto.value)
            .buffer
            .asByteData()
            .getFloat32(0, Endian.big);
      case 'type.protogenerator.test/float64':
        return Uint8List.fromList(proto.value)
            .buffer
            .asByteData()
            .getFloat64(0, Endian.big);
      case 'type.protogenerator.test/Null':
        return null;
      case 'type.protogenerator.test/Boolean':
        return proto.value[0] == 1;
      case 'type.protogenerator.test/Decimal':
        return Decimal.parse(utf8.decode(proto.value));
      case 'type.protogenerator.test/GDynamicObject':
        return proto.unpackInto(GDynamicObject()).toDynamicObject();
      case 'type.protogenerator.test/GDynamicMap':
        return proto.unpackInto(GDynamicMap()).toDynamicMap();
      case 'type.protogenerator.test/GDynamicSet':
        return proto.unpackInto(GDynamicSet()).toDynamicSet();
      case 'type.protogenerator.test/GDynamicList':
        return proto.unpackInto(GDynamicList()).toDynamicList();
      case 'type.protogenerator.test/GApplianceType':
        final index =
            Uint8List.fromList(proto.value).buffer.asByteData().getUint8(0);
        return ApplianceType.values[index];
      case 'type.protogenerator.test/GCalcParameters':
        return proto.unpackInto(GCalcParameters()).toCalcParameters();
      case 'type.protogenerator.test/GCalcResult':
        return proto.unpackInto(GCalcResult()).toCalcResult();
      case 'type.protogenerator.test/GCategory':
        return proto.unpackInto(GCategory()).toCategory();
      case 'type.protogenerator.test/GComponent':
        return proto.unpackInto(GComponent()).toComponent();
      case 'type.protogenerator.test/GConstructObject1':
        return proto.unpackInto(GConstructObject1()).toConstructObject1();
      case 'type.protogenerator.test/GConstructObject2':
        return proto.unpackInto(GConstructObject2()).toConstructObject2();
      case 'type.protogenerator.test/GConstructObject3':
        return proto.unpackInto(GConstructObject3()).toConstructObject3();
      case 'type.protogenerator.test/GConstructObject4':
        return proto.unpackInto(GConstructObject4()).toConstructObject4();
      case 'type.protogenerator.test/GConstructObject5':
        return proto.unpackInto(GConstructObject5()).toConstructObject5();
      case 'type.protogenerator.test/GConstructObject6':
        return proto.unpackInto(GConstructObject6()).toConstructObject6();
      case 'type.protogenerator.test/GConstructObject7':
        return proto.unpackInto(GConstructObject7()).toConstructObject7();
      case 'type.protogenerator.test/GConstructObject8':
        return proto.unpackInto(GConstructObject8()).toConstructObject8();
      case 'type.protogenerator.test/GEmpty':
        return proto.unpackInto(GEmpty()).toEmpty();
      case 'type.protogenerator.test/GIngredient':
        return proto.unpackInto(GIngredient()).toIngredient();
      case 'type.protogenerator.test/GKey':
        return proto.unpackInto(GKey()).toKey();
      case 'type.protogenerator.test/GListsHost':
        return proto.unpackInto(GListsHost()).toListsHost();
      case 'type.protogenerator.test/GRecipe':
        return proto.unpackInto(GRecipe()).toRecipe();
      case 'type.protogenerator.test/GRecipeTypes':
        final index =
            Uint8List.fromList(proto.value).buffer.asByteData().getUint8(0);
        return RecipeTypes.values[index];
      case 'type.protogenerator.test/GKnife':
        return proto.unpackInto(GKnife()).toKnife();
      case 'type.protogenerator.test/GGarlicPress':
        return proto.unpackInto(GGarlicPress()).toGarlicPress();
      case 'type.protogenerator.test/GKitchen':
        return proto.unpackInto(GKitchen()).toKitchen();
      case 'type.protogenerator.test/GChef':
        return proto.unpackInto(GChef()).toChef();
      case 'type.protogenerator.test/GInventory':
        return proto.unpackInto(GInventory()).toInventory();
      case 'type.protogenerator.test/GPrecisionSubject':
        return proto.unpackInto(GPrecisionSubject()).toPrecisionSubject();
      case 'type.protogenerator.test/GKnifeType':
        final index =
            Uint8List.fromList(proto.value).buffer.asByteData().getUint8(0);
        return KnifeType.values[index];
      case 'type.protogenerator.test/GChefType':
        final index =
            Uint8List.fromList(proto.value).buffer.asByteData().getUint8(0);
        return ChefType.values[index];
      default:
        throw "${proto.typeUrl} not (yet) supported!";
    }
  }

  static Any toProto(dynamic value) {
    if (value is String) {
      return Any(
          value: utf8.encode(value),
          typeUrl: 'type.protogenerator.test/String');
    }
    if (value is int) {
      final byteSize = (value.bitLength / 8).ceil();
      if (byteSize < 2) {
        return Any(
            value: Uint8List(1)..buffer.asByteData().setInt8(0, value),
            typeUrl: 'type.protogenerator.test/int8');
      } else if (byteSize < 3) {
        return Any(
            value: Uint8List(2)
              ..buffer.asByteData().setInt16(0, value, Endian.big),
            typeUrl: 'type.protogenerator.test/int16');
      } else if (byteSize < 4) {
        return Any(
            value: Uint8List(4)
              ..buffer.asByteData().setInt32(0, value, Endian.big),
            typeUrl: 'type.protogenerator.test/int32');
      } else {
        return Any(
            value: Uint8List(8)
              ..buffer.asByteData().setInt64(0, value, Endian.big),
            typeUrl: 'type.protogenerator.test/int64');
      }
    }
    if (value is double) {
      return Any(
          value: Uint8List(8)
            ..buffer.asByteData().setFloat64(0, value, Endian.big),
          typeUrl: 'type.protogenerator.test/float64');
    }
    if (value == null) {
      return Any(value: null, typeUrl: 'type.protogenerator.test/Null');
    }
    if (value is bool) {
      return Any(
          value: value ? [1] : [0],
          typeUrl: 'type.protogenerator.test/Boolean');
    }
    if (value is Decimal) {
      return Any(
          value: utf8.encode(value.toString()),
          typeUrl: 'type.protogenerator.test/Decimal');
    }
    if (value is DynamicObject) {
      return Any.pack($DynamicObjectProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is DynamicMap) {
      return Any.pack($DynamicMapProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is DynamicSet) {
      return Any.pack($DynamicSetProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is DynamicList) {
      return Any.pack($DynamicListProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is ApplianceType) {
      return Any(
          value: Uint8List(max(1, (value.index.bitLength / 8).ceil()))
            ..buffer.asByteData().setUint8(0, value.index),
          typeUrl: 'type.protogenerator.test/GApplianceType');
    }
    if (value is CalcParameters) {
      return Any.pack($CalcParametersProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is CalcResult) {
      return Any.pack($CalcResultProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is Category) {
      return Any.pack($CategoryProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is Component) {
      return Any.pack($ComponentProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is ConstructObject1) {
      return Any.pack($ConstructObject1ProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is ConstructObject2) {
      return Any.pack($ConstructObject2ProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is ConstructObject3) {
      return Any.pack($ConstructObject3ProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is ConstructObject4) {
      return Any.pack($ConstructObject4ProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is ConstructObject5) {
      return Any.pack($ConstructObject5ProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is ConstructObject6) {
      return Any.pack($ConstructObject6ProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is ConstructObject7) {
      return Any.pack($ConstructObject7ProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is ConstructObject8) {
      return Any.pack($ConstructObject8ProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is Empty) {
      return Any.pack($EmptyProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is Ingredient) {
      return Any.pack($IngredientProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is Key) {
      return Any.pack($KeyProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is ListsHost) {
      return Any.pack($ListsHostProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is Recipe) {
      return Any.pack($RecipeProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is RecipeTypes) {
      return Any(
          value: Uint8List(max(1, (value.index.bitLength / 8).ceil()))
            ..buffer.asByteData().setUint8(0, value.index),
          typeUrl: 'type.protogenerator.test/GRecipeTypes');
    }
    if (value is Knife) {
      return Any.pack($KnifeProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is GarlicPress) {
      return Any.pack($GarlicPressProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is Kitchen) {
      return Any.pack($KitchenProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is Chef) {
      return Any.pack($ChefProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is Inventory) {
      return Any.pack($InventoryProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is PrecisionSubject) {
      return Any.pack($PrecisionSubjectProtoMapper().toProto(value),
          typeUrlPrefix: 'type.protogenerator.test');
    }
    if (value is KnifeType) {
      return Any(
          value: Uint8List(max(1, (value.index.bitLength / 8).ceil()))
            ..buffer.asByteData().setUint8(0, value.index),
          typeUrl: 'type.protogenerator.test/GKnifeType');
    }
    if (value is ChefType) {
      return Any(
          value: Uint8List(max(1, (value.index.bitLength / 8).ceil()))
            ..buffer.asByteData().setUint8(0, value.index),
          typeUrl: 'type.protogenerator.test/GChefType');
    }
    throw "${value.runtimeType} not (yet) supported!";
  }
}
