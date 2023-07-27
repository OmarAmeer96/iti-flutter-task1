import 'package:flutter/material.dart';

class CustomCliprrect extends StatelessWidget {
  const CustomCliprrect({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        imagePath,
        width: 130,
        height: 130,
      ),
    );
  }
}
