import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> allImages = [
    {'imagePath': 'images/office (1).jpg', 'label': 'Office 1'},
    {'imagePath': 'images/office (2).jpg', 'label': 'Office 2'},
    {'imagePath': 'images/office (3).jpg', 'label': 'Office 3'},
    {'imagePath': 'images/office (4).jpg', 'label': 'Office 4'},
    {'imagePath': 'images/office (5).jpg', 'label': 'Office 5'},
    {'imagePath': 'images/canteen1.jpg', 'label': 'Canteen 1'},
    {'imagePath': 'images/canteen2.jpg', 'label': 'Canteen 2'},
    {'imagePath': 'images/canteen3.jpg', 'label': 'Canteen 3'},
    {'imagePath': 'images/canteen4.jpg', 'label': 'Canteen 4'},
    {'imagePath': 'images/canteen5.jpg', 'label': 'Canteen 5'},
  ];

  List<Map<String, String>> filteredImages = [];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'images/11.png',
            height: 250,
            width: 300,
            fit: BoxFit.contain,
          ),
          centerTitle: true,
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 43, 163, 105),
          automaticallyImplyLeading: false,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Find what you're looking for?",
                  prefixIcon: Image.asset(
                    'images/reallogo.png',
                    width: 24,
                    height: 24,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    filteredImages = allImages
                        .where((image) => image['label']!
                            .toLowerCase()
                            .contains(value.toLowerCase()))
                        .toList();
                  });
                },
              ),
            ),
            TabBar(
              tabs: [
                Tab(text: 'Offices & Rooms'),
                Tab(text: 'Food & Others'),
                Tab(text: 'Rest Rooms'),
                Tab(text: 'Utilities'),
              ],
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  color: Color(0xFF0045A0),
                  width: 2.0,
                ),
              ),
              labelColor: Color(0xFF0045A0),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  buildTabContent(filteredImages),
                  buildTabContent(filteredImages),
                  buildTabContent(filteredImages),
                  buildTabContent(filteredImages),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTabContent(List<Map<String, String>> images) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: (images.length / 2).ceil(),
      itemBuilder: (context, index) {
        int startIndex = index * 2;
        int endIndex = startIndex + 2;

        if (endIndex > images.length) {
          endIndex = images.length;
        }

        List<Map<String, String>> currentImages =
            images.sublist(startIndex, endIndex);

        return Column(
          children: currentImages.map((imageWithLabel) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          imageWithLabel['imagePath']!,
                          height: double.maxFinite,
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8.0,
                      left: 8.0,
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 16.0,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            imageWithLabel['label']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
