import 'package:flutter/material.dart';

class IconLink extends StatelessWidget {
  final String image;
  final Color borderColor;
  final VoidCallback? onTap;

  const IconLink({
    super.key,
    required this.image,
    this.borderColor = Colors.red,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 70, // Set a fixed size for the container
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xFFFCF3F6),
          shape: BoxShape.circle,
          border: Border.all(color: borderColor, width: 1), // Red border
        ),
        child: Center(
          child: Image.asset(image),
        ),
      ),
    );
  }
}

