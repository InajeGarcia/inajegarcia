import 'package:flutter/material.dart';

class CCit extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/cc104.webp', 'label': 'Room cc104'},
    {'imagePath': 'images/cc106.webp', 'label': 'Room cc106'},
    {'imagePath': 'images/cc201.webp', 'label': 'Room cc201'},
    {'imagePath': 'images/cc202.webp', 'label': 'Room cc202'},
    {'imagePath': 'images/cc203.webp', 'label': 'Room cc203'},
    {'imagePath': 'images/cc204.webp', 'label': 'Room cc204'},
    {'imagePath': 'images/cc205.webp', 'label': 'Room cc205'},
    {'imagePath': 'images/cc206.webp', 'label': 'Room cc206'},
    {'imagePath': 'images/ccittechnicianroom.webp', 'label': 'Technician Room'},
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
