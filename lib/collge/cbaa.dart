import 'package:flutter/material.dart';

class CBaa extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/e101.jpg', 'label': 'Room E101'},
    {'imagePath': 'images/e102.jpg', 'label': 'Room E102'},
    {'imagePath': 'images/e103.jpg', 'label': 'Room E103'},
    {'imagePath': 'images/e104.jpg', 'label': 'Room E104'},
    {'imagePath': 'images/e201.jpg', 'label': 'Room E201'},
    {'imagePath': 'images/e202-e203.jpg', 'label': 'Room E202-E203'},
    {'imagePath': 'images/e204.jpg', 'label': 'Room E204'},
    {'imagePath': 'images/e205-e206.jpg', 'label': 'Room E205-E206'},
    {'imagePath': 'images/e207.jpg', 'label': 'Room E207'},
    {'imagePath': 'images/e208.jpg', 'label': 'Room E208'},
    {'imagePath': 'images/e209.jpg', 'label': 'Room E209'},
    {'imagePath': 'images/e210-e211.jpg', 'label': 'Room E210-E211'},
    {'imagePath': 'images/e212.jpg', 'label': 'Room E212'},
    {'imagePath': 'images/eteapoffice.jpg', 'label': 'ETEAP Office'},
    {'imagePath': 'images/cbaaobas.jpg', 'label': 'OBAS'},
    {
      'imagePath': 'images/cbaamultimediacenter.jpg',
      'label': 'Multimedia Center'
    },
    {'imagePath': 'images/cbaaminilibrary.jpg', 'label': 'Mini Library'},
    {'imagePath': 'images/cbaainternet.jpg', 'label': 'Internet Room'},
    {'imagePath': 'images/cbaahall.jpg', 'label': 'Hall'},
    {'imagePath': 'images/cbaaguidance.jpg', 'label': 'Guidance Office'},
    {'imagePath': 'images/cbaafunctionroom.jpg', 'label': 'Function Room'},
    {'imagePath': 'images/cbaafacultyroom.jpg', 'label': 'Faculty Room'},
    {'imagePath': 'images/cbaafaculty.jpg', 'label': 'Faculty'},
    {'imagePath': 'images/cbaaelibrary.jpg', 'label': 'E-Library'},
    {'imagePath': 'images/cbaacl2.jpg', 'label': 'Classroom 2nd Floor'},
    {'imagePath': 'images/cbaacl4.jpg', 'label': 'Classroom 4th Floor'},
    {
      'imagePath': 'images/cbaaassdeanoffice.jpg',
      'label': 'Associate Dean\'s Office'
    },
    {'imagePath': 'images/cbaadeanoffice.jpg', 'label': 'Dean\'s Office'},
    {'imagePath': 'images/cbaa103.jpg', 'label': 'Room 103'},
    {'imagePath': 'images/cbaa104.jpg', 'label': 'Room 104'},
    {'imagePath': 'images/cbaa105.jpg', 'label': 'Room 105'},
    {'imagePath': 'images/cbaa106.jpg', 'label': 'Room 106'},
    {'imagePath': 'images/cbaa107.jpg', 'label': 'Room 107'},
    {'imagePath': 'images/cbaa108.jpg', 'label': 'Room 108'},
    {'imagePath': 'images/cbaa201.jpg', 'label': 'Room 201'},
    {'imagePath': 'images/cbaa202.jpg', 'label': 'Room 202'},
    {'imagePath': 'images/cbaa203.jpg', 'label': 'Room 203'},
    {'imagePath': 'images/cbaa301.jpg', 'label': 'Room 301'},
    {'imagePath': 'images/cbaa302.jpg', 'label': 'Room 302'},
    {'imagePath': 'images/cbaa303.jpg', 'label': 'Room 303'},
    {'imagePath': 'images/cbaa304.jpg', 'label': 'Room 304'},
    {'imagePath': 'images/cbaa305.jpg', 'label': 'Room 305'},
    {'imagePath': 'images/cbaa306.jpg', 'label': 'Room 306'},
    {'imagePath': 'images/cbaa401.jpg', 'label': 'Room 401'},
    {'imagePath': 'images/cbaa402.jpg', 'label': 'Room 402'},
    {'imagePath': 'images/cbaa403.jpg', 'label': 'Room 403'},
    {'imagePath': 'images/cbaa404.jpg', 'label': 'Room 404'},
    {'imagePath': 'images/cbaa405.jpg', 'label': 'Room 405'},
    {'imagePath': 'images/cbaa406.jpg', 'label': 'Room 406'},
    // Add more image URLs as needed for the first floor
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Rooms'),
      ),
      body: ListView.builder(
        itemCount: firstFloorImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    firstFloorImages[index]['imagePath']!,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      firstFloorImages[index]['label']!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
