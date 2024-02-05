import 'package:flutter/material.dart';

class CtePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
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
          toolbarHeight: 60,
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'images/ctebuilding.jpg', // Replace with the actual image path
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  // Replace the following paragraph with your own content
                  "The College of Arts and Sciences is the heart of academic exploration at our university. With a diverse range of programs, we empower students to pursue their passions and cultivate critical thinking skills. Our faculty is dedicated to providing a rich and interdisciplinary education.\n\nWhether you're interested in literature, mathematics, biology, or social sciences, the College of Arts and Sciences offers a supportive environment where students can thrive. Join us in fostering a love for learning, creativity, and intellectual curiosity.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // No function added for now
                  },
                  child: Text('Navigate'),
                ),
              ),
            ],
          ),
        ),
      );
}
