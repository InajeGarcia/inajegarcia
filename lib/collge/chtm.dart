import 'package:flutter/material.dart';

class CHtm extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {
      'frontImagePath': 'images/youarehere/chtm/chtm201.webp',
      'detailImagePath': 'images/chtm/chtm201.webp',
      'label': 'Room 201',
      'detail': 'Detail about Room 201'
    },
    {
      'frontImagePath': 'images/youarehere/chtm/chtm202.webp',
      'detailImagePath': 'images/chtm/chtm202.webp',
      'label': 'Room 202',
      'detail': 'Detail about Room 202'
    },
    {
      'frontImagePath': 'images/youarehere/chtm/chtm204.webp',
      'detailImagePath': 'images/chtm/chtm301.webp',
      'label': 'Room 301',
      'detail': 'Detail about Room 301'
    },
    {
      'frontImagePath': 'images/youarehere/chtm/chtmlibrary.webp',
      'detailImagePath': 'images/chtm/chtmcr.webp',
      'label': 'CR',
      'detail': 'Detail about the CR'
    },
    {
      'frontImagePath': 'images/youarehere/chtm/chtmlibrary.webp',
      'detailImagePath': 'images/chtm/chtmcr2.webp',
      'label': 'Library',
      'detail': 'Detail about Library'
    },
    {
      'frontImagePath': 'images/youarehere/chtm/chtmfaculty.webp',
      'detailImagePath': 'images/chtm/chtmfacultyroom.webp',
      'label': 'Faculty Room',
      'detail': 'Detail about the Faculty Room'
    },
    {
      'frontImagePath': 'images/youarehere/chtm/chtmfaculty.webp',
      'detailImagePath': 'images/chtm/shatsoffice.webp',
      'label': 'SHATs Office',
      'detail': 'Detail about SHATs Office'
    },
    {
      'frontImagePath': 'images/youarehere/chtm/chtm201.webp',
      'detailImagePath': 'images/chtm/chtm201.webp',
      'label': 'Room 201',
      'detail': 'Detail about Room 201'
    },
    {
      'frontImagePath': 'images/youarehere/chtm/chtmdeansoffice.webp',
      'detailImagePath': 'images/youarehere/chtm/chtmdeansoffice.webp',
      'label': 'Dean\'s Office',
      'detail': 'Detail about Dean\'s Office'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CHTM'),
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
    home: CHtm(),
  ));
}
