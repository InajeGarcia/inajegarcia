import 'package:flutter/material.dart';

class Admin extends StatelessWidget {
  final List<String> floorImages = [
    'images/spot/admin.webp',
    'images/spot/admin.webp',
    'images/spot/admin.webp',
  ];

  final List<List<String>> roomImages = [
    // First Floor
    [
      'images/newadmin/records.webp',
      'images/newadmin/registrar.webp',
      'images/newadmin/cashier.webp',
      'images/newadmin/coa.webp',
      'images/newadmin/accounting.webp',
      'images/newadmin/finance.webp',
      'images/newadmin/vpfad.webp',
      'images/newadmin/budget.webp',
    ],
    // Second Floor
    [
      'images/newadmin/upim.webp',
      'images/newadmin/vpaa.webp',
      'images/newadmin/pasuc.webp',
      'images/newadmin/research.webp',
      'images/newadmin/extension.webp',
      'images/newadmin/pia.webp',
      'images/newadmin/networks.webp',
      'images/newadmin/hrmo.webp',
      'images/newadmin/vpre.webp',
    ],
    // Third Floor
    [
      'images/newadmin/legal.webp',
      'images/newadmin/oandasan.webp',
      'images/newadmin/op.webp',
      'images/newadmin/ico.webp',
      'images/newadmin/fedalumni.webp',
      'images/newadmin/boardsec.webp',
      'images/newadmin/tadena.webp',
    ],
  ];

  final List<List<String>> roomNicknames = [
    // First Floor
    [
      'Records Office',
      'Registrar Office',
      'Cashiering Unit',
    ],
    // Second Floor
    [
      'UPIM Office',
      'VPAA Office',
      'PASUC Office',
    ],
    // Third Floor
    [
      'Tadena Office',
      'Oandasan Office',
      'Office of the President',
    ],
  ];

  final List<List<List<String>>> roomDetails = [
    // First Floor
    [
      [
        'Records Office',
        'Records Office',
      ],
      [
        'Registrar',
        'Registrar Office',
      ],
      [
        'Cashiering Unit',
        'Cashier Office',
      ],
      [
        'Commission on Audit',
        'COA Office',
      ],
      [
        'Accounting',
        'Accounting Office',
      ],
      [
        'Finance',
        'FinanceOffice',
      ],
      [
        'Vice President for Financial Administration',
        'VPFad Office',
      ],
      [
        'Budget',
        'Budget Office',
      ],
    ],
    // Second Floor
    [
      [
        'University Planning and Information System Management',
        'UPIM Office',
      ],
      [
        'VPAA Office',
        'VPAA OfficeVice President for Academic Affairs',
      ],
      [
        'PASUC Office',
        'PASUC Zonal Faculty Evaluation Center',
      ],
      [
        'Research',
        'University Research Office',
      ],
      [
        'University Extension',
        'Extension Office',
      ],
      [
        'Public Information Affairs',
        'PIA Office',
      ],
      [
        'Human Resource Management Office',
        'HRMOffice',
      ],
      [
        'Vice President for Research and Extension',
        'VPRE Office',
      ],
    ],
    // Third Floor
    [
      [
        'Legal',
        'Legal Office',
      ],
      [
        'Oandasan Room',
        'Oandasan Office',
      ],
      [
        'Office of the President',
        'Office of the President',
      ],
      [
        'Internal Control Office',
        'Internal Control Office',
      ],
      [
        'UNP Federated Alumni Association',
        'Office of UNP Federated Alumni Association',
      ],
      [
        'Board Secretary',
        'Office of the University Board Secretary',
      ],
      [
        'Tadena Hall',
        'Dr. Romualdo Tadena Hall',
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
