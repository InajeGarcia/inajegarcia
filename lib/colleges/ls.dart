import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class LsPage extends StatelessWidget {
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
          backgroundColor: Color.fromARGB(255, 19, 131, 47),
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
                  "The Laboratory School, often referred to as a lab school, is an educational institution typically affiliated with a university or college. Lab schools serve as sites for innovative teaching practices, educational research, and professional development for educators. They often prioritize hands-on, experiential learning and may focus on specific educational philosophies or approaches, such as progressive education or inquiry-based learning.\n\nLab schools often provide a unique environment for students, where they can engage in interdisciplinary learning, explore their interests through project-based activities, and collaborate with educators in conducting educational research. These schools are also valuable resources for the broader educational community, as they often share their findings and best practices with other schools and educators.\nOverall, laboratory schools play a significant role in shaping the future of education by experimenting with new teaching methods, contributing to educational research, and preparing students for success in a rapidly changing world.",
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
                            MapPage(selectedVertexId: 'Laboratory School'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 19, 131, 47),
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
