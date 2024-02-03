import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CarchCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CollegeDetailsScreen(
      College(
        'College of Architecture', 'images/carch.jpg',
        //'''The College of Criminal Justice Education focuses on training future law enforcement professionals. Students learn about criminal law, criminology, and the principles of justice.'''
      ),
    );
  }
}
