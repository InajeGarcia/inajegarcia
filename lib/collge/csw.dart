import 'package:flutter/material.dart';

class CSw extends StatelessWidget {
  final List<String> firstFloorImages = [
    'images/csw/functionhall2.jpg',
    'images/csw/c-301.jpg',
    'images/csw/c-302.jpg',
    'images/csw/c-303.jpg',
    'images/csw/c-304.jpg',
    // Add more image URLs as needed for the first floor
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Floor'),
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
