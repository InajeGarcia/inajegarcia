import 'package:flutter/material.dart';

class CHs extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {
      'frontImagePath': 'images/youarehere/chs-cn/505a.webp',
      'detailImagePath': 'images/chs/chs505.webp',
      'label': 'Room 505',
      'detail': 'Detail about Room 505'
    },
    {
      'frontImagePath': 'images/youarehere/chs-cn/505b.webp',
      'detailImagePath': 'images/chs/chs505.webp',
      'label': 'Room 505',
      'detail': 'Detail about Room 505'
    },
    {
      'frontImagePath': 'images/youarehere/chs-cn/507.webp',
      'detailImagePath': 'images/chs/chs505.webp',
      'label': 'Room 506',
      'detail': 'Detail about Room 506'
    },
    {
      'frontImagePath': 'images/youarehere/chs-cn/507.webp',
      'detailImagePath': 'images/chs/chs507.webp',
      'label': 'Room 507',
      'detail': 'Detail about Room 507'
    },
    {
      'frontImagePath': 'images/youarehere/chs-cn/201.webp',
      'detailImagePath': 'images/youarehere/chs-cn/201.webp',
      'label': 'Room 201',
      'detail': 'Detail about Room 201'
    },
    {
      'frontImagePath': 'images/youarehere/chs-cn/202.webp',
      'detailImagePath': 'images/youarehere/chs-cn/202.webp',
      'label': 'Room 202',
      'detail': 'Detail about Room 202'
    },
    {
      'frontImagePath': 'images/youarehere/chs-cn/203.webp',
      'detailImagePath': 'images/youarehere/chs-cn/203.webp',
      'label': 'Room 203',
      'detail': 'Detail about Room 203'
    },
    {
      'frontImagePath': 'images/youarehere/chs-cn/204.webp',
      'detailImagePath': 'images/youarehere/chs-cn/204.webp',
      'label': 'Room 204',
      'detail': 'Detail about Room 204'
    },

    {
      'frontImagePath': 'images/youarehere/chs-cn/205.webp',
      'detailImagePath': 'images/youarehere/chs-cn/205.webp',
      'label': 'Room 205',
      'detail': 'Detail about Room 205'
    },
    {
      'frontImagePath': 'images/youarehere/chs-cn/206.webp',
      'detailImagePath': 'images/youarehere/chs-cn/206.webp',
      'label': 'Room 206',
      'detail': 'Detail about Room 206'
    },
    {
      'frontImagePath': 'images/youarehere/chs-cn/accreditationroom.webp',
      'detailImagePath': 'images/chs/biologicalsciencelaboratory.webp',
      'label': 'Biological Science Laboratory',
      'detail': 'Detail about the Biological Science Laboratory'
    },
    {
      'frontImagePath': 'images/youarehere/chs-cn/chsfaculty.webp',
      'detailImagePath': 'images/chs/chsoffice.webp',
      'label': 'CHS Office',
      'detail': 'Detail about the CHS Office'
    },
    // Add more images with front and detail image paths
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
    home: CHs(),
  ));
}
