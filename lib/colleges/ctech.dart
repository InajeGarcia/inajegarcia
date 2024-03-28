import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class CtechPage extends StatelessWidget {
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
          backgroundColor: Color.fromARGB(255, 90, 90, 90),
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
                'images/ctechbuilding.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Welcome to the College of Technology (CTech), where innovation drives progress and technology transforms the world. As a leading institution in technology education, CTech offers dynamic programs that prepare students for success in the rapidly evolving tech industry. From computer science and engineering to information technology and cybersecurity, our curriculum combines theoretical knowledge with hands-on experience, ensuring graduates are equipped with the skills and expertise needed to thrive in their chosen fields. Our faculty, comprised of experienced professionals and scholars, mentor students to become creative problem solvers and leaders in technology innovation. At CTech, we emphasize collaboration, critical thinking, and cutting-edge research, empowering our graduates to make meaningful contributions to society through the application of technology. Join us as we explore the frontiers of technology, unleash innovation, and shape the future of the digital age. Welcome to CTech, where your journey to becoming a tech trailblazer begins.",
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
                        builder: (context) =>
                            MapPage(selectedVertexId: 'College of Technology'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 90, 90, 90),
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
