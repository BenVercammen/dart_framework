import 'ingredient.dart';

class Recipe {
  final String id;
  final String title;
  final List<Ingredient> ingredients;

  Recipe({
    this.id = '',
    required this.title,
    required this.ingredients,
  });
}
