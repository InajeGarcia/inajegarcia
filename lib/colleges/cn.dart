import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/map_page.dart';

class CnPage extends StatelessWidget {
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
          backgroundColor: Color.fromARGB(255, 15, 199, 46),
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
                'images/cnbuilding.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Welcome to the College of Nursing (CN), where compassion meets expertise and every patient's well-being is our top priority. As a premier institution in nursing education, CN offers comprehensive programs that prepare students to excel in the dynamic and rewarding field of nursing. From foundational courses in anatomy and physiology to clinical rotations and specialized training, our curriculum equips students with the knowledge and skills needed to deliver high-quality care across diverse healthcare settings. Our faculty, comprised of experienced nurses and educators, provide mentorship and guidance, ensuring that graduates are prepared to meet the complex healthcare needs of individuals and communities. At CN, we emphasize hands-on learning, evidence-based practice, and interdisciplinary collaboration, empowering our students to become leaders in healthcare delivery and advocates for patient safety and wellness. Join us as we strive to make a difference in the lives of others and shape the future of nursing. Welcome to CN, where your journey to becoming a compassionate and competent nurse begins.",
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
                            MapPage(selectedVertexId: 'College of Nursing'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 15, 199, 46),
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
