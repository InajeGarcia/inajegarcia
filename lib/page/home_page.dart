import 'dart:math';

import 'package:flutter/material.dart';

import 'package:sharkspinpoint/offices/adminoffices.dart';
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

  // Lists of image URLs for each category
  final List<Map<String, dynamic>> officeImages = [
    {
      'imagePath': 'images/registrar.webp',
      'name': 'Registrar Office',
      'details':
          'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
      'floor': 'FirstFloorPage',
      'class': RegistrarOffice(),
    },
    {
      'imagePath': 'images/budget.webp',
      'name': 'Budget Office',
      'details':
          'The Budget office is located at the first floor of the Administration building at the very last office, you should see the budget office.',
      'floor': 'FirstFloorPage',
      'class': BudgetOffice(),
    },
    {
      'imagePath': 'images/cashier.webp',
      'name': 'Cashiering Unit',
      'details':
          'Upon entering the Administration Building, You will see the Cashiering Unit, the second office to the left part.',
      'floor': 'FirstFloorPage',
      'class': CashieringUnit(),
    },
    {
      'imagePath': 'images/accounting.webp',
      'name': 'Accounting Office',
      'details':
          'The Accounting Office is located at first floor of the Administration building, just enter the admin building and walk straight until you pass the second stairs, you are now in the Accounting Office.',
      'floor': 'FirstFloorPage',
      'class': AccountingOffice(),
    },
    {
      'imagePath': 'images/vpre.webp',
      'name': 'Vice President for Research and Extension',
      'details':
          'The VPRE is located at the second floor of the university admininstration building. Upon walking upstairs, just walk straight until you see the VPRE office located at the last part of the second floor.',
      'floor': 'SecondFloorPage',
      'class': VpreOffice(),
    },
    {
      'imagePath': 'images/op.webp',
      'name': 'Office of the President',
      'details':
          'The Office of the President is located at the Third floor of the Administration Building. You should see it already upon reaching Third Floor.',
      'floor': 'ThirdFloorPage',
      'class': OpOffice(),
    },
    {
      'imagePath': 'images/vpaa.webp',
      'name': 'Vice President for Academic Affairs',
      'details':
          'The office of the VPAA is Located at second floor of the Administration building. You should be able to see it upon reaching second floor.',
      'floor': 'SecondFloorPage',
      'class': VpaaOffice(),
    },
    {
      'imagePath': 'images/vpfad.webp',
      'name': 'Vice President for Finance and Administration',
      'details':
          'The VPFAd is located at first floor of the Administration building. Just walk straight ahead until you reach the office, the Budget office is there also.',
      'floor': 'FirstFloorPage',
      'class': VpfadOffice(),
    },
    {
      'imagePath': 'images/nstp.webp',
      'name': 'National Service Training Program',
      'details':
          'The NSTP is located at the second floor of the Administration building. So, you need to walk upstairs.',
      'floor': 'SecondFloorPage',
      'class': NstpOffice(),
    },
    {
      'imagePath': 'images/pasuc.webp',
      'name': 'PASUC Office',
      'details':
          'The PASUC is located at the second floor of the Adminitration building. So, you need to walk upstairs.',
      'floor': 'SecondFloorPage',
      'class': PasucOffice(),
    },
    {
      'imagePath': 'images/records.webp',
      'name': 'Records Office',
      'details':
          'The Records office is located at the very front part of the Admininistration building, you should be able to see it when entering.',
      'floor': 'FirstFloorPage',
      'class': RecordsOffice(),
    },
    {
      'imagePath': 'images/admission.webp',
      'name': 'Admission Office',
      'details':
          'The Admission office is located at the very front part of the Admininistration building, you should be able to see it when entering.',
      'floor': 'FirstFloorPage',
      'class': AdmissionOffice(),
    },
    {
      'imagePath': 'images/coa.webp',
      'name': 'Commssion on Audit',
      'details':
          'The Commission on Audit office is located at first floor of Administration building, just pass through the cashier office.',
      'floor': 'FirstFloorPage',
      'class': CoaOffice(),
    },
    /*{
      'imagePath': 'images/guidance.webp',
      'name': 'Guidance Office',
      'details': 'Details about Guidance',
      'floor': 'FirstFloorPage',
    },*/
    /*{
      'imagePath': 'images/img.webp',
      'name': 'IMG Office',
      'details': 'Details about IMG Office',
      'floor': 'FirstFloorPage',
    },*/
    {
      'imagePath': 'images/networksystem.webp',
      'name': 'Networks System Office',
      'details':
          'The Networks System office is located at the second floor of the Administration building, you should be able to see it upon walking upstairs.',
      'floor': 'SecondFloorPage',
      'class': NetworksSystemOffice(),
    },
    {
      'imagePath': 'images/researchoffice.webp',
      'name': ' University Research Office',
      'details':
          'The Unviversity Research Office is located at second floor of the Administration building, Just walk upstairs and walk until you pass the HRMO.',
      'floor': 'SecondFloorPage',
      'class': UniversityResearchOffice(),
    },
    {
      'imagePath': 'images/hrmo.webp',
      'name': 'Human Resource Management Office',
      'details':
          'The HRMO is located at the second floor of the Administration building. It is located at the right part of the building.',
      'floor': 'SecondFloorPage',
      'class': HrmoOffice(),
    },
    {
      'imagePath': 'images/extensionoffice.webp',
      'name': 'University Extension Office',
      'details':
          'The Extension office is located at the second floor of the Administration building, you can see it upon passing the HRMO.',
      'floor': 'SecondFloorPage',
      'class': UniversityExtensionOffice(),
    },
    {
      'imagePath': 'images/upim.webp',
      'name': 'University Planning and Information Management',
      'details':
          'The UPIM is located at Second floor of the Administration building, if you walk upstairs on the right stairs, you will see it on your left part facing north.',
      'floor': 'SecondFloorPage',
      'class': UpimOffice(),
    },
    {
      'imagePath': 'images/centergender.webp',
      'name': 'Center for Gender and Development',
      'details':
          'The CGAD is located at second floor of the Administration building. When you walk upstairs, you should be able too see it together with UPIM when facing north.',
      'floor': 'SecondFloorPage',
      'class': CenterGenderOffice(),
    },
  ];

  final List<Map<String, dynamic>> foodImages = [
    {
      'imagePath': 'images/canteen1.webp',
      'name': 'Canteen 1',
      'details': 'Located in front of Ceramic Center',
    },
    {
      'imagePath': 'images/canteen2.webp',
      'name': 'Canteen 2',
      'details': 'Canteen 2',
    },
    {
      'imagePath': 'images/canteen5.webp',
      'name': 'Canteen 5',
      'details': 'Canteen 5',
    },
    {
      'imagePath': 'images/canteen7.webp',
      'name': 'Canteen 7',
      'details': 'Canteen 7',
    },
    {
      'imagePath': 'images/canteen3.webp',
      'name': 'Canteen 3',
      'details': 'Canteen 3',
    },
  ];

  final List<Map<String, dynamic>> restroomImages = [
    {
      'imagePath': 'images/ccjecr1stm.webp',
      'name': 'CCJE CR 1st Floor Male',
      'details': 'CCJE CR 1st Floor Male',
    },
    {
      'imagePath': 'images/ccjecr1stf.webp',
      'name': 'CCJE CR 1st Floor Female',
      'details': 'CCJE CR 1st Floor Female',
    },
    {
      'imagePath': 'images/ccjecr2ndm.webp',
      'name': 'CCJE CR 2nd Floor Male',
      'details': 'CCJE CR 2nd Floor Male',
    },
    {
      'imagePath': 'images/ccjecr2ndf.webp',
      'name': 'CCJE CR 2nd Floor Female',
      'details': 'CCJE CR 2nd Floor Female',
    },
    {
      'imagePath': 'images/cbaacr.webp',
      'name': 'CBAA CR',
      'details': 'CBAA CR',
    },
    {
      'imagePath': 'images/cbaacr3.webp',
      'name': 'CBAA CR',
      'details': 'CBAA CR',
    },
  ];

  final List<Map<String, dynamic>> utilityImages = [
    {
      'imagePath': 'images/property.webp',
      'name': 'Property',
      'details': 'Property Office/Storage',
    },
    {
      'imagePath': 'images/stockroom1st.webp',
      'name': 'Stockroom 1st',
      'details': 'Stockroom 1st',
    },
    {
      'imagePath': 'images/stockroomcmed.webp',
      'name': 'Stockroom CMED',
      'details': 'Stockroom CMED',
    },
    {
      'imagePath': 'images/stockroomcmed2.webp',
      'name': 'Stockroom CMED 2nd Floor',
      'details': 'Stockroom CMED 2nd Floor',
    },
    {
      'imagePath': 'images/stockroomcmed3.webp',
      'name': 'Stockroom CMED 3rd Floor',
      'details': 'Stockroom CMED 3rd Floor',
    },
  ];

  // Map codenames to image paths
  final Map<String, String> codenames = {
    'admin': 'Administration Building',
    'registrar': 'Registrar Office',
    'budget': 'Budget Office',
    'cashier': 'Cashiering Unit',
    'accounting': 'Accounting Office',
    'vpre': 'Vice President for Research and Extension',
    'op': 'Office of the President',
    'vpaa': 'Vice President for Academic Affairs',
    'vpfad': 'Vice President for Finance and Administration',
    'nstp': 'National Service Training Program',
    'pasuc': 'PASUC Office',
    'records': 'Records Office',
    'admission': 'Admission Office',
    'coa': 'Commission on Audit',
    //'guidance': 'Guidance Office',
    //'img': 'IMG Office',
    'networksystem': 'Networks System Office',
    'researchoffice': 'University Research Office',
    'hrmo': 'Human Resource Management Office',
    'extensionoffice': 'University Extension Office',
    'upim': 'University Planning and Information Management',
    'centergender': 'Center for Gender and Development',
    'canteen1': 'Canteen 1',
    'canteen3': 'Canteen3',
    'canteen2': 'Canteen 2',
    'canteen5': 'Canteen 5',
    'canteen7': 'Canteen 7',
    'ccjecr1stm': 'CCJE CR 1st Floor Male',
    'ccjecr1stf': 'CCJE CR 1st Floor Female',
    'ccjecr2ndm': 'CCJE CR 2nd Floor Male',
    'ccjecr2ndf': 'CCJE CR 2nd Floor Female',
    'cbaacr': 'CBAA CR',
    'cbaacr3': 'CBAA CR2',
    'stockroomcmed': 'Stockroom CMED',
    'stockroomcmed2': 'Stockroom CMED 2nd Floor',
    'stockroomcmed3': 'Stockroom CMED 3rd Floor',
    'property': 'Property',
    'stockroom1st': 'Stockroom 1st',
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'images/11.webp',
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
                                'images/pnglang.webp',
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
              buildTabContent(
                  randomlySelectImages(officeImages), codenames, officeImages),
              buildTabContent(
                  randomlySelectImages(foodImages), codenames, foodImages),
              buildTabContent(randomlySelectImages(restroomImages), codenames,
                  restroomImages),
              buildTabContent(randomlySelectImages(utilityImages), codenames,
                  utilityImages),
            ],
          ),
        ),
      ),
    );
  }

  // Function to build a vertical stack of images with rounded edges
  Widget buildTabContent(List<String> imagePaths, Map<String, String> codenames,
      List<Map<String, dynamic>> category) {
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
                    codenames[getImageName(imagePaths[index])] ?? '',
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
                          category.firstWhere((element) =>
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
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => category[index]['class'],
                          ),
                        );
                      },
                      child: Text('Navigate'),
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
                      getImageName(imagePaths[index]),
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

  String getImageName(String imagePath) {
    final imageName = imagePath.split('/').last.split('.').first;
    return codenames[imageName] ?? 'Image Name';
  }
}
