import 'package:flutter/material.dart';

class Gym extends StatelessWidget {
  final List<String> firstFloorImages = [
    'images/records.webp',
    'images/admission.webp',
    'images/cashier.webp',
    'images/registrar.webp',
    'images/coa.webp',
    'images/guidance.webp',
    'images/accounting.webp',
    'images/img.webp',
    'images/budget.webp',
    'images/vpfad.webp',
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
    'images/records.webp',
    'images/admission.webp',
    'images/cashier.webp',
    'images/registrar.webp',
    'images/coa.webp',
    'images/guidance.webp',
    'images/accounting.webp',
    'images/img.webp',
    'images/budget.webp',
    'images/vpfad.webp',
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
