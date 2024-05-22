import 'package:flutter/material.dart';

class CTe extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {
      'frontImagePath': 'images/cte/cte201.webp',
      'detailImagePath': 'images/cte/cte201.webp',
      'label': 'Room 201',
      'detail': 'Detail about Room 201'
    },
    {
      'frontImagePath': 'images/cte/cte202.webp',
      'detailImagePath': 'images/cte/cte202.webp',
      'label': 'Room 202',
      'detail': 'Detail about Room 202'
    },
    {
      'frontImagePath': 'images/cte/cte203.webp',
      'detailImagePath': 'images/cte/cte203.webp',
      'label': 'Room 203',
      'detail': 'Detail about Room 203'
    },
    {
      'frontImagePath': 'images/cte/cte204.webp',
      'detailImagePath': 'images/cte/cte204.webp',
      'label': 'Room 204',
      'detail': 'Detail about Room 204'
    },
    {
      'frontImagePath': 'images/cte/cte205.webp',
      'detailImagePath': 'images/cte/cte205.webp',
      'label': 'Room 205',
      'detail': 'Detail about Room 205'
    },
    {
      'frontImagePath': 'images/cte/cte206.webp',
      'detailImagePath': 'images/cte/cte206.webp',
      'label': 'Room 206',
      'detail': 'Detail about Room 206'
    },
    {
      'frontImagePath': 'images/cte/cte207.webp',
      'detailImagePath': 'images/cte/cte207.webp',
      'label': 'Room 207',
      'detail': 'Detail about Room 207'
    },
    {
      'frontImagePath': 'images/cte/cte301.webp',
      'detailImagePath': 'images/cte/cte301.webp',
      'label': 'Room 301',
      'detail': 'Detail about Room 301'
    },
    {
      'frontImagePath': 'images/cte/cte302.webp',
      'detailImagePath': 'images/cte/cte302.webp',
      'label': 'Room 302',
      'detail': 'Detail about Room 302'
    },
    {
      'frontImagePath': 'images/cte/cte303.webp',
      'detailImagePath': 'images/cte/cte303.webp',
      'label': 'Room 303',
      'detail': 'Detail about Room 303'
    },
    {
      'frontImagePath': 'images/cte/cte304.webp',
      'detailImagePath': 'images/cte/cte304.webp',
      'label': 'Room 304',
      'detail': 'Detail about Room 304'
    },
    {
      'frontImagePath': 'images/cte/cte305.webp',
      'detailImagePath': 'images/cte/cte305.webp',
      'label': 'Room 305',
      'detail': 'Detail about Room 305'
    },
    {
      'frontImagePath': 'images/cte/cte306.webp',
      'detailImagePath': 'images/cte/cte306.webp',
      'label': 'Room 306',
      'detail': 'Detail about Room 306'
    },
    {
      'frontImagePath': 'images/cte/cte307.webp',
      'detailImagePath': 'images/cte/cte307.webp',
      'label': 'Room 307',
      'detail': 'Detail about Room 307'
    },
    // Add more images with front and detail image paths
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
                      frontImagePath: firstFloorImages[index]
                          ['frontImagePath']!,
                      detailImagePath: firstFloorImages[index]
                          ['detailImagePath']!,
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
  final String frontImagePath;
  final String detailImagePath;
  final String label;
  final String detail;

  DetailScreen({
    required this.frontImagePath,
    required this.detailImagePath,
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
                detailImagePath,
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
    home: CTe(),
  ));
}
