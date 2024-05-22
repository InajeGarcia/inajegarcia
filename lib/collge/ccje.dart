import 'package:flutter/material.dart';

class CCje extends StatefulWidget {
  @override
  _CCjeState createState() => _CCjeState();
}

class _CCjeState extends State<CCje> {
  String folder = '1st Floor';

  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/ccje/ccje-csw.webp', 'label': 'CCJE 101'},
    {'imagePath': 'images/ccje/ccje-csw.webp', 'label': 'CCJE 102'},
    {'imagePath': 'images/ccje/ccje-csw.webp', 'label': 'CCJE 103'},
    {'imagePath': 'images/ccje/ccje-csw.webp', 'label': 'CCJE 105'},
    {
      'imagePath': 'images/ccje/ccje-csw.webp',
      'label': 'CR 1st Floor (Female)',
      'detailImagePath': 'images/ccje/cr/ccjecr1stf.webp',
      'detail': 'Detail about CR 1st Floor (Female)'
    },
    {
      'imagePath': 'images/ccje/ccje-csw.webp',
      'label': 'CR 1st Floor (Male)',
      'detailImagePath': 'images/ccje/cr/ccjecr1stm.webp',
      'detail': 'Detail about CR 1st Floor (Male)'
    },
  ];
  final List<Map<String, String>> secondFloorImages = [
    {
      'imagePath': 'images/ccje/secondfloor/forensicbalistics.webp',
      'label': 'Forensic Ballistics Room',
      'detailImagePath': 'images/ccje/secondfloor/forensicbalistics.webp',
      'detail': 'Detail about Forensic Ballistics Room'
    },
    {
      'imagePath': 'images/ccje/secondfloor/forensicroom.webp',
      'label': 'Forensic Room',
      'detailImagePath': 'images/ccje/secondfloor/forensicroom.webp',
      'detail': 'Detail about Forensic Room'
    },
    {
      'imagePath': 'images/ccje/secondfloor/ccjelibrary.webp',
      'label': 'Library',
      'detailImagePath': 'images/ccje/secondfloor/ccjelibrary.webp',
      'detail': 'Detail about Library'
    },
    {
      'imagePath': 'images/ccje/secondfloor/polygraphyroom.webp',
      'label': 'Polygraphy Room',
      'detailImagePath': 'images/ccje/secondfloor/polygraphyroom.webp',
      'detail': 'Detail about Polygraphy Room'
    },
    {
      'imagePath': 'images/ccje/secondfloor/questioneddocument.webp',
      'label': 'Questioned Document Room',
      'detailImagePath': 'images/ccje/secondfloor/questioneddocument.webp',
      'detail': 'Detail about Questioned Document Room'
    },
    {'imagePath': 'images/ccje/secondfloor/ccje201.webp', 'label': 'Room 201'},
    {'imagePath': 'images/ccje/secondfloor/ccje202.webp', 'label': 'Room 202'},
    {'imagePath': 'images/ccje/secondfloor/ccje203.webp', 'label': 'Room 203'},
    {'imagePath': 'images/ccje/secondfloor/ccje204.webp', 'label': 'Room 204'},
    {'imagePath': 'images/ccje/secondfloor/ccje205.webp', 'label': 'Room 205'},
    {'imagePath': 'images/ccje/secondfloor/ccje206.webp', 'label': 'Room 206'},
    {
      'imagePath': 'images/ccje/cr/ccjecr2ndf.webp',
      'label': 'CR 2nd Floor (Female)',
      'detailImagePath': 'images/ccje/cr/ccjecr2ndf.webp',
      'detail': 'Detail about CR 2nd Floor (Female)'
    },
    {
      'imagePath': 'images/ccje/cr/ccjecr2ndm.webp',
      'label': 'CR 2nd Floor (Male)',
      'detailImagePath': 'images/ccje/cr/ccjecr2ndm.webp',
      'detail': 'Detail about CR 2nd Floor (Male)'
    },
    {
      'imagePath': 'images/ccje/secondfloor/crimescenesimulation.webp',
      'label': 'Crime Scene Simulation Room',
      'detailImagePath': 'images/ccje/secondfloor/crimescenesimulation.webp',
      'detail': 'Detail about Crime Scene Simulation Room'
    },
    {
      'imagePath': 'images/ccje/secondfloor/csooffice.webp',
      'label': 'CSO Office',
      'detailImagePath': 'images/ccje/secondfloor/csooffice.webp',
      'detail': 'Detail about CSO Office'
    },
    {
      'imagePath': 'images/ccje/secondfloor/dactyloscopy.webp',
      'label': 'Dactyloscopy Room',
      'detailImagePath': 'images/ccje/secondfloor/dactyloscopy.webp',
      'detail': 'Detail about Dactyloscopy Room'
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> images =
        folder == '1st Floor' ? firstFloorImages : secondFloorImages;
    return Scaffold(
      appBar: AppBar(
        title: Text('CCJE'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    folder = '1st Floor';
                  });
                },
                child: Text(
                  '1st Floor',
                  style: TextStyle(
                    color: folder == '1st Floor'
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
                    folder = '2nd Floor';
                  });
                },
                child: Text(
                  '2nd Floor',
                  style: TextStyle(
                    color: folder == '2nd Floor'
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
                    child: InkWell(
                      onTap: () {
                        _showDetailDialog(context, images[index]);
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
                                color: Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(0.5),
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

  void _showDetailDialog(BuildContext context, Map<String, String> image) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(image['label']!),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                image['detailImagePath']!,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 8),
              Text(image['detail']!),
            ],
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
      },
    );
  }
}
