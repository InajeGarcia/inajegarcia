import 'dart:math';

import 'package:flutter/material.dart';

import 'package:sharkspinpoint/page/searchresult_page.dart';

class HomePage extends StatelessWidget {
  // Lists of image URLs for each category
  final List<String> officeImages = [
    'images/admin.jpg',
    'images/registrar.jpg',
    'images/budget.jpg',
    'images/cashier.jpg',
    'images/accounting.jpg',
    'images/vpre.jpg',
    'images/op.jpg',
    'images/vpaa.jpg',
    'images/vpfad.jpg',
    'images/nstp.jpg',
  ];

  final List<String> foodImages = [
    'images/canteen1.jpg',
    'images/canteen2.jpg',
    'images/canteen5.jpg',
    'images/canteen5.jpg',
    'images/canteen7.jpg',
    'images/canteen1.jpg',
    'images/canteen2.jpg',
    'images/canteen5.jpg',
    'images/canteen5.jpg',
    'images/canteen7.jpg',
  ];

  final List<String> restroomImages = [
    'images/admin.jpg',
    'images/admin.jpg',
    'images/admin.jpg',
    'images/admin.jpg',
    'images/admin.jpg',
    'images/admin.jpg',
    'images/admin.jpg',
    'images/admin.jpg',
    'images/admin.jpg',
    'images/admin.jpg',
  ];

  final List<String> utilityImages = [
    'images/property.jpg',
    'images/property.jpg',
    'images/property.jpg',
    'images/property.jpg',
    'images/property.jpg',
    'images/property.jpg',
    'images/property.jpg',
    'images/property.jpg',
    'images/property.jpg',
    'images/property.jpg',
  ];

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
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Search what you're looking for?",
                    prefixIcon: Image.asset(
                      'images/pnglang.png',
                      width: 24,
                      height: 24,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  onSubmitted: (value) {
                    // Navigate to SearchResultPage with the search input
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchResultPage(query: value),
                      ),
                    );
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: TabBar(
                tabs: [
                  Tab(text: 'Offices'),
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
            ),
          ],
          body: TabBarView(
            children: [
              buildTabContent(randomlySelectImages(officeImages)),
              buildTabContent(randomlySelectImages(foodImages)),
              buildTabContent(randomlySelectImages(restroomImages)),
              buildTabContent(randomlySelectImages(utilityImages)),
            ],
          ),
        ),
      ),
    );
  }

  // Function to build a vertical stack of images with rounded edges
  Widget buildTabContent(List<String> imagePaths) {
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
              // For example, navigate to a new screen or show a message
              // You can also pass the image path to the new screen if needed
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ImageDetailScreen(imagePath: imagePaths[index]),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  20), // Adjust the border radius as needed
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150, // Adjust height as needed
              ),
            ),
          ),
        );
      },
    );
  }

  // Function to randomly select 5 images from a list
  List<String> randomlySelectImages(List<String> imagePaths) {
    Random random = Random();
    // Create a copy of the list and shuffle it
    List<String> shuffledList = List.from(imagePaths);
    shuffledList.shuffle(random);

    // Return the first 5 images from the shuffled list
    return shuffledList.take(5).toList();
  }
}

// Define ImageDetailScreen to display the full-size image
class ImageDetailScreen extends StatelessWidget {
  final String imagePath;

  ImageDetailScreen({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Detail'),
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
