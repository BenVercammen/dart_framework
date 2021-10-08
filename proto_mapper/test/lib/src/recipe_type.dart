import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/recipe_type.pbenum.dart';

part 'recipe_type.g.dart';

@proto
@mapProto
enum RecipeTypes {
  cook,
  grill,
  fry,
  stew,
}
