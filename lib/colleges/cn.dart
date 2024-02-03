import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CnCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Nursing', 'images/cn.jpg'),
    );
  }
}
