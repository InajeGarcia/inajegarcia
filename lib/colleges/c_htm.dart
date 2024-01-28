import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CHtmCollege extends StatelessWidget {
  final College college;

  CHtmCollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
