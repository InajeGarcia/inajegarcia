import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CBaaCollege extends StatelessWidget {
  final College college;

  CBaaCollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
