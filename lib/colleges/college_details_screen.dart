import 'package:flutter/material.dart';
import 'package:sharkspinpoint/widgets/data/college.dart';
import 'package:sharkspinpoint/page/map_page.dart';
import 'package:sharkspinpoint/colleges/admin_offices.dart';

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
                // Additional button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminOfficesPage(),
                      ),
                    );
                  },
                  child: Text('View Rooms'), // Change the text as needed
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
