import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class CcitPage extends StatelessWidget {
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
          backgroundColor: Color.fromARGB(255, 212, 15, 91),
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
                'images/ccitbuilding.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Welcome to the College of Communication and Information Technology (CCIT), where innovation meets technology and creativity drives digital transformation. As a pioneering institution in the realm of computing and information sciences, CCIT offers a dynamic learning environment that prepares students for the rapidly evolving tech industry. Our comprehensive programs cover a wide range of cutting-edge fields including computer science, information systems, cybersecurity, and digital media, empowering students to become versatile professionals equipped to tackle the challenges of the digital age. At CCIT, we prioritize hands-on learning, industry-relevant projects, and collaboration with leading tech companies, ensuring that our graduates are ready to make an impact from day one. Join us as we explore the frontiers of technology, push the boundaries of innovation, and shape the future of the digital world. Welcome to CCIT, where your journey towards a tech-driven future begins.",
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
                          selectedVertexId:
                              'College of Communication and Information Technology',
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 212, 15, 91),
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Text(
                    'Navigate',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
