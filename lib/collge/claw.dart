import 'package:flutter/material.dart';

class CLaw extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {
      'frontImagePath': 'images/claw/cpad-claw-ou1st.webp',
      'detailImagePath': 'images/claw/clawlibrary.webp',
      'label': 'Law Library',
      'detail': 'Detail about the Law Library'
    },
    {
      'frontImagePath': 'images/cpad/cpad-claw-ou2nd.webp',
      'detailImagePath': 'images/cpad/guijo.webp',
      'label': 'Guijo Room',
      'detail': 'Detail about the Guijo Room'
    },
    {
      'frontImagePath': 'images/cpad/cpad-claw-ou2nd.webp',
      'detailImagePath': 'images/cpad/ipil.webp',
      'label': 'Ipil Room',
      'detail': 'Detail about the Ipil Room'
    },
    {
      'frontImagePath': 'images/cpad/cpad-claw-ou2nd.webp',
      'detailImagePath': 'images/cpad/molave.webp',
      'label': 'Molave Room',
      'detail': 'Detail about the Molave Room'
    },
    {
      'frontImagePath': 'images/cpad/cpad-claw-ou2nd.webp',
      'detailImagePath': 'images/cpad/cpadaccreditationroom.webp',
      'label': 'Accreditation Room',
      'detail': 'Detail about the Accreditation Room'
    },
    {
      'frontImagePath': 'images/cpad/cpad-claw-ou1st.webp',
      'detailImagePath': 'images/cpad/graduatestudies.webp',
      'label': 'Graduate Studies',
      'detail': 'Detail about the Graduate Studies'
    },
    // Add more images with front and detail image paths
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CLAW'),
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
    home: CLaw(),
  ));
}
