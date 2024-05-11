import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TutorialPage extends StatelessWidget {
  // Define a list of image asset paths
  final List<String> imagePaths = [
    'images/bglogo/home.webp', // Update these paths with your image assets
    'images/bglogo/colleges.webp',
    'images/bglogo/map.webp',
    'images/bglogo/spot.webp',
    'images/bglogo/about.webp',
    'images/bglogo/profile.webp',
    'images/bglogo/canteen.webp',
    'images/bglogo/restroom.webp',
    'images/bglogo/utilities.webp',
  ];

  // Define the base picture asset path
  final String basePicturePath =
      'images/bglogo/welcome4.webp'; // Update this path with your base picture asset

  @override
  Widget build(BuildContext context) {
    // Use a PageController to control the PageView
    PageController _pageController = PageController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // PageView to allow swiping through images
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: imagePaths.length,
                      onPageChanged: (index) {
                        // Optional: handle case when last page is reached
                      },
                      itemBuilder: (context, index) {
                        // Use a Stack to layer the base picture and the current slide image
                        return Stack(
                          children: [
                            // Base picture as a background
                            Positioned.fill(
                              child: Image.asset(
                                basePicturePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Wrap the current slide image in a ClipRRect for rounded corners
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    20), // Specify the border radius
                                child: Image.asset(
                                  imagePaths[index],
                                  fit: BoxFit.contain,
                                  width: MediaQuery.of(context).size.width *
                                      0.8, // Make images smaller
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  // Add SmoothPageIndicator below the pictures
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: imagePaths.length,
                      effect: WormEffect(
                        dotColor: Colors.grey,
                        activeDotColor: Color.fromARGB(255, 5, 128, 36),
                        dotHeight: 8.0,
                        dotWidth: 8.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // FloatingActionButton for navigation
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to HomeScreen when the arrow button is tapped
          Navigator.pushReplacementNamed(context, '/home');
        },
        child: Icon(Icons.arrow_forward),
        backgroundColor: Color.fromARGB(255, 5, 128, 36),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, // Places the button at the bottom right
    );
  }
}
