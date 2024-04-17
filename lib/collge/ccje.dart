import 'package:flutter/material.dart';

class CCje extends StatelessWidget {
  final List<String> firstFloorImages = [
    'images/ccje/101.jpg',
    'images/ccje/102.jpg',
    'images/ccje/103.jpg',
    'images/ccje/105.jpg',
    'images/ccje/201.jpg',
    'images/ccje/202.jpg',
    'images/ccje/203.jpg',
    'images/ccje/204.jpg',
    'images/ccje/205.jpg',
    'images/ccje/206.jpg',
    'images/ccje/cr1stf.jpg',
    'images/ccje/cr1stm.jpg',
    'images/ccje/cr2ndf.jpg',
    'images/ccje/cr2ndm.jpg',
    'images/ccje/crimescenesimulation.jpg',
    'images/ccje/csooffice.jpg',
    'images/ccje/dactyloscopy.jpg',
    'images/ccje/forensicbalistics.jpg',
    'images/ccje/forensicroom.jpg',
    'images/ccje/library.jpg',
    'images/ccje/polygraphyroom.jpg',
    'images/ccje/questioneddocument.jpg',
    // Add more image URLs as needed for the first floor
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Floor'),
      ),
      body: ListView.builder(
        itemCount: firstFloorImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                firstFloorImages[index],
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
