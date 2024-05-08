import 'package:flutter/material.dart';

class CE extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/cedean.webp', 'label': 'Dean\'s Office'},
    {'imagePath': 'images/cefacultyroom.webp', 'label': 'Faculty Room'},
    {
      'imagePath': 'images/cehydraulicslaboratory.webp',
      'label': 'Hydraulics Laboratory'
    },
    {'imagePath': 'images/celaboratory.webp', 'label': 'CE Laboratory'},
    {'imagePath': 'images/celibrary.webp', 'label': 'CE Library'},
    {'imagePath': 'images/cematerials.webp', 'label': 'Materials Room'},
    {'imagePath': 'images/ce101.webp', 'label': 'Room 101'},
    {'imagePath': 'images/ce102.webp', 'label': 'Room 102'},
    {'imagePath': 'images/ce103.webp', 'label': 'Room 103'},
    {'imagePath': 'images/ce201.webp', 'label': 'Room 201'},
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
