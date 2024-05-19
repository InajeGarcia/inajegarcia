import 'package:flutter/material.dart';

class CCje extends StatefulWidget {
  @override
  _CCjeState createState() => _CCjeState();
}

class _CCjeState extends State<CCje> {
  String folder = '1st Floor';

  final List<Map<String, String>> firstFloorImages = [
    {'imagePath': 'images/ccje/firstfloor/ccje101.webp', 'label': 'CCJE 101'},
    {'imagePath': 'images/ccje/firstfloor/ccje102.webp', 'label': 'CCJE 102'},
    {'imagePath': 'images/ccje/firstfloor/ccje103.webp', 'label': 'CCJE 103'},
    {'imagePath': 'images/ccje/firstfloor/ccje105.webp', 'label': 'CCJE 105'},
    {
      'imagePath': 'images/ccje/cr/ccjecr1stf.webp',
      'label': 'CR 1st Floor (Female)'
    },
    {
      'imagePath': 'images/ccje/cr/ccjecr1stm.webp',
      'label': 'CR 1st Floor (Male)'
    },
  ];
  final List<Map<String, String>> secondFloorImages = [
    {
      'imagePath': 'images/ccje/secondfloor/forensicbalistics.webp',
      'label': 'Forensic Ballistics Room'
    },
    {
      'imagePath': 'images/ccje/secondfloor/forensicroom.webp',
      'label': 'Forensic Room'
    },
    {
      'imagePath': 'images/ccje/secondfloor/ccjelibrary.webp',
      'label': 'Library'
    },
    {
      'imagePath': 'images/ccje/secondfloor/polygraphyroom.webp',
      'label': 'Polygraphy Room'
    },
    {
      'imagePath': 'images/ccje/secondfloor/questioneddocument.webp',
      'label': 'Questioned Document Room'
    },
    {'imagePath': 'images/ccje/secondfloor/ccje201.webp', 'label': 'Room 201'},
    {'imagePath': 'images/ccje/secondfloor/ccje202.webp', 'label': 'Room 202'},
    {'imagePath': 'images/ccje/secondfloor/ccje203.webp', 'label': 'Room 203'},
    {'imagePath': 'images/ccje/secondfloor/ccje204.webp', 'label': 'Room 204'},
    {'imagePath': 'images/ccje/secondfloor/ccje205.webp', 'label': 'Room 205'},
    {'imagePath': 'images/ccje/secondfloor/ccje206.webp', 'label': 'Room 206'},
    {
      'imagePath': 'images/ccje/cr/ccjecr2ndf.webp',
      'label': 'CR 2nd Floor (Female)'
    },
    {
      'imagePath': 'images/ccje/cr/ccjecr2ndm.webp',
      'label': 'CR 2nd Floor (Male)'
    },
    {
      'imagePath': 'images/ccje/secondfloor/crimescenesimulation.webp',
      'label': 'Crime Scene Simulation Room'
    },
    {
      'imagePath': 'images/ccje/secondfloor/csooffice.webp',
      'label': 'CSO Office'
    },
    {
      'imagePath': 'images/ccje/secondfloor/dactyloscopy.webp',
      'label': 'Dactyloscopy Room'
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> images =
        folder == 'first floor' ? firstFloorImages : secondFloorImages;
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
                    folder = 'first floor';
                  });
                },
                child: Text(
                  'First floor',
                  style: TextStyle(
                    color: folder == 'first floor'
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
                    folder = 'second floor';
                  });
                },
                child: Text(
                  'Second floor',
                  style: TextStyle(
                    color: folder == 'second floor'
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
                              color:
                                  Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
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
