import 'package:flutter/material.dart';

class LabSchool extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/201.webp',
      'detailImagePath': 'images/cte/cte201.webp',
      'label': 'Room 201',
      'detail': 'Detail about Room 201'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/202.webp',
      'detailImagePath': 'images/cte/cte202.webp',
      'label': 'Room 202',
      'detail': 'Detail about Room 202'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/203.webp',
      'detailImagePath': 'images/cte/cte203.webp',
      'label': 'Room 203',
      'detail': 'Detail about Room 203'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/204.webp',
      'detailImagePath': 'images/cte/cte204.webp',
      'label': 'Room 204',
      'detail': 'Detail about Room 204'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/205.webp',
      'detailImagePath': 'images/cte/cte205.webp',
      'label': 'Room 205',
      'detail': 'Detail about Room 205'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/206.webp',
      'detailImagePath': 'images/cte/cte206.webp',
      'label': 'Room 206',
      'detail': 'Detail about Room 206'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/207.webp',
      'detailImagePath': 'images/cte/cte207.webp',
      'label': 'Room 207',
      'detail': 'Detail about Room 207'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/301.webp',
      'detailImagePath': 'images/cte/cte301.webp',
      'label': 'Room 301',
      'detail': 'Detail about Room 301'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/302.webp',
      'detailImagePath': 'images/cte/cte302.webp',
      'label': 'Room 302',
      'detail': 'Detail about Room 302'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/303.webp',
      'detailImagePath': 'images/cte/cte303.webp',
      'label': 'Room 303',
      'detail': 'Detail about Room 303'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/304.webp',
      'detailImagePath': 'images/cte/cte304.webp',
      'label': 'Room 304',
      'detail': 'Detail about Room 304'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/305.webp',
      'detailImagePath': 'images/cte/cte305.webp',
      'label': 'Room 305',
      'detail': 'Detail about Room 305'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/306.webp',
      'detailImagePath': 'images/cte/cte306.webp',
      'label': 'Room 306',
      'detail': 'Detail about Room 306'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/307.webp',
      'detailImagePath': 'images/cte/cte307.webp',
      'label': 'Room 307',
      'detail': 'Detail about Room 307'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/403.webp',
      'detailImagePath': 'images/cte/cte403.webp',
      'label': 'Room 403',
      'detail': 'Detail about Room 403'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/404.webp',
      'detailImagePath': 'images/cte/cte404.webp',
      'label': 'Room 404',
      'detail': 'Detail about Room 404'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/405.webp',
      'detailImagePath': 'images/cte/cte405.webp',
      'label': 'Room 405',
      'detail': 'Detail about Room 405'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/406.webp',
      'detailImagePath': 'images/cte/cte406.webp',
      'label': 'Room 406',
      'detail': 'Detail about Room 406'
    },
    {
      'frontImagePath': 'images/youarehere/ctefloorplans/407.webp',
      'detailImagePath': 'images/cte/cte407.webp',
      'label': 'Room 407',
      'detail': 'Detail about Room 407'
    },
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
