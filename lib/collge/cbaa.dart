import 'package:flutter/material.dart';

class CBaa extends StatefulWidget {
  @override
  _CBaaState createState() => _CBaaState();
}

class _CBaaState extends State<CBaa> {
  String folder = 'old';

  final List<Map<String, dynamic>> oldImages = [
    {
      'imagePath1': 'images/cbaa/old/e101.webp',
      'imagePath2': 'images/cbaa/old/e101.webp',
      'label': 'E-101'
    },
    {
      'imagePath1': 'images/cbaa/old/e102.webp',
      'imagePath2': 'images/cbaa/old/e102.webp',
      'label': 'E-102'
    },
    {
      'imagePath1': 'images/cbaa/old/e103.webp',
      'imagePath2': 'images/cbaa/old/e103.webp',
      'label': 'E-103'
    },
    {
      'imagePath1': 'images/cbaa/old/e104.webp',
      'imagePath2': 'images/cbaa/old/e104.webp',
      'label': 'E-104'
    },
    {
      'imagePath1': 'images/cbaa/old/e201.webp',
      'imagePath2': 'images/cbaa/old/e201.webp',
      'label': 'E-201'
    },
    {
      'imagePath1': 'images/cbaa/old/e202-e203.webp',
      'imagePath2': 'images/cbaa/old/e202-e203.webp',
      'label': 'E-202 - E-203'
    },
    {
      'imagePath1': 'images/cbaa/old/e204.webp',
      'imagePath2': 'images/cbaa/old/e204.webp',
      'label': 'E-204'
    },
    {
      'imagePath1': 'images/cbaa/old/e205-e206.webp',
      'imagePath2': 'images/cbaa/old/e205-e206.webp',
      'label': 'E-205 - E-206'
    },
    {
      'imagePath1': 'images/cbaa/old/e207.webp',
      'imagePath2': 'images/cbaa/old/e207.webp',
      'label': 'E-207'
    },
    {
      'imagePath1': 'images/cbaa/old/e208.webp',
      'imagePath2': 'images/cbaa/old/e208.webp',
      'label': 'E-208'
    },
    {
      'imagePath1': 'images/cbaa/old/e209.webp',
      'imagePath2': 'images/cbaa/old/e209.webp',
      'label': 'E-209'
    },
    {
      'imagePath1': 'images/cbaa/old/e210-e211.webp',
      'imagePath2': 'images/cbaa/old/e210-e211.webp',
      'label': 'E-210 - E-211'
    },
    {
      'imagePath1': 'images/cbaa/old/e212.webp',
      'imagePath2': 'images/cbaa/old/e212.webp',
      'label': 'E-212'
    },
    {
      'imagePath1': 'images/cbaa/old/eteapoffice.webp',
      'imagePath2': 'images/cbaa/old/eteapoffice.webp',
      'label': 'ETEAP Office'
    },
    {
      'imagePath1': 'images/cbaa/old/cbaaobas.webp',
      'imagePath2': 'images/cbaa/old/cbaaobas.webp',
      'label': 'OBAS'
    },
    {
      'imagePath1': 'images/cbaa/old/cbaamultimediacenter.webp',
      'imagePath2': 'images/cbaa/old/cbaamultimediacenter.webp',
      'label': 'Multimedia Center'
    },
    {
      'imagePath1': 'images/cbaa/old/cbaaminilibrary.webp',
      'imagePath2': 'images/cbaa/old/cbaaminilibrary.webp',
      'label': 'Mini Library'
    },
    {
      'imagePath1': 'images/cbaa/old/cbaainternet.webp',
      'imagePath2': 'images/cbaa/old/cbaainternet.webp',
      'label': 'Internet Room'
    },
    {
      'imagePath1': 'images/cbaa/old/cbaafaculty.webp',
      'imagePath2': 'images/cbaa/old/cbaafaculty.webp',
      'label': 'Faculty'
    },
    {
      'imagePath1': 'images/cbaa/old/cbaaelibrary.webp',
      'imagePath2': 'images/cbaa/old/cbaaelibrary.webp',
      'label': 'E-Library'
    },
    {
      'imagePath1': 'images/cbaa/old/cbaacl2.webp',
      'imagePath2': 'images/cbaa/old/cbaacl2.webp',
      'label': 'Computer Lab2'
    },
    {
      'imagePath1': 'images/cbaa/old/cbaacl4.webp',
      'imagePath2': 'images/cbaa/old/cbaacl4.webp',
      'label': 'Computer Lab4'
    },
    {
      'imagePath1': 'images/cbaa/old/cbaafunctionroom.webp',
      'imagePath2': 'images/cbaa/old/cbaafunctionroom.webp',
      'label': 'Function Room'
    },
    {
      'imagePath1': 'images/cbaa/old/cbaaguidance.webp',
      'imagePath2': 'images/cbaa/old/cbaaguidance.webp',
      'label': 'Guidance Office'
    },
  ];

