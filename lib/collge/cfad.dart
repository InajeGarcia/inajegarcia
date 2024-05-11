import 'package:flutter/material.dart';

class CFad extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/cfad/records.webp', 'label': 'Records Office'},
    {'imagePath': 'images/cfad/admission.webp', 'label': 'Admission Office'},
    {'imagePath': 'images/cfad/cashier.webp', 'label': 'Cashier Office'},
    {'imagePath': 'images/cfad/registrar.webp', 'label': 'Registrar Office'},
    {'imagePath': 'images/cfad/coa.webp', 'label': 'COA Office'},
    {'imagePath': 'images/cfad/guidance.webp', 'label': 'Guidance Office'},
    {'imagePath': 'images/cfad/accounting.webp', 'label': 'Accounting Office'},
    {'imagePath': 'images/cfad/img.webp', 'label': 'IMG Office'},
    {'imagePath': 'images/cfad/budget.webp', 'label': 'Budget Office'},
    {'imagePath': 'images/cfad/vpfad.webp', 'label': 'VPFAD Office'},
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
