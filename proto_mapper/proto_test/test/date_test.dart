import 'package:proto_generator_test/src/appliance_type.dart';
import 'package:proto_generator_test/src/utensils.dart';
import 'package:proto_generator_test/grpc/utensils.pb.dart';

import 'package:test/test.dart';

/// Currently, dates are only stored up to the milliseconds, preferrable this should also be possible up to the microseconds.
void main() {
  group('Dates', () {
    test('Microseconds precision', () {
      final chef = Chef(
          favoriteApplianceType: ApplianceType.cutlery,
          favoriteKnife: null,
          favoriteRecipe: null,
          birthdate: DateTime(2000, 1, 2, 3, 4, 5, 6, 7));
      final serialized = chef.toJson();
      final deserialized = GChef.fromJson(serialized).toChef();
      expect(chef.birthdate, equals(deserialized.birthdate));
    });

    test('Milliseconds', () {
      final kitchen = Kitchen(
          recipeList: [],
          recipeMap: {},
          nextInspectionDate: DateTime(2000, 1, 2, 3, 4, 5, 6, 7));
      final serialized = kitchen.toJson();
      final deserialized = GKitchen.fromJson(serialized).toKitchen();
      expect(kitchen.nextInspectionDate,
          isNot(equals(deserialized.nextInspectionDate)));
      expect(DateTime(2000, 1, 2, 3, 4, 5, 6),
          equals(deserialized.nextInspectionDate));
    });
  });
}
