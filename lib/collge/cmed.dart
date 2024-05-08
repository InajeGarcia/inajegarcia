import 'package:flutter/material.dart';

class CMed extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/centralsupply.webp', 'label': 'Central Supply'},
    {'imagePath': 'images/dentalclinic.webp', 'label': 'Dental Clinic'},
    {'imagePath': 'images/lab1.webp', 'label': 'Lab 1'},
    {'imagePath': 'images/lab2.webp', 'label': 'Lab 2'},
    {'imagePath': 'images/laboratory.webp', 'label': 'Laboratory'},
    {'imagePath': 'images/medicineoffice.webp', 'label': 'Medicine Office'},
    {'imagePath': 'images/operatingroom.webp', 'label': 'Operating Room'},
    {'imagePath': 'images/pediaward.webp', 'label': 'Pediatric Ward'},
    {'imagePath': 'images/pharmacy.webp', 'label': 'Pharmacy'},
    {'imagePath': 'images/philhealthoffice.webp', 'label': 'PhilHealth Office'},
    {'imagePath': 'images/plenary1.webp', 'label': 'Plenary 1'},
    {'imagePath': 'images/plenary2.webp', 'label': 'Plenary 2'},
    {'imagePath': 'images/plenary3.webp', 'label': 'Plenary 3'},
    {'imagePath': 'images/plenary4.webp', 'label': 'Plenary 4'},
    {'imagePath': 'images/plenary5.webp', 'label': 'Plenary 5'},
    {'imagePath': 'images/privateroom.webp', 'label': 'Private Room'},
    {'imagePath': 'images/skillslab.webp', 'label': 'Skills Lab'},
    {'imagePath': 'images/ultrasound.webp', 'label': 'Ultrasound Room'},
    {'imagePath': 'images/xray.webp', 'label': 'X-Ray Room'},
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
