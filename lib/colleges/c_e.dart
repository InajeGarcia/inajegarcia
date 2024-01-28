import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CECollege extends StatelessWidget {
  final College college;

  CECollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
