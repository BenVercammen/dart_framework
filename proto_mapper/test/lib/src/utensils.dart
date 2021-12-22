import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/appliance_type.pbenum.dart';
import 'package:proto_generator_test/grpc/utensils.pb.dart';

import 'appliance_type.dart';
import 'recipe.dart';

part 'utensils.g.dart';

@proto
@mapProto
enum KnifeType { chefsKnife, paringKnife, breadKnife }

@proto
@mapProto
class Knife {
  final String name;
  final KnifeType type;

  Knife({required this.name, required this.type});
}

@proto
@mapProto
class GarlicPress {
  final String name;
  final bool machineWashable;

  GarlicPress({required this.name, required this.machineWashable});
}

@proto
@mapProto
class Kitchen {
  final List<Recipe> recipeList;
  final Map<String, Recipe> recipeMap;

  const Kitchen({
    required this.recipeList,
    required this.recipeMap,
  });
}

@proto
@mapProto
class Chef {
  final Recipe favoriteRecipe;
  final Knife favoriteKnife;
  final ApplianceType favoriteApplianceType;

  Chef({required this.favoriteRecipe, required this.favoriteKnife, required this.favoriteApplianceType});
}

@proto
@mapProto
class Inventory {
  final Map<String, int> numberOfThings;
  final Map<String, Recipe> recipesByName;

  const Inventory({
    required this.numberOfThings,
    required this.recipesByName,
  });
}
