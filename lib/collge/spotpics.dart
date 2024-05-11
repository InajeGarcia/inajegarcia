import 'package:flutter/material.dart';

class Gym extends StatelessWidget {
  final List<String> firstFloorImages = [
    'images/adminoffices/records.webp',
    'images/adminofficesadmission.webp',
    'images/adminofficescashier.webp',
    'images/adminofficesregistrar.webp',
    'images/adminofficescoa.webp',
    'images/adminofficesguidance.webp',
    'images/adminofficesaccounting.webp',
    'images/adminofficesimg.webp',
    'images/adminofficesbudget.webp',
    'images/adminofficesvpfad.webp',
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

class CPad extends StatelessWidget {
  final List<String> firstFloorImages = [
    'images/adminofficesrecords.webp',
    'images/adminofficesadmission.webp',
    'images/adminofficescashier.webp',
    'images/adminofficesregistrar.webp',
    'images/adminofficescoa.webp',
    'images/adminofficesguidance.webp',
    'images/adminofficesaccounting.webp',
    'images/adminofficesimg.webp',
    'images/adminofficesbudget.webp',
    'images/adminofficesvpfad.webp',
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
