import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CPadCollege extends StatelessWidget {
  final College college;

  CPadCollege(this.college);

  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(college);
  }
}

class College {}
