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
      'imagePath': 'images/registrarcashier.gif',
      'name': 'Office of the Registrar',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/registrarcashier.gif',
      'name': 'Cashiering Unit',
      'details':
          'Upon entering the Administration Building, You will see the Cashiering Unit, the second office to the left part.',
    },
    {
      'imagePath': 'images/accounting.gif',
      'name': 'Accounting Office',
      'details':
          'The Accounting Office is located at first floor of the Administration building, just enter the admin building and walk straight until you pass the second stairs, you are now in the Accounting Office.',
    },
    {
      'imagePath': 'images/newadmin/agribusiness.webp',
      'name': 'Agribusiness Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/boardsec.webp',
      'name': 'Board Secretary Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/budgetvpfad.gif',
      'name': 'Budget Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/cgad.webp',
      'name': 'Center for Gender and Development Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/coa.gif',
      'name': 'Comission on Audit Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/extension.webp',
      'name': 'University Extension Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/facultyunion.webp',
      'name': 'Faculty Union Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/fedalumni.webp',
      'name': 'Federal Alumni Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/finance.webp',
      'name': 'Director Financial Services Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/hrmo.webp',
      'name': 'Human Resource Management Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/ico.webp',
      'name': 'Internal Control Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/infotech.webp',
      'name': 'InfoTech Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/instruction.webp',
      'name': 'Instruction & Faculty Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/maintenance.webp',
      'name': 'University Computer Maintenance',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/networks.webp',
      'name': 'Networks System Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/nstp.webp',
      'name': 'NSTP',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/oandasan.webp',
      'name': 'Oandasan Room',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/op.webp',
      'name': 'Office of the President',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/pia.webp',
      'name': 'Public & Iinternational Affairs Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/records.webp',
      'name': 'Records Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/research.webp',
      'name': 'University Research Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/tadena.webp',
      'name': 'Dr. Romualdo B. Tadena Hall',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/upim.webp',
      'name': 'UPIM Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/vpfad.webp',
      'name': 'VPFad Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
    {
      'imagePath': 'images/newadmin/vpre.webp',
      'name': 'VPRE Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    },
  ];

  final List<Map<String, dynamic>> foodImages = [
    {
      'imagePath': 'images/spot/groceria.webp',
      'name': 'Groceria',
      'details': 'Beside Founders Plaza',
    },
    {
      'imagePath': 'images/spot/guestelcanteen.webp',
      'name': 'Guestel Canteen',
      'details': 'Beside Groceria',
    },
    {
      'imagePath': 'images/canteen/canteen5.webp',
      'name': 'Canteen 5',
      'details': 'Canteen 5',
    },
    {
      'imagePath': 'images/canteen/canteen7.webp',
      'name': 'Canteen Near CCIT',
      'details': 'Beside CCIT/CAS/CBAA',
    },
    {
      'imagePath': 'images/canteen/canteen3.webp',
      'name': 'Canteen 3',
      'details': 'Canteen 3',
    },
  ];

  final List<Map<String, dynamic>> restroomImages = [
    {
      'imagePath': 'images/ccje/cr/ccjecr1stm.webp',
      'name': 'CCJE CR 1st Floor',
      'details':
          'Upon entering the College, just walk until you reach the end part where you can see the Restroom.',
    },
    {
      'imagePath': 'images/ccje/cr/ccjecr1stf.webp',
      'name': 'CCJE CR 1st Floor Female',
      'details':
          'Upon entering the College, just walk until you reach the end part where you can see the Restroom.',
    },
    {
      'imagePath': 'images/ccje/cr/ccjecr2ndm.webp',
      'name': 'CCJE CR 2nd Floor Male',
      'details': 'CCJE CR 2nd Floor Male',
    },
    {
      'imagePath': 'images/ccje/cr/ccjecr2ndf.webp',
      'name': 'CCJE CR 2nd Floor Female',
      'details': 'CCJE CR 2nd Floor Female',
    },
    {
      'imagePath': 'images/cbaa/cr/cbaacr.webp',
      'name': 'CBAA CR',
      'details': 'CBAA CR',
    },
    {
      'imagePath': 'images/cbaa/cr/cbaacr3.webp',
      'name': 'CBAA CR',
      'details': 'CBAA CR',
    },
    {
      'imagePath': 'images/chtm/chtmcr.webp',
      'name': 'CHTM CR',
      'details': 'CHTM',
    },
    {
      'imagePath': 'images/chtm/chtmcr2.webp',
      'name': 'CHTM CR',
      'details': 'CHTM',
    },
    {
      'imagePath': 'images/cpad/cpadcr.webp',
      'name': 'CPAD CR',
      'details': 'CPAD',
    },
    {
      'imagePath': 'images/cmed/stockroom1st.webp',
      'name': 'CMED CR',
      'details': 'CMED',
    },
    {
      'imagePath': 'images/cmed/stockroomcmed.webp',
      'name': 'CMED CR',
      'details': 'CMED',
    },
    {
      'imagePath': 'images/cmed/stockroomcmed3.webp',
      'name': 'CMED CR',
      'details': 'CMED',
    },
  ];

  final List<Map<String, dynamic>> utilityImages = [
    {
      'imagePath': 'images/utilities/property.webp',
      'name': 'Property Office',
      'details':
          'Located beside the College of Hospitality and Tourism Management. Left part if facing the CHTM building.',
    },
    {
      'imagePath': 'images/cmed/stockroom1st.webp',
      'name': 'Stockroom CMED 1st Floor',
      'details':
          'Located at the west part of the College of Medicine building.',
    },
    {
      'imagePath': 'images/cmed/stockroomcmed.webp',
      'name': 'Stockroom CMED',
      'details':
          'Located at 3rd floor west part of the College of Medicine building.',
    },
    {
      'imagePath': 'images/cmed/stockroomcmed2.webp',
      'name': 'Stockroom CMED 2nd Floor',
      'details':
          'Located at the middle part second floor of College of Medicine building.',
    },
    {
      'imagePath': 'images/cmed/stockroomcmed3.webp',
      'name': 'Stockroom CMED 3rd Floor',
      'details':
          'Located at the west part of the College of Medicine building.',
    },
    {
      'imagePath': 'images/cpad/cpadcr3.webp',
      'name': 'Stockroom CPAD 2nd Floor',
      'details':
          'Located at the west part of the College of Medicine building.',
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
                            },
                          ),
                        ),
                        if (_searchController.text.isNotEmpty)
                          IconButton(
                            icon: Icon(Icons.clear_rounded),
                            onPressed: () {
                              _searchController.clear();
                              setState(() {});
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
