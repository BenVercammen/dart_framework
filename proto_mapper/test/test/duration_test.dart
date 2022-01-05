import 'package:proto_generator_test/src/appliance_type.dart';
import 'package:proto_generator_test/src/utensils.dart';
import 'package:proto_generator_test/grpc/utensils.pb.dart';

import 'package:test/test.dart';

/// Currently, dates are only stored up to the milliseconds, preferrable this should also be possible up to the microseconds.
void main() {
  group('Durations', () {
    test('Milliseconds precision', () {
      final chef = Chef(
        favoriteApplianceType: ApplianceType.cutlery,
        favoriteKnife: null,
        favoriteRecipe: null,
        birthdate: DateTime(2000, 1, 2, 3, 4, 5, 6, 7),
        shelfLife: Duration(milliseconds: 10, microseconds: 3),
      );
      final serialized = chef.toJson();
      final deserialized = GChef.fromJson(serialized).toChef();
      expect(
          deserialized.shelfLife,
          equals(Duration(
            milliseconds: 10,
            microseconds: 0,
          )));
    });

    test('Microseconds precision', () {
      final inv = Inventory(
        numberOfThings: {},
        recipesByName: {},
        timeSpan: Duration(milliseconds: 10, microseconds: 3),
      );
      final serialized = inv.toJson();
      final deserialized = GInventory.fromJson(serialized).toInventory();
      expect(
          deserialized.timeSpan,
          equals(Duration(
            milliseconds: 10,
            microseconds: 3,
          )));
    });
  });
}
