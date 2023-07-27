import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_flutter_task1/widgets/custom_cliprrect.dart';
import 'package:iti_flutter_task1/widgets/custom_container.dart';
import 'package:iti_flutter_task1/widgets/custom_row.dart';
import 'package:iti_flutter_task1/widgets/custom_widget2.dart';

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
        body: const Padding(
          padding: EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomRow(
                  text1: "Price Monitor",
                  icon: Icons.search_rounded,
                  text2: "Search",
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomCliprrect(
                      imagePath: "assets/images/camera.png",
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Photo Camera',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Montserrat-SemiBold",
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Features",
                              style: TextStyle(
                                fontFamily: "Montserrat-SemiBold",
                                fontSize: 18,
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
                          height: 10,
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
                SizedBox(
                  height: 25,
                ),
                CustomRow(
                  text1: 'Shops',
                  text2: 'Best Price',
                  icon: Icons.arrow_drop_down_sharp,
                ),
                SizedBox(
                  height: 25,
                ),
                CustomWidget2(
                  text1: "Lorem Shop",
                  shipping: "Free",
                  price: "\$1.865",
                  color: Color(0xfffed52b),
                  imagePath: "assets/images/image1.png",
                  width: 37,
                ),
                SizedBox(
                  height: 27,
                ),
                CustomWidget2(
                  text1: "Ipsum Shop",
                  shipping: "\$3.6",
                  price: "\$1.901",
                  color: Color(0xff04d9c2),
                  imagePath: "assets/images/image2.png",
                  width: 38,
                ),
                SizedBox(
                  height: 27,
                ),
                CustomWidget2(
                  text1: "Dolor Shop",
                  shipping: "Free",
                  price: "\$1.987",
                  color: Color(0xff009ea1),
                  imagePath: "assets/images/image3.png",
                  width: 47,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
