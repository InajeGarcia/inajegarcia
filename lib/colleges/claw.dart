import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class ClawCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Law', 'images/claw.jpg'),
    );
  }
}
