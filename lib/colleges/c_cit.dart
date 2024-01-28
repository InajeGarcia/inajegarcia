import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CCitCollege extends StatelessWidget {
  final College college;

  CCitCollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