  final List<Map<String, dynamic>> newImages = [
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/functionhall.webp',
      'imagePath2': 'images/cbaa/new/cbaahall.webp',
      'label': 'CBAA Hall'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/assdeanoffice.webp',
      'imagePath2': 'images/cbaa/new/cbaafacultyroom.webp',
      'label': 'Faculty Room'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/assdeanoffice.webp',
      'imagePath2': 'images/cbaa/new/cbaaassdeanoffice.webp',
      'label': 'Associate Dean\'s Office'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaadeansoffice.webp',
      'imagePath2': 'images/cbaa/new/cbaadeanoffice.webp',
      'label': 'Dean\'s Office'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa102.webp',
      'imagePath2': 'images/cbaa/new/cbaa102.webp',
      'label': 'CBAA 103'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa104.webp',
      'imagePath2': 'images/cbaa/new/cbaa104.webp',
      'label': 'CBAA 104'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa105.webp',
      'imagePath2': 'images/cbaa/new/cbaa105.webp',
      'label': 'CBAA 105'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa106.webp',
      'imagePath2': 'images/cbaa/new/cbaa106.webp',
      'label': 'CBAA 106'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa107.webp',
      'imagePath2': 'images/cbaa/new/cbaa107.webp',
      'label': 'CBAA 107'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa108.webp',
      'imagePath2': 'images/cbaa/new/cbaa108.webp',
      'label': 'CBAA 108'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa201.webp',
      'imagePath2': 'images/cbaa/new/cbaa201.webp',
      'label': 'CBAA 201'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa201a.webp',
      'imagePath2': 'images/cbaa/new/cbaa202.webp',
      'label': 'CBAA 202'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa203.webp',
      'imagePath2': 'images/cbaa/new/cbaa203.webp',
      'label': 'CBAA 203'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa301.webp',
      'imagePath2': 'images/cbaa/new/cbaa301.webp',
      'label': 'CBAA 301'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa302.webp',
      'imagePath2': 'images/cbaa/new/cbaa302.webp',
      'label': 'CBAA 302'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa303.webp',
      'imagePath2': 'images/cbaa/new/cbaa303.webp',
      'label': 'CBAA 303'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa304.webp',
      'imagePath2': 'images/cbaa/new/cbaa304.webp',
      'label': 'CBAA 304'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa306.webp',
      'imagePath2': 'images/cbaa/new/cbaa305.webp',
      'label': 'CBAA 305'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa306.webp',
      'imagePath2': 'images/cbaa/new/cbaa306.webp',
      'label': 'CBAA 306'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa401.webp',
      'imagePath2': 'images/cbaa/new/cbaa401.webp',
      'label': 'CBAA 401'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa402.webp',
      'imagePath2': 'images/cbaa/new/cbaa402.webp',
      'label': 'CBAA 402'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa403.webp',
      'imagePath2': 'images/cbaa/new/cbaa403.webp',
      'label': 'CBAA 403'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa404.webp',
      'imagePath2': 'images/cbaa/new/cbaa404.webp',
      'label': 'CBAA 404'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa405.webp',
      'imagePath2': 'images/cbaa/new/cbaa405.webp',
      'label': 'CBAA 405'
    },
    {
      'imagePath1': 'images/youarehere/newcbaafloorplans/cbaa406.webp',
      'imagePath2': 'images/cbaa/new/cbaa406.webp',
      'label': 'CBAA 406'
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> images = folder == 'old' ? oldImages : newImages;
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
                            builder: (context) => Scaffold(
                              appBar: AppBar(
                                title: Text(images[index]['label']),
                              ),
                              body: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      images[index]['imagePath2'],
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      images[index]['label'],
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              images[index]['imagePath1'],
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
                                images[index]['label'],
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
