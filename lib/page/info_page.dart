import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'images/11.png',
            height: 250,
            width: 300,
            fit: BoxFit.contain,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 26, 99, 194),
        automaticallyImplyLeading: false,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Sharks Pinpoint!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Welcome to Sharks Pinpoint, your ultimate guide to seamless navigation within the University of Northern Philippines campus. Our mission at Sharks Pinpoint is to transform your campus experience by providing precise and efficient location services for everything you need.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Navigating the Campus Made Easy',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Say goodbye to wandering around and hello to pinpoint accuracy. Sharks Pinpoint empowers you to locate classrooms, offices, amenities, and more, ensuring you never miss a beat on campus. With our user-friendly interface, your journey through the University of Northern Philippines becomes a breeze.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Why Sharks Pinpoint?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Precision at Your Fingertips: Sharks Pinpoint utilizes cutting-edge technology to deliver accurate and real-time location information. No more confusion, just clarity."
                "Time Efficiency: Whether you're a student, faculty member, or visitor, save time by quickly finding your destination without unnecessary detours."
                "Comprehensive Campus Coverage: From lecture halls to cafeterias, Sharks Pinpoint covers every nook and cranny of the University of Northern Philippines campus."
                "User-Focused Experience: Designed with students and campus members in mind, Sharks Pinpoint prioritizes ease of use and accessibility for everyone.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Our Commitment',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "At Sharks Pinpoint, we're not just a navigation app; we're your campus companion. Our commitment is to enhance your campus life by making navigation effortless and enjoyable. We understand the importance of efficient movement, and we're here to support you every step of the way.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              // Add lang pag may idadagdag
            ],
          ),
        ),
      ),
    );
  }
}
