import 'package:expense_tracker2/screens/auth/blocs/login/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSplashAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomSplashAppBar(
      {required this.currentIndex, required this.totalScreens, super.key});
  final int currentIndex;
  final int totalScreens;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        '$currentIndex/$totalScreens', // Display the current progress
        style: GoogleFonts.montserrat(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ), // Customize your title style
      ),
      centerTitle: false, // Center the title
      actions: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignIn(),
              ),
            );
          },
          child: Text(
            'Skip',
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
