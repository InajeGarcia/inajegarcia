import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class CasPage extends StatelessWidget {
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
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
                  Color.fromARGB(255, 180, 21, 21),
                  Color.fromARGB(255, 180, 21, 21),
                  Color.fromARGB(255, 255, 255, 255),
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
                'images/casbuilding.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Undergraduate Programs\n\nBachelor of Arts in Communication\n\nBachelor of Arts in Political Science\n\nBachelor of Science in Psychology\n\nBachelor of Science in Biology\n\nBachelor of Science in Marine Biology\n\nBachelor of Science in Environmental Science\n\nBachelor of Science in Mathematics\n\nBachelor of Science in Physics',
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
                            selectedVertexId: 'College of Arts and Sciences'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 180, 21, 21),
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
