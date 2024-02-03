import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CeCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Engineering', 'images/ce.jpg'),
    );
  }
}
