import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CNCollege extends StatelessWidget {
  final College college;

  CNCollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
