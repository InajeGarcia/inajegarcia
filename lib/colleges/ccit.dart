import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CcitCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Communication and Information Technology',
          'images/ccit.jpg'),
    );
  }
}
