import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CLawCollege extends StatelessWidget {
  final College college;

  CLawCollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
