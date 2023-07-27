import 'package:flutter/material.dart';

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
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Price Monitor',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat-Bold',
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search_rounded,
                    size: 28,
                    color: Color(0xffc3cbd2),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Color(0xffc3cbd2),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat-Bold',
                    ),
                  ),
                ],
              ),
              Row(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
