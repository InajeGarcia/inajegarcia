import 'package:flutter/material.dart';

class CFad extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {
      'frontImagePath': 'images/cfad/101.webp',
      'detailImagePath': 'images/cfad/101.webp',
      'label': 'Room 101',
      'detail': 'Detail about Room 101'
    },
    {
      'frontImagePath': 'images/cfad/102.webp',
      'detailImagePath': 'images/cfad/102.webp',
      'label': 'Room 102',
      'detail': 'Detail about Room 102'
    },
    {
      'frontImagePath': 'images/cfad/103.webp',
      'detailImagePath': 'images/cfad/103.webp',
      'label': 'Room 103',
      'detail': 'Detail about Room 103'
    },
    {
      'frontImagePath': 'images/cfad/gallery.webp',
      'detailImagePath': 'images/cfad/gallery.webp',
      'label': 'Gallery',
      'detail': 'Detail about the Gallery'
    },
    {
      'frontImagePath': 'images/cfad/201.webp',
      'detailImagePath': 'images/cfad/201.webp',
      'label': 'Room 201',
      'detail': 'Detail about Room 201'
    },
    {
      'frontImagePath': 'images/cfad/202.webp',
      'detailImagePath': 'images/cfad/202.webp',
      'label': 'Room 202',
      'detail': 'Detail about Room 202'
    },
    {
      'frontImagePath': 'images/cfad/203.webp',
      'detailImagePath': 'images/cfad/203.webp',
      'label': 'Room 203',
      'detail': 'Detail about Room 203'
    },
    {
      'frontImagePath': 'images/cfad/204.webp',
      'detailImagePath': 'images/cfad/204.webp',
      'label': 'Room 204',
      'detail': 'Detail about Room 204'
    },
    {
      'frontImagePath': 'images/cfad/deansoffice.webp',
      'detailImagePath': 'images/cfad/deansoffice.webp',
      'label': "Dean's Office",
      'detail': "Detail about the Dean's Office"
    },
    {
      'frontImagePath': 'images/cfad/faculty.webp',
      'detailImagePath': 'images/cfad/faculty.webp',
      'label': 'Faculty Room',
      'detail': 'Detail about the Faculty Room'
    },
    {
      'frontImagePath': 'images/cfad/301.webp',
      'detailImagePath': 'images/cfad/301.webp',
      'label': 'Room 301',
      'detail': 'Detail about Room 301'
    },
    {
      'frontImagePath': 'images/cfad/graphicsroom.webp',
      'detailImagePath': 'images/cfad/graphicsroom.webp',
      'label': 'Graphics Room',
      'detail': 'Detail about the Graphics Room'
    },
    {
      'frontImagePath': 'images/cfad/galleria.webp',
      'detailImagePath': 'images/cfad/galleria.webp',
      'label': 'Galleria Esteban Villanueva',
      'detail': 'Detail about the Galleria Esteban Villanueva'
    },
    {
      'frontImagePath': 'images/cfad/302.webp',
      'detailImagePath': 'images/cfad/302.webp',
      'label': 'Room 302',
      'detail': 'Detail about Room 302'
    },
    {
      'frontImagePath': 'images/cfad/tanghalangpedro.webp',
      'detailImagePath': 'images/cfad/tanghalangpedro.webp',
      'label': 'Tanghalang Pedro Bukaneg',
      'detail': 'Detail about Tanghalang Pedro Bukaneg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CFAD'),
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
    home: CFad(),
  ));
}
