import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_family_table_flutter/data/recipes_data.dart';
import 'package:my_family_table_flutter/models/recipe_detail.dart';
import 'package:my_family_table_flutter/ui/core/not_found_recipe_page.dart';

class RecipeDetailPage extends StatelessWidget {
  const RecipeDetailPage({super.key, required this.recipeId});
  final String recipeId;

  @override
  Widget build(BuildContext context) {
    final RecipeDetail? recipe = recipes.firstWhereOrNull(
      (r) => r.id == recipeId,
    );
    if (recipe == null) {
      return const NotFoundRecipePage();
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return ColoredBox(
          color: Colors.white,
          child: Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(22, 24, 16, 32),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 640),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(
                      onPressed: () => context.go('/recipes'),
                      icon: const Icon(Icons.arrow_back, size: 18),
                      label: const Text('Back to recipes'),
                      style: TextButton.styleFrom(
                        foregroundColor: const Color(0xFF047857),
                        backgroundColor: const Color(0xFFDCFCE7),
                        padding: const EdgeInsets.all(14),
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    Text(
                      recipe.title,
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        recipe.description,
                        style: GoogleFonts.inter(fontSize: 16, height: 1.5),
                      ),
                    ),

                    const SizedBox(height: 24),

                    Text(
                      'Ingredients',
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (final item in recipe.ingredients)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Text(
                              '• $item',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                height: 1.4,
                              ),
                            ),
                          ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    Text(
                      'Steps',
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 16),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (var i = 0; i < recipe.steps.length; i++)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              '${i + 1}. ${recipe.steps[i]}',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                height: 1.5,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
