import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class CpadPage extends StatelessWidget {
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
                  Color.fromARGB(255, 128, 17, 17),
                  Color.fromARGB(255, 46, 45, 45),
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
                'images/cpadbuilding.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Welcome to the College of Public Administration and Development (CPAD), where leadership meets service and community empowerment is our driving force. As a distinguished institution in public administration education, CPAD offers comprehensive programs designed to equip students with the knowledge and skills needed to address complex societal challenges. From public policy analysis to community development and nonprofit management, our curriculum blends theory with practical experience, preparing graduates to become effective leaders and change agents in the public and nonprofit sectors. Our faculty, comprised of experienced practitioners and scholars, provide mentorship and guidance, fostering a culture of innovation, collaboration, and social responsibility. At CPAD, we are committed to promoting equity, justice, and sustainable development, empowering our graduates to make meaningful contributions to society. Join us as we work towards building stronger communities and creating a more just and equitable world. Welcome to CPAD, where your passion for public service finds purpose.",
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
                                'College of Public Administration'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 128, 17, 17),
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
