import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CarchCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Architecture', 'images/carch.jpg'),
    );
  }
}
