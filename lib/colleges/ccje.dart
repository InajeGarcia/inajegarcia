import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class CcjePage extends StatelessWidget {
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
          backgroundColor: Color.fromARGB(255, 109, 2, 77),
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
                'images/ccjebuilding.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Welcome to the College of Criminal Justice and Enforcement (CCJE), where dedication to justice and security is paramount. As a premier institution in the field of criminal justice, CCJE offers comprehensive programs that prepare students for a wide range of careers in law enforcement, corrections, homeland security, and legal professions. Our faculty, comprised of experienced practitioners and scholars, provide students with the knowledge, skills, and ethical framework necessary to navigate complex legal systems and uphold the principles of fairness and equality. At CCJE, we emphasize hands-on learning, experiential opportunities, and community engagement, empowering our graduates to make a positive impact in their communities and beyond. Join us as we work towards a safer, more just society, where integrity and accountability are the cornerstones of our collective efforts. Welcome to CCJE, where your passion for justice finds purpose.",
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
                                'College of Criminology and Justice Enforcement'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 109, 2, 77),
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
