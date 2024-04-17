import 'package:flutter/material.dart';
import 'package:sharkspinpoint/collge/cas.dart';
import 'package:sharkspinpoint/collge/cbaa.dart';
import 'package:sharkspinpoint/collge/carch.dart';
import 'package:sharkspinpoint/collge/ccit.dart';
import 'package:sharkspinpoint/collge/ccje.dart';
import 'package:sharkspinpoint/collge/ce.dart';
import 'package:sharkspinpoint/collge/cfad.dart';
import 'package:sharkspinpoint/collge/chs.dart';
import 'package:sharkspinpoint/collge/chtm.dart';
import 'package:sharkspinpoint/collge/claw.dart';
import 'package:sharkspinpoint/collge/cmed.dart';
import 'package:sharkspinpoint/collge/cn.dart';
import 'package:sharkspinpoint/collge/cpad.dart';
import 'package:sharkspinpoint/collge/csw.dart';
import 'package:sharkspinpoint/collge/cte.dart';
import 'package:sharkspinpoint/collge/ls.dart';
import 'package:sharkspinpoint/page/map_page.dart';
import 'package:sharkspinpoint/widgets/data/college.dart';

class CollegeDetailPage extends StatelessWidget {
  final College college;

  CollegeDetailPage({required this.college});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(college.name),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                college.imageUrl2,
                width: 350,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Name:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              college.name,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              college.description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            // Add the Row widget to hold the two buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // "View on Map" button
                ElevatedButton(
                  onPressed: () {
                    // Navigate to MapPage with the selectedVertexId based on college name
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MapPage(selectedVertexId: college.name),
                      ),
                    );
                  },
                  child: Text('View on Map'),
                ),
                SizedBox(width: 10), // Add some space between the buttons
                // Additional button based on college name
                ElevatedButton(
                  onPressed: () {
                    // Define navigation based on college name
                    if (college.name == 'College of Architecture') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CArch(),
                        ),
                      );
                    } else if (college.name == 'College of Arts and Sciences') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CAs(),
                        ),
                      );
                    } else if (college.name ==
                        'College of Bussiness Administration and Accountancy') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CBaa(),
                        ),
                      );
                    } else if (college.name ==
                        'College of Communication and Information Technology') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CCit(),
                        ),
                      );
                    } else if (college.name ==
                        'College of Criminalogy Justice and Enforcement') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CBaa(),
                        ),
                      );
                    } else if (college.name == 'College of Engineering') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CE(),
                        ),
                      );
                    } else if (college.name ==
                        'College of Fine Arts and Designs') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CFad(),
                        ),
                      );
                    } else if (college.name ==
                        'College of Health and Sciences') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CHs(),
                        ),
                      );
                    } else if (college.name ==
                        'College of Hospitality and Tourism Management') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CHtm(),
                        ),
                      );
                    } else if (college.name == 'College of Law') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CLaw(),
                        ),
                      );
                    } else if (college.name == 'College of Medicine') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CMed(),
                        ),
                      );
                    } else if (college.name == 'College of Nursing') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CN(),
                        ),
                      );
                    } else if (college.name ==
                        'College of Public Administration') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CPad(),
                        ),
                      );
                    } else if (college.name == 'College of Socialwork') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CSw(),
                        ),
                      );
                    } else if (college.name == 'College of Teacher Education') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CTe(),
                        ),
                      );
                    } else if (college.name == 'College of Technology') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CTe(),
                        ),
                      );
                    } else if (college.name == 'Laboratory School') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LabSchool(),
                        ),
                      );
                    }
                    // Add more conditions for other colleges as needed
                  },
                  child: Text('View Rooms'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
