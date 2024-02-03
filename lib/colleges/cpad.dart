import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CpadCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Public Administration', 'images/cpad.jpg'),
    );
  }
}
