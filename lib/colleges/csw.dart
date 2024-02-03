import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CswCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Social Work', 'images/csw.jpg'),
    );
  }
}
