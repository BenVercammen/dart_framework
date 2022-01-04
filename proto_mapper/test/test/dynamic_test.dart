import 'package:decimal/decimal.dart';
import 'package:proto_generator_test/grpc/any_host.pb.dart';
import 'package:proto_generator_test/proto_generator_test.dart';
import 'package:proto_generator_test/src/any_host.dart';
import 'package:proto_generator_test/src/appliance_type.dart';
import 'package:proto_generator_test/src/component.dart';
import 'package:proto_generator_test/src/utensils.dart';
import 'package:test/test.dart';

void main() {
  group('Dynamic fields', ()
  {
    test('Null', () {
      _runFieldTest(null);
    });

    test('Recipe', () {
      _runFieldTest(_recipe());
    });

    test('String', () {
      _runFieldTest('test');
    });

    test('Integer', () {
      _runFieldTest(0);
      _runFieldTest(0x7f);
      _runFieldTest(0x7ff);
      _runFieldTest(0x7fff);
      _runFieldTest(0x7ffff);
      _runFieldTest(0x7fffff);
      _runFieldTest(0x7ffffff);
      _runFieldTest(0x7fffffff);
      _runFieldTest(0x7ffffffff);
      _runFieldTest(0x7fffffffff);
      _runFieldTest(0x7ffffffffff);
      _runFieldTest(0x7fffffffffff);
      _runFieldTest(0x7ffffffffffff);
      _runFieldTest(0x7fffffffffffff);
      _runFieldTest(0x7ffffffffffffff);
      _runFieldTest(0x7fffffffffffffff);
      _runFieldTest(9223372036854775807);
      _runFieldTest(-9223372036854775807);
    });

    test('Double', () {
      _runFieldTest(165.9872);
      _runFieldTest(0.0);
      _runFieldTest(0.9872);
      _runFieldTest(double.maxFinite);
      _runFieldTest(double.minPositive);
    });

    test('Boolean', () {
      _runFieldTest(true);
      _runFieldTest(false);
    });

    test('Decimal', () {
      _runFieldTest(Decimal.fromInt(5));
      _runFieldTest(Decimal.fromInt(655));
      _runFieldTest(Decimal.fromInt(657855));
    });

    test('Enum', () {
      _runFieldTest(KnifeType.chefsKnife);
      _runFieldTest(KnifeType.breadKnife);
      _runFieldTest(ChefType.seniorChef);
    });
  });

  group('Dynamic collections', () {
    test('DynamicMap', () {
      final map = DynamicMap()..dynamicMap = {
        "string": "One",
        "int": 2,
        "bool": true,
        "decimal": Decimal.fromInt(654),
        "recipe": _recipe(),
        "dynamic": _dynamicObject(),
        "double": 65.798,
        "enum": KnifeType.chefsKnife,
        "null": null
      }..objectMap = {
        "string": "One",
        "int": 2,
        "bool": true,
        "decimal": Decimal.fromInt(654),
        "recipe": _recipe(),
        "dynamic": _dynamicObject(),
        "double": 65.798,
        "enum": KnifeType.chefsKnife,
      };
      final proto1 = map.toProto();
      final json1 = proto1.writeToJson();
      final proto2 = GDynamicMap.fromJson(json1);
      final json2 = proto2.writeToJson();
      expect(json1, equals(json2));
      expect(proto1, equals(proto2));
      print(json2);
    });

    test('DynamicSet', () {
      final set = DynamicSet()..dynamicSet = {
        "One",
        2,
        true,
        Decimal.fromInt(654),
        _recipe(),
        _dynamicObject(),
        65.798,
        KnifeType.chefsKnife,
        null
      }..objectSet = {
        "One",
        2,
        true,
        Decimal.fromInt(654),
        _recipe(),
        _dynamicObject(),
        65.798,
        KnifeType.chefsKnife,
      };
      final proto1 = set.toProto();
      final json1 = proto1.writeToJson();
      final proto2 = GDynamicSet.fromJson(json1);
      final json2 = proto2.writeToJson();
      expect(json1, equals(json2));
      expect(proto1, equals(proto2));
      print(json2);
    });

    test('DynamicList', () {
      final list = DynamicList()..dynamicList = [
        "One",
        2,
        true,
        Decimal.fromInt(654),
        _recipe(),
        _dynamicObject(),
        65.798,
        KnifeType.chefsKnife,
        null
      ]..objectList = [
        "One",
        2,
        true,
        Decimal.fromInt(654),
        _recipe(),
        _dynamicObject(),
        65.798,
        KnifeType.chefsKnife,
      ];
      final proto1 = list.toProto();
      final json1 = proto1.writeToJson();
      final proto2 = GDynamicList.fromJson(json1);
      final json2 = proto2.writeToJson();
      expect(json1, equals(json2));
      expect(proto1, equals(proto2));
      print(json2);
    });
  });
}

void _runFieldTest(dynamic prop) {
  var object = DynamicObject()
    ..dynamicProperty = prop
    ..objectProperty = prop?? 'null';
  var proto = object.toProto();
  var serialized = object.toJson();
  var deserializedJson = GDynamicObject.fromJson(serialized).toDynamicObject();
  var deserializedProto = proto.toDynamicObject();
  // Only works if Recipe implements equals method... That's why we just compare JSON and toString values
  if (object.dynamicProperty is String) {
    expect(object.dynamicProperty, equals(deserializedJson.dynamicProperty));
    expect(object.dynamicProperty, equals(deserializedProto.dynamicProperty));
  } else {
    expect(object.dynamicProperty.toString(), equals(deserializedJson.dynamicProperty.toString()));
    expect(object.dynamicProperty.toString(), equals(deserializedProto.dynamicProperty.toString()));
  }
  expect(object.toProto().writeToJson(), equals(serialized));
  expect(object.toProto().writeToJson(), equals(deserializedJson.toJson()));
  expect(object.toProto().writeToJson(), equals(deserializedProto.toJson()));
  print(object.toJson());
}

DynamicObject _dynamicObject() {
  DynamicObject object = DynamicObject()
    ..dynamicProperty = _recipe()
    ..objectProperty = _recipe();
  return object;
}

Recipe _recipe() {
  var lasagnaRecipe = Recipe(
      title: "Lasagna",
      category: Category(
          title: "Sauce",
          mainComponent: Component(description: "Red sauce"),
          otherComponents: []),
      ingredients: [
        Ingredient(
            description: "Tomatoes",
            quantity: Decimal.ten,
            precision: 1.2,
            cookingDuration: Duration(minutes: 5),
            mainComponent: Component(description: "Red sauce"),
            otherComponents: [])
      ],
      publishDate: DateTime.now(),
      preparationDuration: Duration(days: 10),
      isPublished: false,
      mainApplianceType: ApplianceType.heat,
      tags: []);
  return lasagnaRecipe;
}
