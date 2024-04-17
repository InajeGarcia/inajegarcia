import 'package:flutter/material.dart';

class CBaa extends StatelessWidget {
  final List<String> firstFloorImages = [
    'images/cbaa103.jpg',
    'images/cbaa104.jpg',
    'images/cbaa105.jpg',
    'images/cbaa106.jpg',
    'images/cbaa107.jpg',
    'images/cbaa108.jpg',
    'images/cbaa201.jpg',
    'images/cbaa202.jpg',
    /*'images/cbaarooms/cbaa203.jpg',
    'images/cbaarooms/cbaa301.jpg',
    'images/cbaarooms/cbaa302.jpg',
    'images/cbaarooms/cbaa303.jpg',
    'images/cbaarooms/cbaa304.jpg',
    'images/cbaarooms/cbaa305.jpg',
    'images/cbaarooms/cbaa306.jpg',
    'images/cbaarooms/cbaa401.jpg',
    'images/cbaarooms/cbaa402.jpg',
    'images/cbaarooms/cbaa403.jpg',
    'images/cbaarooms/cbaa404.jpg',
    'images/cbaarooms/cbaa405.jpg',
    'images/cbaarooms/cbaa406.jpg',*/
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
