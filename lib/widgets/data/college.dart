import 'package:flutter/material.dart';

class College {
  final int id;
  final String name;
  final String imageUrl;
  final String imageUrl2;
  final String description;
  final Color color;

  College({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.imageUrl2,
    required this.description,
    required this.color,
  });
}

List<College> colleges = [
  College(
    id: 1,
    name: 'College of Architecture',
    imageUrl: 'images/clogo/carch.webp',
    imageUrl2: 'images/carch/carchfront.webp',
    description:
        'Welcome to the College of Architecture, where creativity meets innovation and design transforms spaces into experiences. Our institution is a hub for aspiring architects, urban planners, and environmental designers who are passionate about shaping the world around them. With a rich history of nurturing talent and fostering interdisciplinary collaboration, we provide students with a dynamic learning environment that integrates theory with hands-on practice. At our college, students are empowered to explore diverse design approaches, harness cutting-edge technology, and address real-world challenges through sustainable and visionary solutions. Join us at the forefront of architectural exploration, where every blueprint represents a step towards shaping a more beautiful, functional, and sustainable future.',
    color: Color.fromARGB(255, 122, 7, 55),
  ),
  College(
    id: 2,
    name: 'College of Arts and Sciences',
    imageUrl: 'images/clogo/cas.webp',
    imageUrl2: 'images/cas/casbuilding.jpg',
    description:
        'Welcome to the College of Arts and Sciences, where curiosity knows no bounds and intellectual exploration thrives. As the heart of interdisciplinary learning, our college offers a diverse array of programs spanning the humanities, social sciences, and natural sciences. With a commitment to fostering critical thinking, creativity, and cultural understanding, we empower students to engage with the complexities of the world and contribute meaningfully to society. Here, students are encouraged to embrace their passions, challenge assumptions, and pursue knowledge across traditional boundaries. Join us on a journey of discovery, where every question leads to new insights and every discovery sparks further exploration. Welcome to a community dedicated to nurturing the mind, expanding perspectives, and inspiring lifelong learning.',
    color: Color.fromARGB(255, 180, 21, 21),
  ),
  College(
    id: 3,
    name: 'College of Business Administration and Accountancy',
    imageUrl: 'images/clogo/cbaa.webp',
    imageUrl2: 'images/cbaa/cbaabuilding.webp',
    description:
        "Welcome to the College of Business, Accountancy, and Administration (CBAA), where excellence meets innovation in the dynamic world of commerce and management. As a leading institution in business education, CBAA offers a comprehensive range of programs designed to prepare students for success in today's competitive global marketplace. With a focus on practical skills, ethical leadership, and entrepreneurial thinking, we empower our students to thrive in diverse industries and navigate the complexities of the modern business landscape. At CBAA, we foster a culture of collaboration, critical thinking, and continuous learning, equipping our graduates with the tools they need to drive positive change and make a meaningful impact on the world. Join us as we shape the future of business together, one strategic decision at a time. Welcome to CBAA, where your journey to success begins.",
    color: Color.fromARGB(255, 255, 233, 34),
  ),
  College(
    id: 4,
    name: 'College of Communication and Information Technology',
    imageUrl: 'images/clogo/ccit.webp',
    imageUrl2: 'images/ccit/ccitbuilding.webp',
    description:
        "Welcome to the College of Communication and Information Technology (CCIT), where innovation meets technology and creativity drives digital transformation. As a pioneering institution in the realm of computing and information sciences, CCIT offers a dynamic learning environment that prepares students for the rapidly evolving tech industry. Our comprehensive programs cover a wide range of cutting-edge fields including computer science, information systems, cybersecurity, and digital media, empowering students to become versatile professionals equipped to tackle the challenges of the digital age. At CCIT, we prioritize hands-on learning, industry-relevant projects, and collaboration with leading tech companies, ensuring that our graduates are ready to make an impact from day one. Join us as we explore the frontiers of technology, push the boundaries of innovation, and shape the future of the digital world. Welcome to CCIT, where your journey towards a tech-driven future begins.",
    color: Color.fromARGB(255, 212, 15, 91),
  ),
  College(
    id: 5,
    name: 'College of Criminal Justice and Enforcement',
    imageUrl: 'images/clogo/ccje.webp',
    imageUrl2: 'images/ccje/ccjebuilding.webp',
    description:
        "Welcome to the College of Criminal Justice and Enforcement (CCJE), where dedication to justice and security is paramount. As a premier institution in the field of criminal justice, CCJE offers comprehensive programs that prepare students for a wide range of careers in law enforcement, corrections, homeland security, and legal professions. Our faculty, comprised of experienced practitioners and scholars, provide students with the knowledge, skills, and ethical framework necessary to navigate complex legal systems and uphold the principles of fairness and equality. At CCJE, we emphasize hands-on learning, experiential opportunities, and community engagement, empowering our graduates to make a positive impact in their communities and beyond. Join us as we work towards a safer, more just society, where integrity and accountability are the cornerstones of our collective efforts. Welcome to CCJE, where your passion for justice finds purpose.",
    color: Color.fromARGB(255, 109, 2, 77),
  ),
  College(
    id: 6,
    name: 'College of Engineering',
    imageUrl: 'images/clogo/ce.webp',
    imageUrl2: 'images/ce/cebuilding.webp',
    description:
        "Welcome to the College of Engineering (CE), where innovation fuels progress and imagination transforms into reality. As a leading institution in engineering education, CE offers a diverse range of programs designed to equip students with the knowledge and skills needed to tackle the world's most pressing challenges. From civil and mechanical engineering to electrical and computer engineering, our curriculum blends theory with hands-on experience, preparing graduates to excel in their chosen fields. At CE, we foster a culture of collaboration, creativity, and ethical responsibility, empowering our students to become visionary leaders and problem solvers in a rapidly changing world. Join us as we engineer solutions that shape the future and make a lasting impact on society. Welcome to CE, where your journey to engineering excellence begins.",
    color: Color.fromARGB(255, 201, 68, 15),
  ),
  College(
    id: 7,
    name: 'College of Fine Arts and Design',
    imageUrl: 'images/clogo/cfad.webp',
    imageUrl2: 'images/cfad/cfadbuilding.webp',
    description:
        "Welcome to the College of Fine Arts and Designs (CFad), where innovation fuels progress and imagination transforms into reality. As a leading institution in engineering education, CE offers a diverse range of programs designed to equip students with the knowledge and skills needed to tackle the world's most pressing challenges. From civil and mechanical engineering to electrical and computer engineering, our curriculum blends theory with hands-on experience, preparing graduates to excel in their chosen fields. At CE, we foster a culture of collaboration, creativity, and ethical responsibility, empowering our students to become visionary leaders and problem solvers in a rapidly changing world. Join us as we engineer solutions that shape the future and make a lasting impact on society. Welcome to CE, where your journey to engineering excellence begins.",
    color: Color.fromARGB(255, 201, 68, 15),
  ),
  College(
    id: 8,
    name: 'College of Health and Sciences',
    imageUrl: 'images/clogo/chs.webp',
    imageUrl2: 'images/chs/chsbuilding.webp',
    description:
        "Welcome to the College of Health Sciences (CHS), where compassion meets expertise and wellness is the foundation of our mission. As a leading institution in healthcare education, CHS offers a comprehensive range of programs dedicated to preparing students for rewarding careers in the medical field. From nursing and public health to physical therapy and healthcare administration, our curriculum integrates cutting-edge research with hands-on clinical experience, ensuring that graduates are equipped to address the complex health needs of individuals and communities. At CHS, we prioritize interdisciplinary collaboration, cultural competency, and patient-centered care, empowering our students to become compassionate leaders and advocates for health equity. Join us as we work towards a healthier future, where every student's passion for healing becomes a catalyst for positive change. Welcome to CHS, where excellence in healthcare education begins.",
    color: Color.fromARGB(255, 56, 25, 196),
  ),
  College(
    id: 9,
    name: 'College of Hospitality and Tourism Management',
    imageUrl: 'images/clogo/chtm.webp',
    imageUrl2: 'images/chtm/chtmbuilding.webp',
    description:
        "Welcome to the College of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we celebrate the art of hospitality, create unforgettable experiences, and shape the future of the industry. Welcome to CHTM, where your journey to a rewarding career in hospitality begins.",
    color: Color.fromARGB(255, 216, 51, 153),
  ),
  College(
    id: 10,
    name: 'College of Law',
    imageUrl: 'images/clogo/claw.webp',
    imageUrl2: 'images/claw/clawbuilding.webp',
    description:
        "Welcome to the College of Law (CLaw), where justice is not just a concept but a guiding principle. As a prestigious institution dedicated to legal education, CLaw offers a comprehensive curriculum that prepares students to navigate the complexities of the legal profession with integrity and expertise. From constitutional law to corporate litigation, our programs provide students with a strong foundation in legal theory, practical skills, and ethical reasoning. Our faculty, comprised of esteemed legal scholars and practitioners, mentor students to become effective advocates, scholars, and leaders in their communities. At CLaw, we foster a culture of rigorous inquiry, civil discourse, and social justice, empowering our graduates to uphold the rule of law and promote fairness and equity for all. Join us as we champion the principles of justice, uphold the rule of law, and shape the future of the legal profession. Welcome to CLaw, where your journey to making a difference in the world begins.",
    color: Color.fromARGB(255, 114, 14, 89),
  ),
  College(
      id: 11,
      name: 'College of Medicine',
      imageUrl: 'images/clogo/cmed.webp',
      imageUrl2: 'images/cmed/cmedbuilding.webp',
      description:
          "Welcome to the College of Medicine (CMed), where healing begins with compassion and knowledge transforms into life-saving care. As a beacon of excellence in medical education, CMed offers a rigorous curriculum that prepares students to become compassionate and skilled physicians dedicated to improving the health and well-being of individuals and communities. From anatomy and physiology to clinical rotations and research opportunities, our programs provide students with a comprehensive understanding of the human body and the tools necessary to diagnose, treat, and prevent disease. Our faculty, comprised of renowned clinicians and researchers, guide students through hands-on learning experiences and mentor them to become leaders in medicine. At CMed, we embrace diversity, teamwork, and innovation, fostering a culture of collaboration and excellence that prepares graduates to meet the evolving healthcare needs of society. Join us as we embark on a journey to transform healthcare, one patient at a time. Welcome to CMed, where your passion for healing becomes a lifelong commitment.",
      color: Color.fromARGB(255, 26, 99, 194)),
  College(
      id: 12,
      name: 'College of Nursing',
      imageUrl: 'images/clogo/cn.webp',
      imageUrl2: 'images/cn/cnbuilding.webp',
      description:
          "Welcome to the College of Nursing (CN), where compassion meets expertise and every patient's well-being is our top priority. As a premier institution in nursing education, CN offers comprehensive programs that prepare students to excel in the dynamic and rewarding field of nursing. From foundational courses in anatomy and physiology to clinical rotations and specialized training, our curriculum equips students with the knowledge and skills needed to deliver high-quality care across diverse healthcare settings. Our faculty, comprised of experienced nurses and educators, provide mentorship and guidance, ensuring that graduates are prepared to meet the complex healthcare needs of individuals and communities. At CN, we emphasize hands-on learning, evidence-based practice, and interdisciplinary collaboration, empowering our students to become leaders in healthcare delivery and advocates for patient safety and wellness. Join us as we strive to make a difference in the lives of others and shape the future of nursing. Welcome to CN, where your journey to becoming a compassionate and competent nurse begins.",
      color: Color.fromARGB(255, 15, 199, 46)),
  College(
    id: 13,
    name: 'College of Public Administration',
    imageUrl: 'images/clogo/cpad.webp',
    imageUrl2: 'images/cpad/cpadbuilding.webp',
    description:
        "Welcome to the College of Public Administration and Development (CPAD), where leadership meets service and community empowerment is our driving force. As a distinguished institution in public administration education, CPAD offers comprehensive programs designed to equip students with the knowledge and skills needed to address complex societal challenges. From public policy analysis to community development and nonprofit management, our curriculum blends theory with practical experience, preparing graduates to become effective leaders and change agents in the public and nonprofit sectors. Our faculty, comprised of experienced practitioners and scholars, provide mentorship and guidance, fostering a culture of innovation, collaboration, and social responsibility. At CPAD, we are committed to promoting equity, justice, and sustainable development, empowering our graduates to make meaningful contributions to society. Join us as we work towards building stronger communities and creating a more just and equitable world. Welcome to CPAD, where your passion for public service finds purpose.",
    color: Color.fromARGB(255, 128, 17, 17),
  ),
  College(
    id: 14,
    name: 'College of Socialwork',
    imageUrl: 'images/clogo/csw.webp',
    imageUrl2: 'images/csw/cswbuilding.webp',
    description:
        "Welcome to the College of Social Work (CSW), where compassion meets advocacy and every voice is heard. As a leading institution in social work education, CSW offers dynamic programs that prepare students to address pressing social issues and advocate for positive change in individuals, families, and communities. From human behavior and social policy to direct practice and community organizing, our curriculum provides students with a comprehensive understanding of the social work profession and the tools needed to make a meaningful impact. Our faculty, comprised of dedicated practitioners and scholars, mentor students to become culturally competent, ethical, and compassionate social workers. At CSW, we emphasize experiential learning, interdisciplinary collaboration, and social justice, empowering our graduates to promote equity and resilience in diverse populations. Join us as we strive to create a more just and compassionate society, one person at a time. Welcome to CSW, where your passion for helping others becomes a catalyst for social change.",
    color: Color.fromARGB(255, 158, 71, 173),
  ),
  College(
    id: 15,
    name: 'College of Teacher Education',
    imageUrl: 'images/clogo/cte.webp',
    imageUrl2: 'images/cte/ctebuilding.webp',
    description:
        "Welcome to the College of Teacher Education (CTE), where passion for learning meets dedication to shaping future generations. As a premier institution in education, CTE offers comprehensive programs designed to prepare students to become effective educators and leaders in the field of teaching. From early childhood education to secondary education and special education, our curriculum blends theory with practical experience, ensuring graduates are equipped with the knowledge, skills, and pedagogical strategies necessary to meet the diverse needs of learners. Our faculty, comprised of experienced educators and researchers, provide mentorship and guidance, fostering a culture of innovation, collaboration, and lifelong learning. At CTE, we are committed to excellence in teaching, equity in education, and fostering a love for learning in all students. Join us as we work towards building a brighter future through education. Welcome to CTE, where your journey to inspiring minds and shaping futures begins.",
    color: Color.fromARGB(255, 19, 9, 170),
  ),
  College(
    id: 16,
    name: 'College of Technology',
    imageUrl: 'images/clogo/ctech.webp',
    imageUrl2: 'images/ctech/ctechbuilding.webp',
    description:
        "Welcome to the College of Technology (CTech), where innovation drives progress and technology transforms the world. As a leading institution in technology education, CTech offers dynamic programs that prepare students for success in the rapidly evolving tech industry. From computer science and engineering to information technology and cybersecurity, our curriculum combines theoretical knowledge with hands-on experience, ensuring graduates are equipped with the skills and expertise needed to thrive in their chosen fields. Our faculty, comprised of experienced professionals and scholars, mentor students to become creative problem solvers and leaders in technology innovation. At CTech, we emphasize collaboration, critical thinking, and cutting-edge research, empowering our graduates to make meaningful contributions to society through the application of technology. Join us as we explore the frontiers of technology, push the boundaries of innovation, and shape the future of the digital world. Welcome to CTech, where your journey to a tech-driven future begins.",
    color: Color.fromARGB(255, 18, 97, 67),
  ),
  College(
    id: 17,
    name: 'Laboratory School (LS)',
    imageUrl: 'images/clogo/ls.webp',
    imageUrl2: 'images/cpad/ctebuilding.webp',
    description:
        "Welcome to Laboratory School(LS), where innovation drives progress and technology transforms the world. As a leading institution in technology education, CTech offers dynamic programs that prepare students for success in the rapidly evolving tech industry. From computer science and engineering to information technology and cybersecurity, our curriculum combines theoretical knowledge with hands-on experience, ensuring graduates are equipped with the skills and expertise needed to thrive in their chosen fields. Our faculty, comprised of experienced professionals and scholars, mentor students to become creative problem solvers and leaders in technology innovation. At CTech, we emphasize collaboration, critical thinking, and cutting-edge research, empowering our graduates to make meaningful contributions to society through the application of technology. Join us as we explore the frontiers of technology, push the boundaries of innovation, and shape the future of the digital world. Welcome to CTech, where your journey to a tech-driven future begins.",
    color: Color.fromARGB(255, 18, 97, 67),
  ),
  College(
    id: 18,
    name: 'Open University',
    imageUrl: 'images/clogo/ou.webp',
    imageUrl2: 'images/cpad/cpadbuilding.webp',
    description:
        "Welcome to the Open University(OU), where innovation drives progress and technology transforms the world. As a leading institution in technology education, CTech offers dynamic programs that prepare students for success in the rapidly evolving tech industry. From computer science and engineering to information technology and cybersecurity, our curriculum combines theoretical knowledge with hands-on experience, ensuring graduates are equipped with the skills and expertise needed to thrive in their chosen fields. Our faculty, comprised of experienced professionals and scholars, mentor students to become creative problem solvers and leaders in technology innovation. At CTech, we emphasize collaboration, critical thinking, and cutting-edge research, empowering our graduates to make meaningful contributions to society through the application of technology. Join us as we explore the frontiers of technology, push the boundaries of innovation, and shape the future of the digital world. Welcome to CTech, where your journey to a tech-driven future begins.",
    color: Color.fromARGB(255, 18, 97, 67),
  ),
];

class CollegeDetails extends StatelessWidget {
  final College college;

  CollegeDetails({required this.college});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(college.name),
        backgroundColor: college.color,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  college.imageUrl,
                  width: 400,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  college.description,
                  style: TextStyle(
                      fontSize: 16.0, height: 1.5, fontFamily: 'Montserrat'),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                child: Image.asset(
                  college.imageUrl2,
                  width: 400,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CollegeCard extends StatelessWidget {
  final College college;

  CollegeCard({required this.college});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CollegeDetails(college: college),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
              child: Image.asset(
                college.imageUrl,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                college.name,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CollegeCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: colleges.length,
      itemBuilder: (context, index) {
        return CollegeCard(college: colleges[index]);
      },
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Universities'),
          backgroundColor: Colors.teal,
        ),
        body: CollegeCardList(),
      ),
    ),
  );
}
