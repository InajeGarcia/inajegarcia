import 'package:flutter/material.dart';

class CarchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College of Architecture'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/carch.png', // Replace with the actual image path
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                // Replace the following paragraph with your own content
                "The College of Architecture is dedicated to providing high-quality education and training in the field of architecture. Our programs emphasize creativity, innovation, and a strong foundation in design principles. Students have the opportunity to engage in hands-on projects, collaborate with professionals, and gain real-world experience.\n\nOur faculty members are experienced professionals in the field, committed to nurturing the next generation of architects. The college fosters a dynamic learning environment that encourages critical thinking, problem-solving, and a passion for architectural excellence.",
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
