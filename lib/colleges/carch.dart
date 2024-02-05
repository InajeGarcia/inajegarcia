import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class CarchPage extends StatelessWidget {
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
          backgroundColor: Color.fromARGB(255, 117, 31, 74),
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
                'images/carchside.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "The College of Architecture is dedicated to providing high-quality education and training in the field of architecture. Our programs emphasize creativity, innovation, and a strong foundation in design principles. Students have the opportunity to engage in hands-on projects, collaborate with professionals, and gain real-world experience.\n\nOur faculty members are experienced professionals in the field, committed to nurturing the next generation of architects. The college fosters a dynamic learning environment that encourages critical thinking, problem-solving, and a passion for architectural excellence.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MapPage(
                            selectedVertexId: 'College of Architecture'),
                      ),
                    );
                  },
                  child: Text('Navigate'),
                ),
              ),
            ],
          ),
        ),
      );
}
