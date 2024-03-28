import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class ChtmPage extends StatelessWidget {
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
          backgroundColor: Color.fromARGB(255, 216, 51, 153),
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
                'images/chtmbuilding.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Welcome to the College of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we celebrate the art of hospitality, create unforgettable experiences, and shape the future of the industry. Welcome to CHTM, where your journey to a rewarding career in hospitality begins.",
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
                                'College of Hospitality and Tourism Management'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 216, 51, 153),
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
