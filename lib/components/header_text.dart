import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key, required this.header, required this.subText});
  final String header;
  final String subText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          header,
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subText,
          style: GoogleFonts.montserrat(
            color: const Color(0xAAA8A8A9),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
