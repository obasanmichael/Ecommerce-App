import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar(
      {super.key,
      this.onPrevious,
      required this.onNext,
      required this.imageName});
  final VoidCallback? onPrevious;
  final VoidCallback onNext;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (onPrevious != null)
            TextButton(
              onPressed: onPrevious,
              child: Text(
                'Prev',
                style: GoogleFonts.montserrat(
                    color: const Color(0xCCC4C4C4),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            )
          else
            Container(
              width: 40,
            ),
          Image.asset(imageName),
          TextButton(
              onPressed: onNext,
              child: Text(
                'Next',
                style: GoogleFonts.montserrat(
                    color: const Color(0xFFF83758),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ))
        ],
      ),
    );
  }
}
