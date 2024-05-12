import 'package:flutter/material.dart';

class CLaw extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/claw/clawlibrary.webp', 'label': 'Law Library'},
    {'imagePath': 'images/cpad/guijo.webp', 'label': 'Guijo Room'},
    {'imagePath': 'images/cpad/ipil.webp', 'label': 'Ipil Room'},
    {'imagePath': 'images/cpad/molave.webp', 'label': 'Molave Room'},
    {
      'imagePath': 'images/cpad/cpadaccreditationroom.webp',
      'label': 'Accreditation Room'
    },
    {
      'imagePath': 'images/cpad/graduatestudies.webp',
      'label': 'Graduate Studies'
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
