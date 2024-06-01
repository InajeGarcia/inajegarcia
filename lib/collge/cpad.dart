import 'package:flutter/material.dart';

class CPad extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {
      'frontImagePath': 'images/youarehere/graduateschool/ipil.webp',
      'detailImagePath': 'images/cpad/ipil.webp',
      'label': 'Ipil Room',
      'detail': 'Detail about Ipil Room'
    },
    {
      'frontImagePath': 'images/youarehere/graduateschool/guijo.webp',
      'detailImagePath': 'images/cpad/guijo.webp',
      'label': 'Guijo Room',
      'detail': 'Detail about Guijo Room'
    },
    {
      'frontImagePath': 'images/youarehere/graduateschool/narra.webp',
      'detailImagePath': 'images/cpad/narra.webp',
      'label': 'Narra Room',
      'detail': 'Detail about Narra Room'
    },
    {
      'frontImagePath':
          'images/youarehere/graduateschool/accreditationroom.webp',
      'detailImagePath': 'images/cpad/cpadaccreditationrooom.webp',
      'label': 'Accreditation Room',
      'detail': 'Detail about Accreditation Room'
    },
    {
      'frontImagePath': 'images/youarehere/graduateschool/resourceroom.webp',
      'detailImagePath': 'images/cpad/cpadresourcecenter.webp',
      'label': 'Resource Center',
      'detail': 'Detail about Resource Center'
    },
    {
      'frontImagePath': 'images/youarehere/graduateschool/passoffice.webp',
      'detailImagePath': 'images/cpad/passoffice.webp',
      'label': 'Pass Office',
      'detail': 'Detail about Pass Office'
    },
    {
      'frontImagePath': 'images/youarehere/graduateschool/storeroom.webp',
      'detailImagePath': 'images/cpad/cpadstoreroom.webp',
      'label': 'Store Room',
      'detail': 'Detail about Store Room'
    },
    {
      'frontImagePath': 'images/youarehere/graduateschool/storeroom.webp',
      'detailImagePath': 'images/cpad/cpadcr.webp',
      'label': 'Comfort Room',
      'detail': 'Detail about Comfort Room'
    },
    // Add more images with front and detail image paths
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CPAD'),
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
                      firstFloorImages[index]['frontImagePath']!,
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

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CPad(),
  ));
}
