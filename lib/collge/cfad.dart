import 'package:flutter/material.dart';

class CFad extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/cfad/101.webp', 'label': 'Room 101'},
    {'imagePath': 'images/cfad/102.webp', 'label': 'Room 102'},
    {'imagePath': 'images/cfad/103.webp', 'label': 'Room 103'},
    {'imagePath': 'images/cfad/gallery.webp', 'label': 'Gallery'},
    {'imagePath': 'images/cfad/201.webp', 'label': 'Room 201'},
    {'imagePath': 'images/cfad/202.webp', 'label': 'Room 202'},
    {'imagePath': 'images/cfad/203.webp', 'label': 'Room 203'},
    {'imagePath': 'images/cfad/204.webp', 'label': 'Room 204'},
    {'imagePath': 'images/cfad/deansoffice.webp', 'label': "Dean's Office"},
    {'imagePath': 'images/cfad/faculty.webp', 'label': 'Faculty Room'},
    {'imagePath': 'images/cfad/301.webp', 'label': 'Room 301'},
    {'imagePath': 'images/cfad/graphicsroom.webp', 'label': 'Graphics Room'},
    {
      'imagePath': 'images/cfad/galleria.webp',
      'label': 'Galleria Esteban Villanueva'
    },
    {'imagePath': 'images/cfad/302.webp', 'label': 'Room 302'},
    {
      'imagePath': 'images/cfad/tanghalangpedro.webp',
      'label': 'Tanghalang Pedro Bukaneg'
    },
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
