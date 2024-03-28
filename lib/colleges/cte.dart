import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

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
          backgroundColor: Color.fromARGB(255, 17, 43, 77),
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
                'images/ctebuilding.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Welcome to the College of Teacher Education (CTE), where passion for learning meets dedication to shaping future generations. As a premier institution in education, CTE offers comprehensive programs designed to prepare students to become effective educators and leaders in the field of teaching. From early childhood education to secondary education and special education, our curriculum blends theory with practical experience, ensuring graduates are equipped with the knowledge, skills, and pedagogical strategies necessary to meet the diverse needs of learners. Our faculty, comprised of experienced educators and researchers, provide mentorship and guidance, fostering a culture of innovation, collaboration, and lifelong learning. At CTE, we are committed to excellence in teaching, equity in education, and fostering a love for learning in all students. Join us as we work towards building a brighter future through education. Welcome to CTE, where your journey to inspiring minds and shaping futures begins.",
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
                            selectedVertexId: 'College of Teacher Education'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 17, 43, 77),
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
