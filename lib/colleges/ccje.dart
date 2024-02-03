import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CcjeCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Criminal Justice Education', 'images/ccje.png'),
    );
  }
}
