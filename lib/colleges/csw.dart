import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class CswPage extends StatelessWidget {
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
          backgroundColor: Color.fromARGB(255, 173, 82, 128),
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
                'images/cswbuilding.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Welcome to the College of Social Work (CSW), where compassion meets advocacy and every voice is heard. As a leading institution in social work education, CSW offers dynamic programs that prepare students to address pressing social issues and advocate for positive change in individuals, families, and communities. From human behavior and social policy to direct practice and community organizing, our curriculum provides students with a comprehensive understanding of the social work profession and the tools needed to make a meaningful impact. Our faculty, comprised of dedicated practitioners and scholars, mentor students to become culturally competent, ethical, and compassionate social workers. At CSW, we emphasize experiential learning, interdisciplinary collaboration, and social justice, empowering our graduates to promote equity and resilience in diverse populations. Join us as we strive to create a more just and compassionate society, one person at a time. Welcome to CSW, where your passion for helping others becomes a catalyst for social change.",
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
                            MapPage(selectedVertexId: 'College of Social Work'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 173, 82, 128),
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
