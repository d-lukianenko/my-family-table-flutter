import 'package:flutter/material.dart';
import 'package:my_family_table_flutter/app_router.dart';

void main() => runApp(const MyFamilyTableApp());

class MyFamilyTableApp extends StatelessWidget {
  const MyFamilyTableApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My Family Table',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}
