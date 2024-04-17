import 'package:flutter/material.dart';

class CHtm extends StatelessWidget {
  final List<String> firstFloorImages = [
    'images/records.jpg',
    'images/admission.jpg',
    'images/cashier.jpg',
    'images/registrar.jpg',
    'images/coa.jpg',
    'images/guidance.jpg',
    'images/accounting.jpg',
    'images/img.jpg',
    'images/budget.jpg',
    'images/vpfad.jpg',
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
