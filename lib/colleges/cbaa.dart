import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class CbaaPage extends StatelessWidget {
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
          backgroundColor: Color.fromARGB(255, 255, 239, 15),
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
                  Color.fromARGB(255, 255, 233, 34),
                  Color.fromARGB(255, 27, 26, 26),
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
                'images/cbaabuilding.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Welcome to the College of Business, Accountancy, and Administration (CBAA), where excellence meets innovation in the dynamic world of commerce and management. As a leading institution in business education, CBAA offers a comprehensive range of programs designed to prepare students for success in today's competitive global marketplace. With a focus on practical skills, ethical leadership, and entrepreneurial thinking, we empower our students to thrive in diverse industries and navigate the complexities of the modern business landscape. At CBAA, we foster a culture of collaboration, critical thinking, and continuous learning, equipping our graduates with the tools they need to drive positive change and make a meaningful impact on the world. Join us as we shape the future of business together, one strategic decision at a time. Welcome to CBAA, where your journey to success begins.",
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
                                'College of Bussiness Administration and Accountancy'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 233, 34),
                    onPrimary: const Color.fromARGB(255, 73, 73, 73),
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
