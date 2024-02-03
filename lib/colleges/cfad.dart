import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CfadCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College('College of Fine Arts and Designs', 'images/cfad.jpg'),
    );
  }
}
