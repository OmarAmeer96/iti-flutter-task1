import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 70),
      height: 30,
      decoration: const BoxDecoration(
        color: Color(0xffdae9f5),
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
