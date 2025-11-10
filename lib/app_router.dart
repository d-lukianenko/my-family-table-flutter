import 'package:go_router/go_router.dart';
import 'package:my_family_table_flutter/ui/pages/recipes_shell_page.dart';
import 'ui/pages/recipes_list_page.dart';
import 'ui/pages/recipe_details_page.dart';

final appRouter = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) => RecipesShellPage(child: child),
      routes: [
        GoRoute(
          path: '/recipes',
          builder: (context, state) => const RecipesListPage(),
          routes: [
            GoRoute(
              path: ':id',
              builder: (context, state) {
                final recipeId = state.pathParameters['id']!;
                return RecipeDetailPage(recipeId: recipeId);
              },
            ),
          ],
        ),
      ],
    ),
    GoRoute(path: '/', redirect: (_, __) => '/recipes'),
  ],
);
