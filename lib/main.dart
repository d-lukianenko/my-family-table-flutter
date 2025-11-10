import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_family_table_flutter/ui/pages/recipes_home_page.dart';

void main() {
  runApp(const MyFamilyTableApp());
}

class MyFamilyTableApp extends StatelessWidget {
  const MyFamilyTableApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(seedColor: Colors.green);

    return MaterialApp(
      title: 'My Family Table',
      theme: ThemeData(
        colorScheme: colorScheme.copyWith(surface: Colors.white),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const RecipesHomePage(),
    );
  }
}
