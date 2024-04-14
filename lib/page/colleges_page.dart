import 'package:flutter/material.dart';
import 'package:sharkspinpoint/widgets/data/college.dart';
import 'package:sharkspinpoint/colleges/college_details_screen.dart'; // Import the detail page

class CollegePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Color.fromARGB(255, 17, 44, 163),
        automaticallyImplyLeading: false,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colleges.length,
        itemBuilder: (BuildContext context, int index) {
          College college = colleges[index];
          return GestureDetector(
            onTap: () {
              // Navigate to detail page when a college item is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CollegeDetailPage(college: college),
                ),
              );
            },
            child: Card(
              child: ListTile(
                leading: Image.asset(
                  college.imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                title: Text(college.name),
              ),
            ),
          );
        },
      ),
    );
  }
}
