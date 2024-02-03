import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CasCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Arts and Sciences', 'images/cas.jpg'),
    );
  }
}
