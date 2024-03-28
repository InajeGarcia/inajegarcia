import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class ClawPage extends StatelessWidget {
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
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 46, 45, 45),
                  Color.fromARGB(255, 114, 14, 89),
                  Color.fromARGB(255, 114, 14, 89),
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
                'images/clawbuilding.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Welcome to the College of Law (CLaw), where justice is not just a concept but a guiding principle. As a prestigious institution dedicated to legal education, CLaw offers a comprehensive curriculum that prepares students to navigate the complexities of the legal profession with integrity and expertise. From constitutional law to corporate litigation, our programs provide students with a strong foundation in legal theory, practical skills, and ethical reasoning. Our faculty, comprised of esteemed legal scholars and practitioners, mentor students to become effective advocates, scholars, and leaders in their communities. At CLaw, we foster a culture of rigorous inquiry, civil discourse, and social justice, empowering our graduates to uphold the rule of law and promote fairness and equity for all. Join us as we champion the principles of justice, uphold the rule of law, and shape the future of the legal profession. Welcome to CLaw, where your journey to making a difference in the world begins.",
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
                            MapPage(selectedVertexId: 'College of Law'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 114, 14, 89),
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
