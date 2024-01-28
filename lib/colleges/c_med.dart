import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CMedCollege extends StatelessWidget {
  final College college;

  CMedCollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
