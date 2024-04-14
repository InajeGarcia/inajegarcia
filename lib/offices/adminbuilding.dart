import 'package:flutter/material.dart';

class FirstFloorPage extends StatelessWidget {
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

class SecondFloorPage extends StatelessWidget {
  final List<String> secondFloorImages = [
    'images/vpre.jpg',
    'images/vpaa.jpg',
    'images/networksystem.jpg',
    'images/researchoffice.jpg',
    'images/hrmo.jpg',
    'images/extensionoffice.jpg',
    'images/upim.jpg',
    'images/pasuc.jpg',
    // Add more image URLs as needed for the second floor
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Floor'),
      ),
      body: ListView.builder(
        itemCount: secondFloorImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                secondFloorImages[index],
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

class ThirdFloorPage extends StatelessWidget {
  final List<String> thirdFloorImages = [
    'images/op.jpg',
    'images/op.jpg',
    // Add more image URLs as needed for the third floor
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Floor'),
      ),
      body: ListView.builder(
        itemCount: thirdFloorImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                thirdFloorImages[index],
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
