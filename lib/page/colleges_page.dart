import 'package:flutter/material.dart';
import 'package:sharkspinpoint/colleges/carch.dart';
import 'package:sharkspinpoint/colleges/cas.dart';
import 'package:sharkspinpoint/colleges/cbaa.dart';
import 'package:sharkspinpoint/colleges/ccje.dart';
import 'package:sharkspinpoint/colleges/ccit.dart';
import 'package:sharkspinpoint/colleges/cfad.dart';
import 'package:sharkspinpoint/colleges/chs.dart';
import 'package:sharkspinpoint/colleges/claw.dart';
import 'package:sharkspinpoint/colleges/cmed.dart';
import 'package:sharkspinpoint/colleges/cn.dart';
import 'package:sharkspinpoint/colleges/cpad.dart';
import 'package:sharkspinpoint/colleges/csw.dart';
import 'package:sharkspinpoint/colleges/cte.dart';
import 'package:sharkspinpoint/colleges/ctech.dart';
import 'package:sharkspinpoint/colleges/ls.dart';

class College {
  final String name;
  final String imagePath;

  College(this.name, this.imagePath);
}

class CollegesPage extends StatelessWidget {
  // List of colleges with names and image paths
  final List<College> colleges = [
    College('College of Architecture', 'images/carch.png'),
    College('College of Arts and Sciences', 'images/cas.jpg'),
    College('College of Business Administration and Accountancy',
        'images/cbaa.jpg'),
    College('College of Communication and Information Technology',
        'images/ccit.jpg'),
    College('College of Criminal Justice Education', 'images/ccje.png'),
    College('College of Engineering', 'images/ce.jpg'),
    College('College of Fine Arts and Design', 'images/cfad.jpg'),
    College('College of Health Science', 'images/cn.jpg'),
    College('College of Hospitality and Tourism Management', 'images/chtm.jpg'),
    College('College of Law', 'images/claw.jpg'),
    College('College of Medicine', 'images/cmed.jpg'),
    College('College of Nursing', 'images/cn.jpg'),
    College('College of Public Administration', 'images/cpad.jpg'),
    College('College of Social Work', 'images/csw.jpg'),
    College('College of Teacher Education', 'images/cte.jpg'),
    College('College of Technology', 'images/ctech.png'),
    College('Laboratory School', 'images/ls.png'),
    // Add more colleges with respective image paths
  ];

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Image.asset(
                'images/11.png',
                height: 250,
                width: 300,
                fit: BoxFit.contain,
              ),
            ),
            centerTitle: true,
            toolbarHeight: 100,
            elevation: 0,
            backgroundColor:
                Color.fromARGB(255, 26, 99, 194), // Set the background color
            automaticallyImplyLeading: false, // Remove the back button
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ), // Remove the back button
          ),
          body: ListView.builder(
            itemCount: colleges.length,
            itemBuilder: (context, index) {
              final college = colleges[index];
              Color boxColor = Color(0xFFC1E1C1);

              return InkWell(
                onTap: () {
                  // Example: Navigate to a new screen when a college is tapped
                  navigateToCollegeDetails(context, college);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: boxColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(
                      college.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 51, 51, 51), // Text color
                      ),
                    ),
                    subtitle: Text("• ${college.name}"),
                    leading: Image.asset(
                      college.imagePath,
                      width: 56,
                      height: 56,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
  void navigateToCollegeDetails(BuildContext context, College college) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CollegeDetailsScreen(college),
      ),
    );
  }
}

class CollegeDetailsScreen extends StatelessWidget {
  final College college;

  CollegeDetailsScreen(this.college);

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
            Text('Details for ${college.name}'),
          ],
        ),
      ),
    );
  }
}
