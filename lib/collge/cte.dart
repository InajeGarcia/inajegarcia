import 'package:flutter/material.dart';

class CTe extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/cte201.jpg', 'label': 'Room 201'},
    {'imagePath': 'images/cte202.jpg', 'label': 'Room 202'},
    {'imagePath': 'images/cte203.jpg', 'label': 'Room 203'},
    {'imagePath': 'images/cte204.jpg', 'label': 'Room 204'},
    {'imagePath': 'images/cte205.jpg', 'label': 'Room 205'},
    {'imagePath': 'images/cte206.jpg', 'label': 'Room 206'},
    {'imagePath': 'images/cte207.jpg', 'label': 'Room 207'},
    {'imagePath': 'images/cte301.jpg', 'label': 'Room 301'},
    {'imagePath': 'images/cte302.jpg', 'label': 'Room 302'},
    {'imagePath': 'images/cte303.jpg', 'label': 'Room 303'},
    {'imagePath': 'images/cte304.jpg', 'label': 'Room 304'},
    {'imagePath': 'images/cte305.jpg', 'label': 'Room 305'},
    {'imagePath': 'images/cte306.jpg', 'label': 'Room 306'},
    {'imagePath': 'images/cte307.jpg', 'label': 'Room 307'},
    {'imagePath': 'images/cte401.jpg', 'label': 'Room 401'},
    {'imagePath': 'images/cte402.jpg', 'label': 'Room 402'},
    {'imagePath': 'images/cte403.jpg', 'label': 'Room 403'},
    {'imagePath': 'images/cte404.jpg', 'label': 'Room 404'},
    {'imagePath': 'images/cte405.jpg', 'label': 'Room 405'},
    {'imagePath': 'images/cte406.jpg', 'label': 'Room 406'},
    {'imagePath': 'images/cte407.jpg', 'label': 'Room 407'},
    {'imagePath': 'images/ctecr2nd.jpg', 'label': '2nd Floor'},
    {'imagePath': 'images/ctecr3rd.jpg', 'label': '3rd Floor'},
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
