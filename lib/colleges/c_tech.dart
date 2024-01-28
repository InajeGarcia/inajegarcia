import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CTechCollege extends StatelessWidget {
  final College college;

  CTechCollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
