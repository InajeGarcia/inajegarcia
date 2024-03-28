import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class ChsPage extends StatelessWidget {
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
          backgroundColor: Color.fromARGB(255, 10, 56, 116),
          automaticallyImplyLeading: false,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 56, 25, 196),
                  Color.fromARGB(255, 56, 25, 196),
                  Color.fromARGB(255, 204, 204, 204),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'images/chsbuilding.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Welcome to the College of Health Sciences (CHS), where compassion meets expertise and wellness is the foundation of our mission. As a leading institution in healthcare education, CHS offers a comprehensive range of programs dedicated to preparing students for rewarding careers in the medical field. From nursing and public health to physical therapy and healthcare administration, our curriculum integrates cutting-edge research with hands-on clinical experience, ensuring that graduates are equipped to address the complex health needs of individuals and communities. At CHS, we prioritize interdisciplinary collaboration, cultural competency, and patient-centered care, empowering our students to become compassionate leaders and advocates for health equity. Join us as we work towards a healthier future, where every student's passion for healing becomes a catalyst for positive change. Welcome to CHS, where excellence in healthcare education begins.",
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
                            selectedVertexId: 'College of Health and Sciences'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 56, 25, 196),
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
