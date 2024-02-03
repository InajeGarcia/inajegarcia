import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CmedCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Medicine', 'images/cmed.jpg'),
    );
  }
}
