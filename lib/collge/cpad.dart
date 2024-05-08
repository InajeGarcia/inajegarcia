import 'package:flutter/material.dart';

class CPad extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/ipil.webp', 'label': 'Ipil Room'},
    {'imagePath': 'images/guijo.webp', 'label': 'Guijo Room'},
    {'imagePath': 'images/narra.webp', 'label': 'Narra Room'},
    {
      'imagePath': 'images/cpadaccreditationroom.webp',
      'label': 'Accreditation Room'
    },
    {'imagePath': 'images/cpadresourcecenter.webp', 'label': 'Resource Center'},
    {'imagePath': 'images/passoffice.webp', 'label': 'Pass Office'},
    {'imagePath': 'images/cpadstoreroom.webp', 'label': 'Store Room'},
    {'imagePath': 'images/cpadcr.webp', 'label': 'Comfort Room'},
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
