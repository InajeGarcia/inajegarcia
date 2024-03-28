import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class CfadPage extends StatelessWidget {
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
                  Color.fromARGB(255, 128, 17, 17),
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
                'images/cfadbuilding.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Welcome to the College of Fine Arts and Design (CFAD), where creativity knows no bounds and artistic expression flourishes. As a vibrant hub for aspiring artists, designers, and performers, CFAD offers a rich array of programs spanning visual arts, multimedia, theater, music, and more. Our faculty, comprised of accomplished practitioners and educators, provide students with the guidance, mentorship, and resources needed to hone their craft and unleash their creative potential. At CFAD, we embrace experimentation, collaboration, and innovation, empowering our graduates to make meaningful contributions to the cultural landscape and shape the future of the arts. Join us as we celebrate the power of imagination, ignite inspiration, and cultivate the next generation of visionary artists and designers. Welcome to CFAD, where every brushstroke, note, and performance tells a story.",
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
                                'College of Fine Arts and Design'),
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
