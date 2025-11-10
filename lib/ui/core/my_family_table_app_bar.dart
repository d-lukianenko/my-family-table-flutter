import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFamilyTableAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MyFamilyTableAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      shape: const Border(bottom: BorderSide(color: Color(0xFFE5E5E5))),
      centerTitle: false,
      automaticallyImplyLeading: false,
      title: InkWell(
        onTap: () => context.go('/recipes'),
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Text(
          'My Family Table',
          style: GoogleFonts.playfairDisplay(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
