import 'package:flutter/material.dart';

class Ceramic extends StatelessWidget {
  final List<String> firstFloorImages = [
    'images/tcb101.jpg',
    'images/tcb102.jpg',
    'images/tech1.jpg',
    'images/ctechdean.jpg',
    'images/innovationhub.jpg',
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
