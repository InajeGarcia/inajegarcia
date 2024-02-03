import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CteCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Teacher Education', 'images/cte.jpg'),
    );
  }
}
