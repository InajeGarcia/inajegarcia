import 'package:flutter/material.dart';

class Spot {
  final int id;
  final String name;
  final String imageUrl;
  final String imageUrl2;
  final String description;
  final Color color;

  Spot({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.imageUrl2,
    required this.description,
    required this.color,
  });
}

List<Spot> spots = [
  Spot(
    id: 1,
    name: 'UNP Administration Building',
    imageUrl: 'images/admin.jpg',
    imageUrl2: 'images/admin.jpg',
    description:
        "The administration building in a school serves as the central hub for managing daily operations and supporting students, staff, and faculty. It typically houses offices for the principal, assistant principals, and other administrative staff, as well as reception areas for greeting visitors and handling inquiries. Conference rooms are available for meetings and discussions, while dedicated workspaces accommodate secretaries, registrars, and other support personnel. The building also includes facilities such as the school nurse's office for health and wellness needs, storage areas for documents and supplies, and security features for managing visitor access and ensuring safety. Additionally, the building is equipped with communication systems like intercoms and PA systems for announcements, and it provides accessible amenities to accommodate all users.",
    color: Color.fromARGB(255, 10, 76, 197),
  ),
  Spot(
    id: 2,
    name: 'UNP Gym',
    imageUrl: 'images/gymnasium.jpg',
    imageUrl2: 'images/gym.jpg',
    description:
        'Welcome to the Spot of Architecture, where creativity meets innovation and design transforms spaces into experiences. Our institution is a hub for aspiring architects, urban planners, and environmental designers who are passionate about shaping the world around them. With a rich history of nurturing talent and fostering interdisciplinary collaboration, we provide students with a dynamic learning environment that integrates theory with hands-on practice. At our spot, students are empowered to explore diverse design approaches, harness cutting-edge technology, and address real-world challenges through sustainable and visionary solutions. Join us at the forefront of architectural exploration, where every blueprint represents a step towards shaping a more beautiful, functional, and sustainable future.',
    color: Color.fromARGB(255, 122, 7, 55),
  ),
  Spot(
    id: 3,
    name: 'UNP Hostel',
    imageUrl: 'images/admin.jpg',
    imageUrl2: 'images/admin.jpg',
    description:
        'Welcome to the Spot of Arts and Sciences, where curiosity knows no bounds and intellectual exploration thrives. As the heart of interdisciplinary learning, our spot offers a diverse array of programs spanning the humanities, social sciences, and natural sciences. With a commitment to fostering critical thinking, creativity, and cultural understanding, we empower students to engage with the complexities of the world and contribute meaningfully to society. Here, students are encouraged to embrace their passions, challenge assumptions, and pursue knowledge across traditional boundaries. Join us on a journey of discovery, where every question leads to new insights and every discovery sparks further exploration. Welcome to a community dedicated to nurturing the mind, expanding perspectives, and inspiring lifelong learning.',
    color: Color.fromARGB(255, 180, 21, 21),
  ),
  Spot(
    id: 4,
    name: 'UNP C-Tech/ITE',
    imageUrl: 'images/ctechite.jpg',
    imageUrl2: 'images/ctechite.jpg',
    description:
        "Welcome to the Spot of Business, Accountancy, and Administration (CBAA), where excellence meets innovation in the dynamic world of commerce and management. As a leading institution in business education, CBAA offers a comprehensive range of programs designed to prepare students for success in today's competitive global marketplace. With a focus on practical skills, ethical leadership, and entrepreneurial thinking, we empower our students to thrive in diverse industries and navigate the complexities of the modern business landscape. At CBAA, we foster a culture of collaboration, critical thinking, and continuous learning, equipping our graduates with the tools they need to drive positive change and make a meaningful impact on the world. Join us as we shape the future of business together, one strategic decision at a time. Welcome to CBAA, where your journey to success begins.",
    color: Color.fromARGB(255, 255, 233, 34),
  ),
  Spot(
    id: 5,
    name: 'UNP PIO/Quality Assurance',
    imageUrl: 'images/cbaabuilding.jpg',
    imageUrl2: 'images/cbaabuilding.jpg',
    description:
        "Welcome to the Spot of Communication and Information Technology (CCIT), where innovation meets technology and creativity drives digital transformation. As a pioneering institution in the realm of computing and information sciences, CCIT offers a dynamic learning environment that prepares students for the rapidly evolving tech industry. Our comprehensive programs cover a wide range of cutting-edge fields including computer science, information systems, cybersecurity, and digital media, empowering students to become versatile professionals equipped to tackle the challenges of the digital age. At CCIT, we prioritize hands-on learning, industry-relevant projects, and collaboration with leading tech companies, ensuring that our graduates are ready to make an impact from day one. Join us as we explore the frontiers of technology, push the boundaries of innovation, and shape the future of the digital world. Welcome to CCIT, where your journey towards a tech-driven future begins.",
    color: Color.fromARGB(255, 212, 15, 91),
  ),
  Spot(
    id: 6,
    name: 'UNP Training Center',
    imageUrl: 'images/library.jpg',
    imageUrl2: 'images/library.jpg',
    description:
        "Welcome to the Spot of Criminal Justice and Enforcement (CCJE), where dedication to justice and security is paramount. As a premier institution in the field of criminal justice, CCJE offers comprehensive programs that prepare students for a wide range of careers in law enforcement, corrections, homeland security, and legal professions. Our faculty, comprised of experienced practitioners and scholars, provide students with the knowledge, skills, and ethical framework necessary to navigate complex legal systems and uphold the principles of fairness and equality. At CCJE, we emphasize hands-on learning, experiential opportunities, and community engagement, empowering our graduates to make a positive impact in their communities and beyond. Join us as we work towards a safer, more just society, where integrity and accountability are the cornerstones of our collective efforts. Welcome to CCJE, where your passion for justice finds purpose.",
    color: Color.fromARGB(255, 109, 2, 77),
  ),
  Spot(
    id: 7,
    name: 'Student Center',
    imageUrl: 'images/sc.jpg',
    imageUrl2: 'images/scbuilding.jpg',
    description:
        "Welcome to the Spot of Engineering (CE), where innovation fuels progress and imagination transforms into reality. As a leading institution in engineering education, CE offers a diverse range of programs designed to equip students with the knowledge and skills needed to tackle the world's most pressing challenges. From civil and mechanical engineering to electrical and computer engineering, our curriculum blends theory with hands-on experience, preparing graduates to excel in their chosen fields. At CE, we foster a culture of collaboration, creativity, and ethical responsibility, empowering our students to become visionary leaders and problem solvers in a rapidly changing world. Join us as we engineer solutions that shape the future and make a lasting impact on society. Welcome to CE, where your journey to engineering excellence begins.",
    color: Color.fromARGB(255, 201, 68, 15),
  ),
  Spot(
    id: 8,
    name: 'Student Complex',
    imageUrl: 'images/office (40).jpg',
    imageUrl2: 'images/office (40).jpg',
    description:
        "Welcome to the Spot of Health Sciences (CHS), where compassion meets expertise and wellness is the foundation of our mission. As a leading institution in healthcare education, CHS offers a comprehensive range of programs dedicated to preparing students for rewarding careers in the medical field. From nursing and public health to physical therapy and healthcare administration, our curriculum integrates cutting-edge research with hands-on clinical experience, ensuring that graduates are equipped to address the complex health needs of individuals and communities. At CHS, we prioritize interdisciplinary collaboration, cultural competency, and patient-centered care, empowering our students to become compassionate leaders and advocates for health equity. Join us as we work towards a healthier future, where every student's passion for healing becomes a catalyst for positive change. Welcome to CHS, where excellence in healthcare education begins.",
    color: Color.fromARGB(255, 56, 25, 196),
  ),
  Spot(
    id: 9,
    name: 'UNP Student Shed',
    imageUrl: 'images/office (40).jpg',
    imageUrl2: 'images/office (40).jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 10,
    name: 'UNP Parking Area(Heavy Vehicles)',
    imageUrl: 'images/office (40).jpg',
    imageUrl2: 'images/office (40).jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 11,
    name: 'UNP Groceria',
    imageUrl: 'images/groceria.jpg',
    imageUrl2: 'images/groceria.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 12,
    name: 'UNP Guestel Canteen',
    imageUrl: 'images/groceria.jpg',
    imageUrl2: 'images/groceria.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 13,
    name: 'UNP Chapel',
    imageUrl: 'images/founders.jpg',
    imageUrl2: 'images/founders.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 14,
    name: 'UNP Lagoon',
    imageUrl: 'images/gymnasium.jpg',
    imageUrl2: 'images/gymnasium.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 15,
    name: 'UNP Library',
    imageUrl: 'images/library.jpg',
    imageUrl2: 'images/library.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 16,
    name: 'UNP Founders Plaza',
    imageUrl: 'images/foundersplaza.jpg',
    imageUrl2: 'images/foundersplaza.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 17,
    name: 'UNP Guestel',
    imageUrl: 'images/groceria.jpg',
    imageUrl2: 'images/groceria.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 18,
    name: 'UNP Ladies Dormitory',
    imageUrl: 'images/ladiesdorm.jpg',
    imageUrl2: 'images/ladiesdorm.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 19,
    name: 'UNP Mens Dormitory',
    imageUrl: 'images/ladiesdorm.jpg',
    imageUrl2: 'images/ladiesdorm.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 20,
    name: 'UNP Grandstand',
    imageUrl: 'images/oval.jpg',
    imageUrl2: 'images/oval.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 21,
    name: 'UNP Oval',
    imageUrl: 'images/oval.jpg',
    imageUrl2: 'images/oval.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 22,
    name: 'UNP Motorpool',
    imageUrl: 'images/admin.jpg',
    imageUrl2: 'images/chtmbuilding.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 23,
    name: 'UNP Canteen(Beside CCIT)',
    imageUrl: 'images/canteen2.jpg',
    imageUrl2: 'images/canteen5.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 24,
    name: 'UNP Canteen(Back)',
    imageUrl: 'images/ccjebuilding.jpg',
    imageUrl2: 'images/ccjebuilding.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 25,
    name: 'UNP Property Office',
    imageUrl: 'images/property.jpg',
    imageUrl2: 'images/propertybuilding.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 26,
    name: 'UNP Ceramic Center',
    imageUrl: 'images/office (10).jpg',
    imageUrl2: 'images/office (10).jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 27,
    name: 'UNP Elementary',
    imageUrl: 'images/ctebuilding.jpg',
    imageUrl2: 'images/ctebuilding.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 28,
    name: 'UNP Iconic Eifiel Tower',
    imageUrl: 'images/admin.jpg',
    imageUrl2: 'images/admin.jpg',
    description:
        "Welcome to the Spot of Hospitality and Tourism Management (CHTM), where hospitality is more than just a profession—it's a way of life. As a premier institution in hospitality education, CHTM offers dynamic programs that prepare students for dynamic careers in the vibrant hospitality and tourism industry. From hotel management and event planning to tourism development and culinary arts, our curriculum blends theory with hands-on experience, ensuring graduates are ready to excel in diverse roles around the world. At CHTM, we prioritize experiential learning, cultural immersion, and service excellence, empowering students to become leaders in hospitality innovation and customer satisfaction. Join us as we shape the future of hospitality and tourism, where every guest interaction is an opportunity to create memorable experiences. Welcome to CHTM, where your journey in hospitality begins.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
];
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spot List',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Spots'),
        ),
        body: ListView.builder(
          itemCount: spots.length,
          itemBuilder: (context, index) {
            // Retrieve the current College object from the list
            final spot = spots[index];
            // Return a container for each college
            return Container(
              padding: EdgeInsets.all(10.0),
              color:
                  spot.color, // Set the background color to the college's color
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Display the name of the college
                  Text(
                    spot.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  // Add a button for each college
                  ElevatedButton(
                    onPressed: () {
                      // Action when the button is clicked: show a Snackbar with the college name
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('You clicked on ${spot.name}'),
                        ),
                      );
                    },
                    child: Text('More Info'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
