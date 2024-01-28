import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CTeCollege extends StatelessWidget {
  final College college;

  CTeCollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
