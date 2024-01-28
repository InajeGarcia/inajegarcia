import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CArchCollege extends StatelessWidget {
  final College college;

  CArchCollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
