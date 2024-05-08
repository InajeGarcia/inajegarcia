import 'package:flutter/material.dart';

class CCje extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/ccje/101.webp', 'label': 'Room 101'},
    {'imagePath': 'images/ccje/102.webp', 'label': 'Room 102'},
    {'imagePath': 'images/ccje/103.webp', 'label': 'Room 103'},
    {'imagePath': 'images/ccje/105.webp', 'label': 'Room 105'},
    {'imagePath': 'images/ccje/201.webp', 'label': 'Room 201'},
    {'imagePath': 'images/ccje/202.webp', 'label': 'Room 202'},
    {'imagePath': 'images/ccje/203.webp', 'label': 'Room 203'},
    {'imagePath': 'images/ccje/204.webp', 'label': 'Room 204'},
    {'imagePath': 'images/ccje/205.webp', 'label': 'Room 205'},
    {'imagePath': 'images/ccje/206.webp', 'label': 'Room 206'},
    {'imagePath': 'images/ccje/cr1stf.webp', 'label': 'CR 1st Floor (Female)'},
    {'imagePath': 'images/ccje/cr1stm.webp', 'label': 'CR 1st Floor (Male)'},
    {'imagePath': 'images/ccje/cr2ndf.webp', 'label': 'CR 2nd Floor (Female)'},
    {'imagePath': 'images/ccje/cr2ndm.webp', 'label': 'CR 2nd Floor (Male)'},
    {
      'imagePath': 'images/ccje/crimescenesimulation.webp',
      'label': 'Crime Scene Simulation Room'
    },
    {'imagePath': 'images/ccje/csooffice.webp', 'label': 'CSO Office'},
    {'imagePath': 'images/ccje/dactyloscopy.webp', 'label': 'Dactyloscopy Room'},
    {
      'imagePath': 'images/ccje/forensicbalistics.webp',
      'label': 'Forensic Ballistics Room'
    },
    {'imagePath': 'images/ccje/forensicroom.webp', 'label': 'Forensic Room'},
    {'imagePath': 'images/ccje/library.webp', 'label': 'Library'},
    {'imagePath': 'images/ccje/polygraphyroom.webp', 'label': 'Polygraphy Room'},
    {
      'imagePath': 'images/ccje/questioneddocument.webp',
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
