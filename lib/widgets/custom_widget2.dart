import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_cliprrect.dart';

class CustomWidget2 extends StatelessWidget {
  const CustomWidget2(
      {super.key,
      required this.text1,
      required this.shipping,
      required this.price,
      required this.color,
      required this.imagePath});

  final String imagePath;
  final String text1;
  final String shipping;
  final String price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCliprrect(
          imagePath: imagePath,
        ),
        const SizedBox(
          width: 35,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: "Montserrat-SemiBold",
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              "Shipping: $shipping",
              style: const TextStyle(
                fontFamily: "Montserrat-SemiBold",
                fontSize: 18,
                color: Color(0xffc3cbd2),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Row(
              children: [
                Icon(
                  CupertinoIcons.globe,
                  color: Color(0xffc3cbd2),
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Go on website",
                  style: TextStyle(
                    fontFamily: "Montserrat-SemiBold",
                    fontSize: 18,
                    color: Color(0xffc3cbd2),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              width: 135,
              height: 35,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  price,
                  style: const TextStyle(
                    fontFamily: "Montserrat-SemiBold",
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
