import 'package:flutter/material.dart';

class CCje extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/ccje/101.jpg', 'label': 'Room 101'},
    {'imagePath': 'images/ccje/102.jpg', 'label': 'Room 102'},
    {'imagePath': 'images/ccje/103.jpg', 'label': 'Room 103'},
    {'imagePath': 'images/ccje/105.jpg', 'label': 'Room 105'},
    {'imagePath': 'images/ccje/201.jpg', 'label': 'Room 201'},
    {'imagePath': 'images/ccje/202.jpg', 'label': 'Room 202'},
    {'imagePath': 'images/ccje/203.jpg', 'label': 'Room 203'},
    {'imagePath': 'images/ccje/204.jpg', 'label': 'Room 204'},
    {'imagePath': 'images/ccje/205.jpg', 'label': 'Room 205'},
    {'imagePath': 'images/ccje/206.jpg', 'label': 'Room 206'},
    {'imagePath': 'images/ccje/cr1stf.jpg', 'label': 'CR 1st Floor (Female)'},
    {'imagePath': 'images/ccje/cr1stm.jpg', 'label': 'CR 1st Floor (Male)'},
    {'imagePath': 'images/ccje/cr2ndf.jpg', 'label': 'CR 2nd Floor (Female)'},
    {'imagePath': 'images/ccje/cr2ndm.jpg', 'label': 'CR 2nd Floor (Male)'},
    {
      'imagePath': 'images/ccje/crimescenesimulation.jpg',
      'label': 'Crime Scene Simulation Room'
    },
    {'imagePath': 'images/ccje/csooffice.jpg', 'label': 'CSO Office'},
    {'imagePath': 'images/ccje/dactyloscopy.jpg', 'label': 'Dactyloscopy Room'},
    {
      'imagePath': 'images/ccje/forensicbalistics.jpg',
      'label': 'Forensic Ballistics Room'
    },
    {'imagePath': 'images/ccje/forensicroom.jpg', 'label': 'Forensic Room'},
    {'imagePath': 'images/ccje/library.jpg', 'label': 'Library'},
    {'imagePath': 'images/ccje/polygraphyroom.jpg', 'label': 'Polygraphy Room'},
    {
      'imagePath': 'images/ccje/questioneddocument.jpg',
      'label': 'Questioned Document Room'
    },
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
