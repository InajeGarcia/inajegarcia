import 'package:flutter/material.dart';

class CMed extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/cmed/centralsupply.webp', 'label': 'Central Supply'},
    {'imagePath': 'images/cmed/dentalclinic.webp', 'label': 'Dental Clinic'},
    {'imagePath': 'images/cmed/lab1.webp', 'label': 'Lab 1'},
    {'imagePath': 'images/cmed/lab2.webp', 'label': 'Lab 2'},
    {'imagePath': 'images/cmed/laboratory.webp', 'label': 'Laboratory'},
    {
      'imagePath': 'images/cmed/medicineoffice.webp',
      'label': 'Medicine Office'
    },
    {'imagePath': 'images/cmed/operatingroom.webp', 'label': 'Operating Room'},
    {'imagePath': 'images/cmed/pediaward.webp', 'label': 'Pediatric Ward'},
    {'imagePath': 'images/cmed/pharmacy.webp', 'label': 'Pharmacy'},
    {
      'imagePath': 'images/cmed/philhealthoffice.webp',
      'label': 'PhilHealth Office'
    },
    {'imagePath': 'images/cmed/plenary1.webp', 'label': 'Plenary 1'},
    {'imagePath': 'images/cmed/plenary2.webp', 'label': 'Plenary 2'},
    {'imagePath': 'images/cmed/plenary3.webp', 'label': 'Plenary 3'},
    {'imagePath': 'images/cmed/plenary4.webp', 'label': 'Plenary 4'},
    {'imagePath': 'images/cmed/plenary5.webp', 'label': 'Plenary 5'},
    {'imagePath': 'images/cmed/privateroom.webp', 'label': 'Private Room'},
    {'imagePath': 'images/cmed/skillslab.webp', 'label': 'Skills Lab'},
    {'imagePath': 'images/cmed/ultrasound.webp', 'label': 'Ultrasound Room'},
    {'imagePath': 'images/cmed/xray.webp', 'label': 'X-Ray Room'},
    // Add more image URLs as needed for the first floor
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
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
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
          );
        },
      ),
    );
  }
}
