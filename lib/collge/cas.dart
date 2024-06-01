import 'package:flutter/material.dart';

class CAs extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {
      'imagePath': 'images/youarehere/cas/mml.webp',
      'label': 'MML',
      'detailImagePath': 'images/cas/mml.webp',
      'detail': 'Detail about MML',
    },
    {
      'imagePath': 'images/youarehere/cas/bha101.webp',
      'label': 'Room BHA 101',
      'detailImagePath': 'images/cas/bha101.webp',
      'detail': 'Detail about Room BHA 101',
    },
    {
      'imagePath': 'images/youarehere/cas/bha202.webp',
      'label': 'Room BHA 202',
      'detailImagePath': 'images/cas/bha202.webp',
      'detail': 'Detail about Room BHA 202',
    },
    {
      'imagePath': 'images/youarehere/cas/caselibrary.webp',
      'label': 'Case Library',
      'detailImagePath': 'images/cas/caselibrary.webp',
      'detail': 'Detail about Case Library',
    },
    {
      'imagePath': 'images/youarehere/cas/caslearningroom.webp',
      'label': 'Learning Room',
      'detailImagePath': 'images/cas/caslearning.webp',
      'detail': 'Detail about Learning Room',
    },
    // Add more image URLs as needed for the first floor
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CAS'),
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
