import 'package:flutter/material.dart';
import 'package:starlink/views/initital_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final activeColor = const Color(0xFFFFFFFF);
  final defaultColor = const Color(0xFFAAAAAA);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (index) => setState(() {
              currentIndex = index;
            }),
            children: [
              const InitialPage(),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/image111.jpg',
                    ),
                  ),
                ),
                height: double.infinity,
                width: double.infinity,
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/image1111.jpg',
                    ),
                  ),
                ),
                height: double.infinity,
                width: double.infinity,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 5,
                  margin: const EdgeInsets.all(2),
                  color: currentIndex == 0 ? activeColor : defaultColor,
                ),
                Container(
                  width: 20,
                  height: 5,
                  margin: const EdgeInsets.all(2),
                  color: currentIndex == 1 ? activeColor : defaultColor,
                ),
                Container(
                  width: 20,
                  height: 5,
                  margin: const EdgeInsets.all(2),
                  color: currentIndex == 2 ? activeColor : defaultColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
