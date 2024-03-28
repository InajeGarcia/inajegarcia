import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class CmedPage extends StatelessWidget {
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
                'images/cmedbuilding.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Welcome to the College of Medicine (CMed), where healing begins with compassion and knowledge transforms into life-saving care. As a beacon of excellence in medical education, CMed offers a rigorous curriculum that prepares students to become compassionate and skilled physicians dedicated to improving the health and well-being of individuals and communities. From anatomy and physiology to clinical rotations and research opportunities, our programs provide students with a comprehensive understanding of the human body and the tools necessary to diagnose, treat, and prevent disease. Our faculty, comprised of renowned clinicians and researchers, guide students through hands-on learning experiences and mentor them to become leaders in medicine. At CMed, we embrace diversity, teamwork, and innovation, fostering a culture of collaboration and excellence that prepares graduates to meet the evolving healthcare needs of society. Join us as we embark on a journey to transform healthcare, one patient at a time. Welcome to CMed, where your passion for healing becomes a lifelong commitment.",
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
                            MapPage(selectedVertexId: 'College of Medicine'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 26, 99, 194),
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
