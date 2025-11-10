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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 6),
            const Icon(Icons.favorite, color: Color(0xFF10B981), size: 18),
            const SizedBox(width: 6),
            Text(
              'My Family Table',
              style: GoogleFonts.playfairDisplay(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
