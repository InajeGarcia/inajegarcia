import 'package:flutter/material.dart';

class CE extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {
      'imagePath': 'images/ce/cedean.webp',
      'label': 'Dean\'s Office',
      'detailImagePath': 'images/ce/cedean.webp',
      'detail': 'Detail about Dean\'s Office'
    },
    {
      'imagePath': 'images/ce/cefacultyroom.webp',
      'label': 'Faculty Room',
      'detailImagePath': 'images/ce/cefacultyroom.webp',
      'detail': 'Detail about Faculty Room'
    },
    {
      'imagePath': 'images/ce/cehydraulicslaboratory.webp',
      'label': 'Hydraulics Laboratory',
      'detailImagePath': 'images/ce/cehydraulicslaboratory.webp',
      'detail': 'Detail about Hydraulics Laboratory'
    },
    {
      'imagePath': 'images/ce/celaboratory.webp',
      'label': 'CE Laboratory',
      'detailImagePath': 'images/ce/celaboratory.webp',
      'detail': 'Detail about CE Laboratory'
    },
    {
      'imagePath': 'images/ce/celibrary.webp',
      'label': 'CE Library',
      'detailImagePath': 'images/ce/celibrary.webp',
      'detail': 'Detail about CE Library'
    },
    {
      'imagePath': 'images/ce/cematerials.webp',
      'label': 'Materials Room',
      'detailImagePath': 'images/ce/cematerials.webp',
      'detail': 'Detail about Materials Room'
    },
    {
      'imagePath': 'images/ce/ce101.webp',
      'label': 'Room 101',
      'detailImagePath': 'images/ce/ce101.webp',
      'detail': 'Detail about Room 101'
    },
    {
      'imagePath': 'images/ce/ce102.webp',
      'label': 'Room 102',
      'detailImagePath': 'images/ce/ce102.webp',
      'detail': 'Detail about Room 102'
    },
    {
      'imagePath': 'images/ce/ce103.webp',
      'label': 'Room 103',
      'detailImagePath': 'images/ce/ce103.webp',
      'detail': 'Detail about Room 103'
    },
    {
      'imagePath': 'images/ce/ce201.webp',
      'label': 'Room 201',
      'detailImagePath': 'images/ce/ce201.webp',
      'detail': 'Detail about Room 201'
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
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      imagePath: firstFloorImages[index]['detailImagePath']!,
                      label: firstFloorImages[index]['label']!,
                      detail: firstFloorImages[index]['detail']!,
                    ),
                  ),
                );
              },
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 6),
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
            ),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String imagePath;
  final String label;
  final String detail;

  DetailScreen({
    required this.imagePath,
    required this.label,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(label),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              label,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              detail,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
