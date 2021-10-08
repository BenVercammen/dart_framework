import 'package:grpc/grpc.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/calc_parameters.pb.dart';
import 'package:proto_generator_test/grpc/calc_result.pb.dart';
import 'package:proto_generator_test/grpc/key.pb.dart';
import 'package:proto_generator_test/grpc/recipe.pb.dart';
import 'package:proto_generator_test/grpc/recipe_services_base.services.pbgrpc.dart';
import 'package:proto_generator_test/grpc/recipe_type.pbenum.dart';
import 'package:proto_generator_test/src/calc_parameters.dart';
import 'package:proto_generator_test/src/calc_result.dart';
import 'package:proto_generator_test/src/crud_services_base.dart';
import 'package:proto_generator_test/src/recipe_type.dart';

import '../proto_generator_test.dart';
import 'key.dart';

part 'recipe_services_base.g.dart';

@protoServices
@mapProtoServices
abstract class RecipeServiceBase extends CrudServicesBase<Recipe> {
  Future<List<Recipe>> search();
  Future<List<Recipe>?> searchNullable();
  Future<void> insertMany(List<Recipe> recipes);
  Future<Recipe?> getNullable();
  Future<int> count();
  Future<int?> countNullable(bool returnNull);
  Future<void> reindex();
  Future<RecipeTypes> getMainRecipeType();
  Future<RecipeTypes?> getMainRecipeTypeNullable();
  Future<List<RecipeTypes>> getRecipeTypeList();
  Future<List<RecipeTypes>?> getRecipeTypeListNullable();
  Future<List<int>> getListOfInts();
  Future<List<int>?> getListOfIntsNullable();

  Future<CalcResult> doCalculation(CalcParameters parameters);

  Future<void> receiveLotsOfArgs(
    String pString,
    int pInt,
    RecipeTypes pRecipeTypes,
    Recipe pRecipe,
    List<String> pListStrings,
    List<int> pListInts,
    List<RecipeTypes> pListRecipeTypes,
    List<Recipe> pListRecipes,
    Set<String> pSetString,
    Set<int> pSetInt,
    Set<RecipeTypes> pSetRecipeTypes,
    Set<Recipe> pSetRecipe,
    Iterable<String> pIterableString,
    Iterable<int> pIterableInt,
    Iterable<RecipeTypes> pIterableRecipeTypes,
    Iterable<Recipe> pIterableRecipe,
  );

  Future<List<int>> receiveLotsOfNullableArgs(
    String? pString,
    int? pInt,
    RecipeTypes? pRecipeTypes,
    Recipe? pRecipe,
    List<String>? pListStrings,
    List<int>? pListInts,
    List<RecipeTypes>? pListRecipeTypes,
    List<Recipe>? pListRecipes,
    Set<String>? pSetString,
    Set<int>? pSetInt,
    Set<RecipeTypes>? pSetRecipeTypes,
    Set<Recipe>? pSetRecipe,
    Iterable<String>? pIterableString,
    Iterable<int>? pIterableInt,
    Iterable<RecipeTypes>? pIterableRecipeTypes,
    Iterable<Recipe>? pIterableRecipe,
  );
}
