import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CHsCollege extends StatelessWidget {
  final College college;

  CHsCollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
