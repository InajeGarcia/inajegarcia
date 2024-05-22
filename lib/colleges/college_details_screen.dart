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
import 'package:sharkspinpoint/collge/ctech.dart';
import 'package:sharkspinpoint/collge/ls.dart';
import 'package:sharkspinpoint/page/map_page.dart';
import 'package:sharkspinpoint/widgets/data/college.dart';
import 'package:sharkspinpoint/collge/ou.dart';

class CollegeDetailPage extends StatelessWidget {
  final College college;

  CollegeDetailPage({required this.college});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          college.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 5, 128, 36),
                Color.fromARGB(255, 17, 44, 163),
                Color.fromARGB(255, 221, 154, 31),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  college.imageUrl2,
                  width: 350,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Text(
                            'View on Map',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
                            } else if (college.name ==
                                'College of Arts and Sciences') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CAs(),
                                ),
                              );
                            } else if (college.name ==
                                'College of Business Administration and Accountancy') {
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
                                'College of Criminal Justice and Enforcement') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CCje(),
                                ),
                              );
                            } else if (college.name ==
                                'College of Engineering') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CE(),
                                ),
                              );
                            } else if (college.name ==
                                'College of Fine Arts and Design') {
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
                            } else if (college.name ==
                                'College of Socialwork') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CSw(),
                                ),
                              );
                            } else if (college.name ==
                                'College of Teacher Education') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CTe(),
                                ),
                              );
                            } else if (college.name ==
                                'College of Technology') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CTech(),
                                ),
                              );
                            } else if (college.name == 'Laboratory School') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LabSchool(),
                                ),
                              );
                            } else if (college.name == 'Open University') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OU(),
                                ),
                              );
                            }
                            // Add more conditions for other colleges as needed
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Text(
                            'View',
                            style: TextStyle(
                              color: Colors.black,
                              //fontFamily: 'InterTight',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
