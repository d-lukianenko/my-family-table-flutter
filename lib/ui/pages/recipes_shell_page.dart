import 'package:flutter/material.dart';
import 'package:my_family_table_flutter/ui/core/my_family_table_app_bar.dart';

class RecipesShellPage extends StatelessWidget {
  const RecipesShellPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyFamilyTableAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(child: child),
    );
  }
}
