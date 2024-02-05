import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CollegeDetailsScreen extends StatelessWidget {
  final College college;
  final String dartFileName; // Add this new variable

  CollegeDetailsScreen(this.college, this.dartFileName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              college.imagePath,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text('${college.name}'),
            ElevatedButton(
              onPressed: () {
                // Use the dartFileName to dynamically import the correct Dart file
                Navigator.pushNamed(context, '/colleges/$dartFileName');
              },
              child: Text('View Full Information'),
            ),
          ],
        ),
      ),
    );
  }
}
