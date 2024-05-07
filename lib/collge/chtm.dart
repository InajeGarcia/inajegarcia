import 'package:flutter/material.dart';

class CHtm extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/chtm201.jpg', 'label': 'Room 201'},
    {'imagePath': 'images/chtm202.jpg', 'label': 'Room 202'},
    {'imagePath': 'images/chtm301.jpg', 'label': 'Room 301'},
    {'imagePath': 'images/chtmcr.jpg', 'label': 'CR'},
    {'imagePath': 'images/chtmcr2.jpg', 'label': 'CR 2'},
    {'imagePath': 'images/chtmfacultyroom.jpg', 'label': 'Faculty Room'},
    {'imagePath': 'images/shatsoffice.jpg', 'label': 'SHATs Office'},
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
