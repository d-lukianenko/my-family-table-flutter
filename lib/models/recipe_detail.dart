import 'recipe_summary.dart';

class RecipeDetail extends RecipeSummary {
  final List<String> ingredients;
  final List<String> steps;

  const RecipeDetail({
    required super.id,
    required super.title,
    required super.description,
    required super.imagePublicId,
    required super.imageSemanticLabel,
    required this.ingredients,
    required this.steps,
  });
}
