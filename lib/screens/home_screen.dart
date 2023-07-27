import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_flutter_task1/widgets/custom_container.dart';
import 'package:iti_flutter_task1/widgets/custom_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff01dbc0),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomRow(
                  text1: "Price Monitor",
                  icon: Icons.search_rounded,
                  text2: "Search",
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        "assets/images/camera.png",
                        width: 130,
                        height: 130,
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Photo Camera',
                          style: TextStyle(
                              fontSize: 20, fontFamily: "Montserrat-SemiBold"),
                        ),
                        Row(
                          children: [
                            Text(
                              "Features",
                              style: TextStyle(
                                fontFamily: "Montserrat-SemiBold",
                                fontSize: 16,
                                color: Color(0xffc3cbd2),
                              ),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Icon(
                              CupertinoIcons.list_bullet,
                              color: Color(0xffc3cbd2),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          children: [
                            CustomContainer(
                              text: 'ISO',
                            ),
                            SizedBox(
                              width: 19,
                            ),
                            CustomContainer(
                              text: 'Back Focus',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            CustomContainer(
                              text: 'Metering',
                            ),
                            SizedBox(
                              width: 29,
                            ),
                            CustomContainer(
                              text: 'Focusing',
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const CustomRow(
                  text1: 'Shops',
                  text2: 'Best Price',
                  icon: Icons.arrow_drop_down_sharp,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
