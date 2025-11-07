import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_family_table_flutter/widgets/recipe_card.dart';
import '../data/recipes_data.dart';

class RecipeListPage extends StatelessWidget {
  const RecipeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
        shape: Border(bottom: BorderSide(color: Color(0xFFE5E5E5))),
        centerTitle: false,
        title: Text(
          'My Family Table',
          style: GoogleFonts.playfairDisplay(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;

          int crossAxisCount;
          if (width < 600) {
            crossAxisCount = 1;
          } else if (width < 1024) {
            crossAxisCount = 2;
          } else {
            crossAxisCount = 3;
          }

          const maxContentWidth = 1200.0;

          return Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: maxContentWidth),
              child: GridView.builder(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  mainAxisExtent: 360,
                ),
                itemCount: recipes.length,
                itemBuilder: (context, index) {
                  final recipe = recipes[index];
                  return RecipeCard(recipe: recipe);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
