import 'package:flutter/material.dart';

class CasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College of Arts and Sciences'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/cas.jpg', // Replace with the actual image path
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
                child: Text('Learn More'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
