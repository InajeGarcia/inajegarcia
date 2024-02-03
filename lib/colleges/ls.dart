import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class LabSchool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('Laboratory School', 'images/ls.png'),
    );
  }
}
