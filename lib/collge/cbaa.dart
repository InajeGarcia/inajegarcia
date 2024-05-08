import 'package:flutter/material.dart';

class CBaa extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/e101.webp', 'label': 'Room E101'},
    {'imagePath': 'images/e102.webp', 'label': 'Room E102'},
    {'imagePath': 'images/e103.webp', 'label': 'Room E103'},
    {'imagePath': 'images/e104.webp', 'label': 'Room E104'},
    {'imagePath': 'images/e201.webp', 'label': 'Room E201'},
    {'imagePath': 'images/e202-e203.webp', 'label': 'Room E202-E203'},
    {'imagePath': 'images/e204.webp', 'label': 'Room E204'},
    {'imagePath': 'images/e205-e206.webp', 'label': 'Room E205-E206'},
    {'imagePath': 'images/e207.webp', 'label': 'Room E207'},
    {'imagePath': 'images/e208.webp', 'label': 'Room E208'},
    {'imagePath': 'images/e209.webp', 'label': 'Room E209'},
    {'imagePath': 'images/e210-e211.webp', 'label': 'Room E210-E211'},
    {'imagePath': 'images/e212.webp', 'label': 'Room E212'},
    {'imagePath': 'images/eteapoffice.webp', 'label': 'ETEAP Office'},
    {'imagePath': 'images/cbaaobas.webp', 'label': 'OBAS'},
    {
      'imagePath': 'images/cbaamultimediacenter.webp',
      'label': 'Multimedia Center'
    },
    {'imagePath': 'images/cbaaminilibrary.webp', 'label': 'Mini Library'},
    {'imagePath': 'images/cbaainternet.webp', 'label': 'Internet Room'},
    {'imagePath': 'images/cbaahall.webp', 'label': 'Hall'},
    {'imagePath': 'images/cbaaguidance.webp', 'label': 'Guidance Office'},
    {'imagePath': 'images/cbaafunctionroom.webp', 'label': 'Function Room'},
    {'imagePath': 'images/cbaafacultyroom.webp', 'label': 'Faculty Room'},
    {'imagePath': 'images/cbaafaculty.webp', 'label': 'Faculty'},
    {'imagePath': 'images/cbaaelibrary.webp', 'label': 'E-Library'},
    {'imagePath': 'images/cbaacl2.webp', 'label': 'Classroom 2nd Floor'},
    {'imagePath': 'images/cbaacl4.webp', 'label': 'Classroom 4th Floor'},
    {
      'imagePath': 'images/cbaaassdeanoffice.webp',
      'label': 'Associate Dean\'s Office'
    },
    {'imagePath': 'images/cbaadeanoffice.webp', 'label': 'Dean\'s Office'},
    {'imagePath': 'images/cbaa103.webp', 'label': 'Room 103'},
    {'imagePath': 'images/cbaa104.webp', 'label': 'Room 104'},
    {'imagePath': 'images/cbaa105.webp', 'label': 'Room 105'},
    {'imagePath': 'images/cbaa106.webp', 'label': 'Room 106'},
    {'imagePath': 'images/cbaa107.webp', 'label': 'Room 107'},
    {'imagePath': 'images/cbaa108.webp', 'label': 'Room 108'},
    {'imagePath': 'images/cbaa201.webp', 'label': 'Room 201'},
    {'imagePath': 'images/cbaa202.webp', 'label': 'Room 202'},
    {'imagePath': 'images/cbaa203.webp', 'label': 'Room 203'},
    {'imagePath': 'images/cbaa301.webp', 'label': 'Room 301'},
    {'imagePath': 'images/cbaa302.webp', 'label': 'Room 302'},
    {'imagePath': 'images/cbaa303.webp', 'label': 'Room 303'},
    {'imagePath': 'images/cbaa304.webp', 'label': 'Room 304'},
    {'imagePath': 'images/cbaa305.webp', 'label': 'Room 305'},
    {'imagePath': 'images/cbaa306.webp', 'label': 'Room 306'},
    {'imagePath': 'images/cbaa401.webp', 'label': 'Room 401'},
    {'imagePath': 'images/cbaa402.webp', 'label': 'Room 402'},
    {'imagePath': 'images/cbaa403.webp', 'label': 'Room 403'},
    {'imagePath': 'images/cbaa404.webp', 'label': 'Room 404'},
    {'imagePath': 'images/cbaa405.webp', 'label': 'Room 405'},
    {'imagePath': 'images/cbaa406.webp', 'label': 'Room 406'},
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
