import 'package:flutter/material.dart';

class Admin extends StatelessWidget {
  final List<String> floorImages = [
    'images/admin.webp',
    'images/admin.webp',
    'images/admin.webp',
  ];

  final List<List<String>> roomImages = [
    // First Floor
    [
      'images/records.webp',
      'images/registrar.webp',
      'images/cashier.webp',
      // Add more image URLs as needed for the first floor
    ],
    // Second Floor
    [
      'images/upim.webp',
      'images/vpaa.webp',
      'images/pasuc.webp',
      // Add more image URLs as needed for the second floor
    ],
    // Third Floor
    [
      'images/tadena.webp',
      'images/oandasan.webp',
      'images/op.webp',
      // Add more image URLs as needed for the third floor
    ],
  ];

  final List<List<String>> roomNicknames = [
    // First Floor
    [
      'Records Office',
      'Registrar Office',
      'Cashiering Unit',
      // Add more nicknames as needed for the first floor
    ],
    // Second Floor
    [
      'UPIM Office',
      'VPAA Office',
      'PASUC Office',
      // Add more nicknames as needed for the second floor
    ],
    // Third Floor
    [
      'Tadena Office',
      'Oandasan Office',
      'Office of the President',
      // Add more nicknames as needed for the third floor
    ],
  ];

  final List<List<List<String>>> roomDetails = [
    // First Floor
    [
      // Room 1
      [
        'Room 101 Details',
        'Records Office',
        // Add more details as needed for room 1
      ],
      // Room 2
      [
        'Room 102 Details',
        'Registrar Office',
        // Add more details as needed for room 2
      ],
      // Room 3
      [
        'Room 103 Details',
        'Cashier Office',
        // Add more details as needed for room 3
      ],
    ],
    // Second Floor
    [
      // Room 1
      [
        'Room 201 Details',
        'UP-IM Office',
        // Add more details as needed for room 1
      ],
      // Room 2
      [
        'Room 202 Details',
        'VPAA Office',
        // Add more details as needed for room 2
      ],
      // Room 3
      [
        'Room 203 Details',
        'PASUC Office',
        // Add more details as needed for room 3
      ],
    ],
    // Third Floor
    [
      // Room 1
      [
        'Room 301 Details',
        'Tadena Office',
        // Add more details as needed for room 1
      ],
      // Room 2
      [
        'Room 302 Details',
        'Oandasan Office',
        // Add more details as needed for room 2
      ],
      // Room 3
      [
        'Room 303 Details',
        'Office of the President',
        // Add more details as needed for room 3
      ],
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Rooms'),
      ),
      body: ListView.builder(
        itemCount: floorImages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to a new screen to show the room images for the selected floor
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FloorDetailPage(
                    floorImages: roomImages[index],
                    floorNumber: index + 1,
                    roomNicknames: roomNicknames[index],
                    roomDetails: roomDetails[index],
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 4,
                child: ListTile(
                  title: Text(
                    'Floor ${index + 1}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('Tap to view rooms'),
                  leading: Image.asset(
                    floorImages[index],
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class FloorDetailPage extends StatelessWidget {
  final List<String> floorImages;
  final int floorNumber;
  final List<String> roomNicknames;
  final List<List<String>> roomDetails;

  FloorDetailPage({
    required this.floorImages,
    required this.floorNumber,
    required this.roomNicknames,
    required this.roomDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floor $floorNumber Rooms'),
      ),
      body: ListView.builder(
        itemCount: floorImages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Show room details when room image is tapped
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return RoomDetailsDialog(
                    imageUrl: floorImages[index],
                    roomNumber: index + 1,
                    roomDetails: roomDetails[index],
                  );
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      floorImages[index],
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Colors.black54,
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        roomNicknames[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class RoomDetailsDialog extends StatelessWidget {
  final String imageUrl;
  final int roomNumber;
  final List<String> roomDetails;

  RoomDetailsDialog({
    required this.imageUrl,
    required this.roomNumber,
    required this.roomDetails,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(roomDetails[0]),
      content: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              roomDetails[1],
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            // Add more room details here if needed
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
    );
  }
}
