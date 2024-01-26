import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
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
            backgroundColor:
                Color.fromARGB(255, 43, 163, 105), // Set the background color
            automaticallyImplyLeading: false, // Remove the back button
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
                      'images/reallogo.png', // Replace with the path to your PNG icon
                      width: 24, // Adjust the width as needed
                      height: 24, // Adjust the height as needed
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  onChanged: (value) {
                    // Implement your search logic here
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
                    color: Color(0xFF0045A0), // Set the desired underline color
                    width: 2.0, // Adjust the thickness of the underline
                  ),
                ),
                labelColor: Color(0xFF0045A0), // Set the desired font color
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    buildOfficeRoomTabContent(),
                    buildFoodOthersTabContent(),
                    buildRestRoomsTabContent(),
                    buildUtilitiesTabContent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildOfficeRoomTabContent() {
    List<Map<String, String>> officeRoomImages = [
      {'imagePath': 'images/office (1).jpg', 'label': 'Office 1'},
      {'imagePath': 'images/office (2).jpg', 'label': 'Office 2'},
      {'imagePath': 'images/office (3).jpg', 'label': 'Office 3'},
      {'imagePath': 'images/office (4).jpg', 'label': 'Office 4'},
      {'imagePath': 'images/office (5).jpg', 'label': 'Office 5'},
      // Add more image paths and labels as needed
    ];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // Two images per row
        crossAxisSpacing: 8.0, // Spacing between columns
        mainAxisSpacing: 8.0, // Spacing between rows
      ),
      itemCount: (officeRoomImages.length / 2).ceil(),
      itemBuilder: (context, index) {
        int startIndex = index * 2;
        int endIndex = startIndex + 2;

        // Adjust endIndex if it exceeds the length of the imagesWithLabels
        if (endIndex > officeRoomImages.length) {
          endIndex = officeRoomImages.length;
        }

        List<Map<String, String>> currentImages =
            officeRoomImages.sublist(startIndex, endIndex);

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
                            offset: Offset(0, 2), // changes position of shadow
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

  Widget buildFoodOthersTabContent() {
    List<Map<String, String>> foodOthersImages = [
      {'imagePath': 'images/canteen1.jpg', 'label': 'Canteen'},
      {'imagePath': 'images/canteen2.jpg', 'label': 'Canteen'},
      {'imagePath': 'images/canteen3.jpg', 'label': 'Canteen'},
      {'imagePath': 'images/canteen4.jpg', 'label': 'Canteen'},
      {'imagePath': 'images/canteen5.jpg', 'label': 'Canteen'},
      // Add more image paths and labels as needed
    ];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // Two images per row
        crossAxisSpacing: 8.0, // Spacing between columns
        mainAxisSpacing: 8.0, // Spacing between rows
      ),
      itemCount: (foodOthersImages.length / 2).ceil(),
      itemBuilder: (context, index) {
        int startIndex = index * 2;
        int endIndex = startIndex + 2;

        // Adjust endIndex if it exceeds the length of the imagesWithLabels
        if (endIndex > foodOthersImages.length) {
          endIndex = foodOthersImages.length;
        }

        List<Map<String, String>> currentImages =
            foodOthersImages.sublist(startIndex, endIndex);

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
                            offset: Offset(0, 2), // changes position of shadow
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

  Widget buildRestRoomsTabContent() {
    List<Map<String, String>> restRoomImages = [
      {'imagePath': 'images/office (1).jpg', 'label': 'Office 1'},
      {'imagePath': 'images/office (2).jpg', 'label': 'Office 2'},
      {'imagePath': 'images/office (3).jpg', 'label': 'Office 3'},
      {'imagePath': 'images/office (4).jpg', 'label': 'Office 4'},
      {'imagePath': 'images/office (5).jpg', 'label': 'Office 5'},
      // Add more image paths and labels as needed
    ];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // Two images per row
        crossAxisSpacing: 8.0, // Spacing between columns
        mainAxisSpacing: 8.0, // Spacing between rows
      ),
      itemCount: (restRoomImages.length / 2).ceil(),
      itemBuilder: (context, index) {
        int startIndex = index * 2;
        int endIndex = startIndex + 2;

        // Adjust endIndex if it exceeds the length of the imagesWithLabels
        if (endIndex > restRoomImages.length) {
          endIndex = restRoomImages.length;
        }

        List<Map<String, String>> currentImages =
            restRoomImages.sublist(startIndex, endIndex);

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
                            offset: Offset(0, 2), // changes position of shadow
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

  Widget buildUtilitiesTabContent() {
    List<Map<String, String>> utilitiesImages = [
      {'imagePath': 'images/office (1).jpg', 'label': 'Office 1'},
      {'imagePath': 'images/office (2).jpg', 'label': 'Office 2'},
      {'imagePath': 'images/office (3).jpg', 'label': 'Office 3'},
      {'imagePath': 'images/office (4).jpg', 'label': 'Office 4'},
      {'imagePath': 'images/office (5).jpg', 'label': 'Office 5'},
      // Add more image paths and labels as needed
    ];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // Two images per row
        crossAxisSpacing: 8.0, // Spacing between columns
        mainAxisSpacing: 8.0, // Spacing between rows
      ),
      itemCount: (utilitiesImages.length / 2).ceil(),
      itemBuilder: (context, index) {
        int startIndex = index * 2;
        int endIndex = startIndex + 2;

        // Adjust endIndex if it exceeds the length of the imagesWithLabels
        if (endIndex > utilitiesImages.length) {
          endIndex = utilitiesImages.length;
        }

        List<Map<String, String>> currentImages =
            utilitiesImages.sublist(startIndex, endIndex);

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
                            offset: Offset(0, 2), // changes position of shadow
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
