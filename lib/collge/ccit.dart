import 'package:flutter/material.dart';

class CCit extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {
      'imagePath': 'images/ccit/cc104.webp',
      'label': 'Room cc104',
      'detailImagePath': 'images/ccit/cc104.webp',
      'detail': 'Detail about Room cc104'
    },
    {
      'imagePath': 'images/ccit/cc106.webp',
      'label': 'Room cc106',
      'detailImagePath': 'images/ccit/cc106.webp',
      'detail': 'Detail about Room cc106'
    },
    {
      'imagePath': 'images/ccit/cc201.webp',
      'label': 'Room cc201',
      'detailImagePath': 'images/ccit/cc201.webp',
      'detail': 'Detail about Room cc201'
    },
    {
      'imagePath': 'images/ccit/cc202.webp',
      'label': 'Room cc202',
      'detailImagePath': 'images/ccit/cc202.webp',
      'detail': 'Detail about Room cc202'
    },
    {
      'imagePath': 'images/ccit/cc203.webp',
      'label': 'Room cc203',
      'detailImagePath': 'images/ccit/cc203.webp',
      'detail': 'Detail about Room cc203'
    },
    {
      'imagePath': 'images/ccit/cas-ccit.webp',
      'label': 'Room cc204',
      'detailImagePath': 'images/ccit/cc204.webp',
      'detail': 'Detail about Room cc204'
    },
    {
      'imagePath': 'images/ccit/cas-ccit.webp',
      'label': 'Room cc205',
      'detailImagePath': 'images/ccit/cc205.webp',
      'detail': 'Detail about Room cc205'
    },
    {
      'imagePath': 'images/ccit/cas-ccit.webp',
      'label': 'Room cc206',
      'detailImagePath': 'images/ccit/cc206.webp',
      'detail': 'Detail about Room cc206'
    },
    {
      'imagePath': 'images/ccit/ccittechnicianroom.webp',
      'label': 'Technician Room',
      'detailImagePath': 'images/ccit/ccittechnicianroom.webp',
      'detail': 'Detail about Technician Room'
    },
    // Add more image URLs as needed for the first floor
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CCIT'),
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
