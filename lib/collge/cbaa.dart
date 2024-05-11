import 'package:flutter/material.dart';

class CBaa extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/cbaa/e101.webp', 'label': 'Room E101'},
    {'imagePath': 'images/cbaa/e102.webp', 'label': 'Room E102'},
    {'imagePath': 'images/cbaa/e103.webp', 'label': 'Room E103'},
    {'imagePath': 'images/cbaa/e104.webp', 'label': 'Room E104'},
    {'imagePath': 'images/cbaa/e201.webp', 'label': 'Room E201'},
    {'imagePath': 'images/cbaa/e202-e203.webp', 'label': 'Room E202-E203'},
    {'imagePath': 'images/cbaa/e204.webp', 'label': 'Room E204'},
    {'imagePath': 'images/cbaa/e205-e206.webp', 'label': 'Room E205-E206'},
    {'imagePath': 'images/cbaa/e207.webp', 'label': 'Room E207'},
    {'imagePath': 'images/cbaa/e208.webp', 'label': 'Room E208'},
    {'imagePath': 'images/cbaa/e209.webp', 'label': 'Room E209'},
    {'imagePath': 'images/cbaa/e210-e211.webp', 'label': 'Room E210-E211'},
    {'imagePath': 'images/cbaa/e212.webp', 'label': 'Room E212'},
    {'imagePath': 'images/cbaa/eteapoffice.webp', 'label': 'ETEAP Office'},
    {'imagePath': 'images/cbaa/cbaaobas.webp', 'label': 'OBAS'},
    {
      'imagePath': 'images/cbaa/cbaamultimediacenter.webp',
      'label': 'Multimedia Center'
    },
    {'imagePath': 'images/cbaa/cbaaminilibrary.webp', 'label': 'Mini Library'},
    {'imagePath': 'images/cbaa/cbaainternet.webp', 'label': 'Internet Room'},
    {'imagePath': 'images/cbaa/cbaahall.webp', 'label': 'Hall'},
    {'imagePath': 'images/cbaa/cbaaguidance.webp', 'label': 'Guidance Office'},
    {
      'imagePath': 'images/cbaa/cbaafunctionroom.webp',
      'label': 'Function Room'
    },
    {'imagePath': 'images/cbaa/cbaafacultyroom.webp', 'label': 'Faculty Room'},
    {'imagePath': 'images/cbaa/cbaafaculty.webp', 'label': 'Faculty'},
    {'imagePath': 'images/cbaa/cbaaelibrary.webp', 'label': 'E-Library'},
    {'imagePath': 'images/cbaa/cbaacl2.webp', 'label': 'Classroom 2nd Floor'},
    {'imagePath': 'images/cbaa/cbaacl4.webp', 'label': 'Classroom 4th Floor'},
    {
      'imagePath': 'images/cbaa/cbaaassdeanoffice.webp',
      'label': 'Associate Dean\'s Office'
    },
    {'imagePath': 'images/cbaa/cbaadeanoffice.webp', 'label': 'Dean\'s Office'},
    {'imagePath': 'images/cbaa/cbaa103.webp', 'label': 'Room 103'},
    {'imagePath': 'images/cbaa/cbaa104.webp', 'label': 'Room 104'},
    {'imagePath': 'images/cbaa/cbaa105.webp', 'label': 'Room 105'},
    {'imagePath': 'images/cbaa/cbaa106.webp', 'label': 'Room 106'},
    {'imagePath': 'images/cbaa/cbaa107.webp', 'label': 'Room 107'},
    {'imagePath': 'images/cbaa/cbaa108.webp', 'label': 'Room 108'},
    {'imagePath': 'images/cbaa/cbaa201.webp', 'label': 'Room 201'},
    {'imagePath': 'images/cbaa/cbaa202.webp', 'label': 'Room 202'},
    {'imagePath': 'images/cbaa/cbaa203.webp', 'label': 'Room 203'},
    {'imagePath': 'images/cbaa/cbaa301.webp', 'label': 'Room 301'},
    {'imagePath': 'images/cbaa/cbaa302.webp', 'label': 'Room 302'},
    {'imagePath': 'images/cbaa/cbaa303.webp', 'label': 'Room 303'},
    {'imagePath': 'images/cbaa/cbaa304.webp', 'label': 'Room 304'},
    {'imagePath': 'images/cbaa/cbaa305.webp', 'label': 'Room 305'},
    {'imagePath': 'images/cbaa/cbaa306.webp', 'label': 'Room 306'},
    {'imagePath': 'images/cbaa/cbaa401.webp', 'label': 'Room 401'},
    {'imagePath': 'images/cbaa/cbaa402.webp', 'label': 'Room 402'},
    {'imagePath': 'images/cbaa/cbaa403.webp', 'label': 'Room 403'},
    {'imagePath': 'images/cbaa/cbaa404.webp', 'label': 'Room 404'},
    {'imagePath': 'images/cbaa/cbaa405.webp', 'label': 'Room 405'},
    {'imagePath': 'images/cbaa/cbaa406.webp', 'label': 'Room 406'},
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
