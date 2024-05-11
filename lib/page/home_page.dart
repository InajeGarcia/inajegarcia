import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/searchresult_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // Lists of image URLs for each officeImages
  final List<Map<String, dynamic>> officeImages = [
    {
      'imagePath': 'images/newadmin/registrar.webp',
      'name': 'Registrar Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/budget.webp',
      'name': 'Budget Office',
      'details':
          'The Budget office is located at the first floor of the Administration building at the very last office, you should see the budget office.',
    },
    {
      'imagePath': 'images/newadmin/cashier.webp',
      'name': 'Cashiering Unit',
      'details':
          'Upon entering the Administration Building, You will see the Cashiering Unit, the second office to the left part.',
    },
    {
      'imagePath': 'images/newadmin/accounting.webp',
      'name': 'Accounting Office',
      'details':
          'The Accounting Office is located at first floor of the Administration building, just enter the admin building and walk straight until you pass the second stairs, you are now in the Accounting Office.',
    },
  ];

  final List<Map<String, dynamic>> foodImages = [
    {
      'imagePath': 'images/canteen/canteen1.webp',
      'name': 'Canteen 1',
      'details': 'Located in front of Ceramic Center',
    },
    {
      'imagePath': 'images/canteen/canteen2.webp',
      'name': 'Canteen 2',
      'details': 'Canteen 2',
    },
    {
      'imagePath': 'images/canteen/canteen5.webp',
      'name': 'Canteen 5',
      'details': 'Canteen 5',
    },
    {
      'imagePath': 'images/canteen/canteen7.webp',
      'name': 'Canteen 7',
      'details': 'Canteen 7',
    },
    {
      'imagePath': 'images/canteen/canteen3.webp',
      'name': 'Canteen 3',
      'details': 'Canteen 3',
    },
  ];

  final List<Map<String, dynamic>> restroomImages = [
    {
      'imagePath': 'images/ccje/ccjecr1stm.webp',
      'name': 'CCJE CR 1st Floor Male',
      'details': 'CCJE CR 1st Floor Male',
    },
    {
      'imagePath': 'images/ccje/ccjecr1stf.webp',
      'name': 'CCJE CR 1st Floor Female',
      'details': 'CCJE CR 1st Floor Female',
    },
    {
      'imagePath': 'images/ccje/ccjecr2ndm.webp',
      'name': 'CCJE CR 2nd Floor Male',
      'details': 'CCJE CR 2nd Floor Male',
    },
    {
      'imagePath': 'images/ccje/ccjecr2ndf.webp',
      'name': 'CCJE CR 2nd Floor Female',
      'details': 'CCJE CR 2nd Floor Female',
    },
    {
      'imagePath': 'images/cbaa/cbaacr.webp',
      'name': 'CBAA CR',
      'details': 'CBAA CR',
    },
    {
      'imagePath': 'images/cbaa/cbaacr3.webp',
      'name': 'CBAA CR',
      'details': 'CBAA CR',
    },
  ];

  final List<Map<String, dynamic>> utilityImages = [
    {
      'imagePath': 'images/utilities/property.webp',
      'name': 'Property',
      'details': 'Property Office/Storage',
    },
    {
      'imagePath': 'images/cmed/stockroom1st.webp',
      'name': 'Stockroom 1st',
      'details': 'Stockroom 1st',
    },
    {
      'imagePath': 'images/cmed/stockroomcmed.webp',
      'name': 'Stockroom CMED',
      'details': 'Stockroom CMED',
    },
    {
      'imagePath': 'images/cme/stockroomcmed2.webp',
      'name': 'Stockroom CMED 2nd Floor',
      'details': 'Stockroom CMED 2nd Floor',
    },
    {
      'imagePath': 'images/cmed/stockroomcmed3.webp',
      'name': 'Stockroom CMED 3rd Floor',
      'details': 'Stockroom CMED 3rd Floor',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'images/bglogo/11.webp',
            height: 250,
            width: 300,
            fit: BoxFit.contain,
          ),
          centerTitle: true,
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 5, 128, 36),
          automaticallyImplyLeading: false,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _searchController,
                            decoration: InputDecoration(
                              hintText: "Search what you're looking for?",
                              border: InputBorder.none,
                              prefixIcon: Image.asset(
                                'images/bglogo/pnglang.webp',
                                width: 24,
                                height: 24,
                              ),
                            ),
                            onSubmitted: (value) {
                              // Navigate to SearchResultPage with the search input
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      SearchResultPage(query: value),
                                ),
                              );
                            },
                            onChanged: (value) {
                              setState(() {});
                              // Rebuild the widget to show/hide the clear button
                            },
                          ),
                        ),
                        if (_searchController.text.isNotEmpty)
                          IconButton(
                            icon: Icon(Icons.clear_rounded),
                            onPressed: () {
                              _searchController.clear();
                              setState(() {});
                              // Rebuild the widget to hide the clear button
                            },
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: TabBar(
                tabs: [
                  Tab(text: 'Offices'),
                  Tab(text: 'Canteens'),
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
            ),
          ],
          body: TabBarView(
            children: [
              buildTabContent(randomlySelectImages(officeImages), officeImages),
              buildTabContent(randomlySelectImages(foodImages), foodImages),
              buildTabContent(
                  randomlySelectImages(restroomImages), restroomImages),
              buildTabContent(
                  randomlySelectImages(utilityImages), utilityImages),
            ],
          ),
        ),
      ),
    );
  }

  // Function to build a vertical stack of images with rounded edges
  Widget buildTabContent(
      List<String> imagePaths, List<Map<String, dynamic>> imageList) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: imagePaths.length,
      itemBuilder: (context, index) {
        // Use GestureDetector or InkWell to make the image clickable
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: InkWell(
            onTap: () {
              // Handle the tap event here
              // For example, show a dialog with the office details
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(
                    imageList.firstWhere((element) =>
                            element['imagePath'] ==
                            imagePaths[index])['name'] ??
                        'sdsd',
                    textAlign: TextAlign.left,
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imagePaths[index],
                          fit: BoxFit.contain,
                          width: double.infinity,
                        ),
                        SizedBox(height: 10),
                        Text(
                          imageList.firstWhere((element) =>
                                  element['imagePath'] ==
                                  imagePaths[index])['details'] ??
                              '',
                          textAlign: TextAlign.left,
                        ),
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
                ),
              );
            },
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20), // Adjust the border radius as needed
                  child: Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200, // Adjust height as needed
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 5,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      imageList.firstWhere((element) =>
                              element['imagePath'] ==
                              imagePaths[index])['name'] ??
                          'Image Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
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
    );
  }

  // Function to randomly select some images from the provided list
  List<String> randomlySelectImages(List<Map<String, dynamic>> imageList) {
    final random = Random();
    final selectedIndex =
        List.generate(5, (index) => random.nextInt(imageList.length));
    return List.generate(
        5, (index) => imageList[selectedIndex[index]]['imagePath']);
  }
}
