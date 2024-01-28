import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CAsCollege extends StatelessWidget {
  final College college;

  CAsCollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
