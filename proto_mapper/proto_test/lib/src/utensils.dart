import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/appliance_type.pbenum.dart';
import 'package:proto_generator_test/grpc/utensils.pb.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';

import 'appliance_type.dart';
import 'recipe.dart';

part 'utensils.g.dart';

@Proto(useProtoFieldNamingConventions: true)
@mapProto
enum KnifeType {
  chefsKnife,
  paringKnife,
  breadKnife,
}

@proto
@mapProto
enum ChefType {
  seniorChef,
  sousChef,
  pastryChef,
  fishChef,
}

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

@Proto(useProtoFieldNamingConventions: false)
@MapProto(dateTimePrecision: TimePrecision.milliseconds)
class Kitchen {
  final List<Recipe> recipeList;
  final Map<String, Recipe> recipeMap;
  final DateTime nextInspectionDate;

  const Kitchen({
    required this.recipeList,
    required this.recipeMap,
    required this.nextInspectionDate,
  });
}

@Proto(useProtoFieldNamingConventions: true)
@MapProto(
  dateTimePrecision: TimePrecision.microseconds,
  durationPrecision: TimePrecision.milliseconds,
)
class Chef {
  final Recipe? favoriteRecipe;
  final Knife? favoriteKnife;
  final ApplianceType favoriteApplianceType;
  final List<String> favoriteWords;
  final DateTime birthdate;
  final Duration? shelfLife;

  Chef({
    this.favoriteRecipe,
    required this.favoriteKnife,
    required this.favoriteApplianceType,
    this.favoriteWords = const [],
    required this.birthdate,
    this.shelfLife,
  });
}

@proto
@MapProto(durationPrecision: TimePrecision.microseconds)
class Inventory {
  final Map<String, int> numberOfThings;
  final Map<String, Recipe> recipesByName;
  final Duration? timeSpan;

  const Inventory({
    required this.numberOfThings,
    required this.recipesByName,
    this.timeSpan,
  });
}

@proto
@MapProto()
class PrecisionSubject {
  final DateTime dateProperty;
  final Duration durationProperty;

  const PrecisionSubject({
    required this.dateProperty,
    required this.durationProperty,
  });
}
