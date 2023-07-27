import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow(
      {super.key,
      required this.text1,
      required this.text2,
      required this.icon});

  final String text1;
  final String text2;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat-Bold',
          ),
        ),
        const Spacer(),
        Icon(
          icon,
          size: 28,
          color: const Color(0xffc3cbd2),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text2,
          style: const TextStyle(
            color: Color(0xffc3cbd2),
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat-Bold',
          ),
        ),
      ],
    );
  }
}
