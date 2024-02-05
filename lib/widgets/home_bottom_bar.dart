import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';
import 'package:sharkspinpoint/page/home_page.dart';
import 'package:sharkspinpoint/page/spot_page.dart';
import 'package:sharkspinpoint/page/info_page.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  double _borderRadius = 20.0; // Initial border radius value
  final screens = [
    HomePage(),
    CollegesPage(),
    MapPage(),
    SpotPage(),
    InfoPage(),
  ];

  void setBorderRadius(double radius) {
    setState(() {
      _borderRadius = radius;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(_borderRadius)),
        child: BottomNavigationBar(
          iconSize: 30,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: "Home",
              backgroundColor: Color.fromARGB(255, 43, 163, 105),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_rounded),
              label: "Colleges",
              backgroundColor: Color.fromARGB(255, 26, 99, 194),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map_rounded),
              label: "Map",
              backgroundColor: Color.fromARGB(255, 219, 184, 87),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.place_rounded),
              label: "Spot",
              backgroundColor: Color.fromARGB(255, 43, 163, 105),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_rounded),
              label: "About",
              backgroundColor: Color.fromARGB(255, 26, 99, 194),
            ),
          ],
        ),
      ),
    );
  }
}
