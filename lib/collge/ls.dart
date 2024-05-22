import 'package:flutter/material.dart';

class LabSchool extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {
      'frontImagePath': 'images/spot/hostel.webp',
      'detailImagePath': 'images/spot/hostel.webp',
      'label': 'Elementary',
      'detail': 'Detail about Elementary'
    },
    {
      'frontImagePath': 'images/ctech/ctechite.webp',
      'detailImagePath': 'images/ctech/ctechite.webp',
      'label': 'C-TECH/ITE',
      'detail': 'Detail about C-TECH/ITE'
    },
    {
      'frontImagePath': 'images/cte/ctebuilding.webp',
      'detailImagePath': 'images/cte/ctebuilding.webp',
      'label': 'CTE',
      'detail': 'Detail about CTE'
    },
    // Add more images with front and detail image paths
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laboratory School'),
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
    home: LabSchool(),
  ));
}
