import 'package:flutter/material.dart';

class CBaa extends StatefulWidget {
  @override
  _CBaaState createState() => _CBaaState();
}

class _CBaaState extends State<CBaa> {
  String folder = 'old';

  final List<Map<String, String>> oldImages = [
    {
      'imagePath': 'images/cbaa/old/e101.webp',
      'label': 'E-101',
      'detailImagePath': 'images/cbaa/old/e101.webp',
      'detail': 'Detail about E-101'
    },
    {
      'imagePath': 'images/cbaa/old/e102.webp',
      'label': 'E-102',
      'detailImagePath': 'images/cbaa/old/e102.webp',
      'detail': 'Detail about E-102'
    },
    // Add more old images similarly
  ];

  final List<Map<String, String>> newImages = [
    {
      'imagePath': 'images/cbaa/new/cbaahall.webp',
      'label': 'CBAA Hall',
      'detailImagePath': 'images/cbaa/new/cbaahall.webp',
      'detail': 'Detail about CBAA Hall'
    },
    {
      'imagePath': 'images/cbaa/new/cbaafacultyroom.webp',
      'label': 'Faculty Room',
      'detailImagePath': 'images/cbaa/new/cbaafacultyroom.webp',
      'detail': 'Detail about Faculty Room'
    },
    // Add more new images similarly
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> images = folder == 'old' ? oldImages : newImages;
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Rooms'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    folder = 'old';
                  });
                },
                child: Text(
                  'Old',
                  style: TextStyle(
                    color: folder == 'old'
                        ? Color.fromARGB(255, 238, 204, 10)
                        : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 20),
              TextButton(
                onPressed: () {
                  setState(() {
                    folder = 'new';
                  });
                },
                child: Text(
                  'New',
                  style: TextStyle(
                    color: folder == 'new'
                        ? Color.fromARGB(255, 238, 204, 10)
                        : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Scrollbar(
              child: ListView.builder(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              imagePath: images[index]['detailImagePath']!,
                              label: images[index]['label']!,
                              detail: images[index]['detail']!,
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              images[index]['imagePath']!,
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 8,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                images[index]['label']!,
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
            ),
          ),
        ],
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
