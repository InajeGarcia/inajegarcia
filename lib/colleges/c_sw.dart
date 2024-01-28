import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CSwCollege extends StatelessWidget {
  final College college;

  CSwCollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
