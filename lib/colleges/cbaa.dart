import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CbaaCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Business Administration and Accountancy',
          'images/cbaa.jpg'),
    );
  }
}
