import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CFadCollege extends StatelessWidget {
  final College college;

  CFadCollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
