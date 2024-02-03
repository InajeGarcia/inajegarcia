import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class ChsCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Health and Sciences', 'images/chs.jpg'),
    );
  }
}
