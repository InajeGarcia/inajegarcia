import 'package:flutter/material.dart';

class CTe extends StatelessWidget {
  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/cte/cte201.webp', 'label': 'Room 201'},
    {'imagePath': 'images/cte/cte202.webp', 'label': 'Room 202'},
    {'imagePath': 'images/cte/cte203.webp', 'label': 'Room 203'},
    {'imagePath': 'images/cte/cte204.webp', 'label': 'Room 204'},
    {'imagePath': 'images/cte/cte205.webp', 'label': 'Room 205'},
    {'imagePath': 'images/cte/cte206.webp', 'label': 'Room 206'},
    {'imagePath': 'images/cte/cte207.webp', 'label': 'Room 207'},
    {'imagePath': 'images/cte/cte301.webp', 'label': 'Room 301'},
    {'imagePath': 'images/cte/cte302.webp', 'label': 'Room 302'},
    {'imagePath': 'images/cte/cte303.webp', 'label': 'Room 303'},
    {'imagePath': 'images/cte/cte304.webp', 'label': 'Room 304'},
    {'imagePath': 'images/cte/cte305.webp', 'label': 'Room 305'},
    {'imagePath': 'images/cte/cte306.webp', 'label': 'Room 306'},
    {'imagePath': 'images/cte/cte307.webp', 'label': 'Room 307'},
    //{'imagePath': 'images/cte/cte401.webp', 'label': 'Room 401'},
    //{'imagePath': 'images/cte/cte402.webp', 'label': 'Room 402'},
    {'imagePath': 'images/cte/cte403.webp', 'label': 'Room 403'},
    {'imagePath': 'images/cte/cte404.webp', 'label': 'Room 404'},
    {'imagePath': 'images/cte/cte405.webp', 'label': 'Room 405'},
    {'imagePath': 'images/cte/cte406.webp', 'label': 'Room 406'},
    {'imagePath': 'images/cte/cte407.webp', 'label': 'Room 407'},
    {'imagePath': 'images/cte/ctecr2nd.webp', 'label': '2nd Floor'},
    {'imagePath': 'images/cte/ctecr3rd.webp', 'label': '3rd Floor'},
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
