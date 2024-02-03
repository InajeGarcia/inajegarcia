import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CtechCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Technology', 'images/ctech.jpg'),
    );
  }
}
