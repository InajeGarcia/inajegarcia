import 'package:flutter/material.dart';

class CMed extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {
      'frontImagePath': 'images/cmed/centralsupply.webp',
      'detailImagePath': 'images/cmed/centralsupply.webp',
      'label': 'Central Supply',
      'detail': 'Detail about Central Supply'
    },
    {
      'frontImagePath': 'images/cmed/dentalclinic.webp',
      'detailImagePath': 'images/cmed/dentalclinic.webp',
      'label': 'Dental Clinic',
      'detail': 'Detail about the Dental Clinic'
    },
    {
      'frontImagePath': 'images/cmed/lab1.webp',
      'detailImagePath': 'images/cmed/lab1.webp',
      'label': 'Lab 1',
      'detail': 'Detail about Lab 1'
    },
    {
      'frontImagePath': 'images/cmed/lab2.webp',
      'detailImagePath': 'images/cmed/lab2.webp',
      'label': 'Lab 2',
      'detail': 'Detail about Lab 2'
    },
    {
      'frontImagePath': 'images/cmed/laboratory.webp',
      'detailImagePath': 'images/cmed/laboratory.webp',
      'label': 'Laboratory',
      'detail': 'Detail about the Laboratory'
    },
    {
      'frontImagePath': 'images/cmed/medicineoffice.webp',
      'detailImagePath': 'images/cmed/medicineoffice.webp',
      'label': 'Medicine Office',
      'detail': 'Detail about the Medicine Office'
    },
    {
      'frontImagePath': 'images/cmed/operatingroom.webp',
      'detailImagePath': 'images/cmed/operatingroom.webp',
      'label': 'Operating Room',
      'detail': 'Detail about the Operating Room'
    },
    {
      'frontImagePath': 'images/cmed/pediaward.webp',
      'detailImagePath': 'images/cmed/pediaward.webp',
      'label': 'Pediatric Ward',
      'detail': 'Detail about the Pediatric Ward'
    },
    {
      'frontImagePath': 'images/cmed/pharmacy.webp',
      'detailImagePath': 'images/cmed/pharmacy.webp',
      'label': 'Pharmacy',
      'detail': 'Detail about the Pharmacy'
    },
    {
      'frontImagePath': 'images/cmed/philhealthoffice.webp',
      'detailImagePath': 'images/cmed/philhealthoffice.webp',
      'label': 'PhilHealth Office',
      'detail': 'Detail about the PhilHealth Office'
    },
    {
      'frontImagePath': 'images/cmed/plenary1.webp',
      'detailImagePath': 'images/cmed/plenary1.webp',
      'label': 'Plenary 1',
      'detail': 'Detail about Plenary 1'
    },
    {
      'frontImagePath': 'images/cmed/plenary2.webp',
      'detailImagePath': 'images/cmed/plenary2.webp',
      'label': 'Plenary 2',
      'detail': 'Detail about Plenary 2'
    },
    {
      'frontImagePath': 'images/cmed/plenary3.webp',
      'detailImagePath': 'images/cmed/plenary3.webp',
      'label': 'Plenary 3',
      'detail': 'Detail about Plenary 3'
    },
    {
      'frontImagePath': 'images/cmed/plenary4.webp',
      'detailImagePath': 'images/cmed/plenary4.webp',
      'label': 'Plenary 4',
      'detail': 'Detail about Plenary 4'
    },
    {
      'frontImagePath': 'images/cmed/plenary5.webp',
      'detailImagePath': 'images/cmed/plenary5.webp',
      'label': 'Plenary 5',
      'detail': 'Detail about Plenary 5'
    },
    {
      'frontImagePath': 'images/cmed/privateroom.webp',
      'detailImagePath': 'images/cmed/privateroom.webp',
      'label': 'Private Room',
      'detail': 'Detail about the Private Room'
    },
    {
      'frontImagePath': 'images/cmed/skillslab.webp',
      'detailImagePath': 'images/cmed/skillslab.webp',
      'label': 'Skills Lab',
      'detail': 'Detail about the Skills Lab'
    },
    {
      'frontImagePath': 'images/cmed/ultrasound.webp',
      'detailImagePath': 'images/cmed/ultrasound.webp',
      'label': 'Ultrasound Room',
      'detail': 'Detail about the Ultrasound Room'
    },
    {
      'frontImagePath': 'images/cmed/xray.webp',
      'detailImagePath': 'images/cmed/xray.webp',
      'label': 'X-Ray Room',
      'detail': 'Detail about the X-Ray Room'
    },
    // Add more images with front and detail image paths
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CMED'),
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
    home: CMed(),
  ));
}
