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
    imageUrl: 'images/admin.webp',
    imageUrl2: 'images/admin.webp',
    description:
        "The administration building in a school serves as the central hub for managing daily operations and supporting students, staff, and faculty. It typically houses offices for the principal, assistant principals, and other administrative staff, as well as reception areas for greeting visitors and handling inquiries. Conference rooms are available for meetings and discussions, while dedicated workspaces accommodate secretaries, registrars, and other support personnel. The building also includes facilities such as the school nurse's office for health and wellness needs, storage areas for documents and supplies, and security features for managing visitor access and ensuring safety. Additionally, the building is equipped with communication systems like intercoms and PA systems for announcements, and it provides accessible amenities to accommodate all users.",
    color: Color.fromARGB(255, 10, 76, 197),
  ),
  Spot(
    id: 2,
    name: 'UNP Gym',
    imageUrl: 'images/gymnasium.webp',
    imageUrl2: 'images/gym.webp',
    description:
        'Welcome to the Spot of Architecture, where creativity meets innovation and design transforms spaces into experiences. Our institution is a hub for aspiring architects, urban planners, and environmental designers who are passionate about shaping the world around them. With a rich history of nurturing talent and fostering interdisciplinary collaboration, we provide students with a dynamic learning environment that integrates theory with hands-on practice. At our spot, students are empowered to explore diverse design approaches, harness cutting-edge technology, and address real-world challenges through sustainable and visionary solutions. Join us at the forefront of architectural exploration, where every blueprint represents a step towards shaping a more beautiful, functional, and sustainable future.',
    color: Color.fromARGB(255, 122, 7, 55),
  ),
  Spot(
    id: 3,
    name: 'UNP Hostel',
    imageUrl: 'images/hostel.webp',
    imageUrl2: 'images/hostel.webp',
    description:
        "Welcome to the cozy and vibrant hostel nestled in the heart of our university campus. Our hostel offers a warm and inviting atmosphere where students from all walks of life come together to create a diverse and dynamic community. As you step inside, you'll be greeted by modern and comfortable living spaces designed to make you feel right at home. Each room is equipped with all the essentials for a comfortable stay, including a bed, study desk, wardrobe, and high-speed internet access. Our hostel facilities are designed to meet all your needs, whether you're looking to socialize, study, or simply relax. Take advantage of our common areas, including spacious lounges, study rooms, and recreational areas where you can unwind with friends after a long day of classes. Safety and security are our top priorities, with round-the-clock security personnel and CCTV surveillance to ensure your peace of mind at all times. With its convenient location on campus, our hostel provides easy access to all university facilities, including libraries, classrooms, and dining halls. Whether you're a first-year student or a seasoned senior, our hostel is the perfect place to call home during your time at university.",
    color: Color.fromARGB(255, 180, 21, 21),
  ),
  Spot(
    id: 4,
    name: 'UNP C-Tech/ITE',
    imageUrl: 'images/ctechite.webp',
    imageUrl2: 'images/ctechite.webp',
    description:
        "Welcome to the Spot of Business, Accountancy, and Administration (CBAA), where excellence meets innovation in the dynamic world of commerce and management. As a leading institution in business education, CBAA offers a comprehensive range of programs designed to prepare students for success in today's competitive global marketplace. With a focus on practical skills, ethical leadership, and entrepreneurial thinking, we empower our students to thrive in diverse industries and navigate the complexities of the modern business landscape. At CBAA, we foster a culture of collaboration, critical thinking, and continuous learning, equipping our graduates with the tools they need to drive positive change and make a meaningful impact on the world. Join us as we shape the future of business together, one strategic decision at a time. Welcome to CBAA, where your journey to success begins.",
    color: Color.fromARGB(255, 255, 233, 34),
  ),
  Spot(
    id: 5,
    name: 'UNP PIO/Quality Assurance',
    imageUrl: 'images/pio.webp',
    imageUrl2: 'images/pio.webp',
    description:
        "Welcome to the Spot of Communication and Information Technology (CCIT), where innovation meets technology and creativity drives digital transformation. As a pioneering institution in the realm of computing and information sciences, CCIT offers a dynamic learning environment that prepares students for the rapidly evolving tech industry. Our comprehensive programs cover a wide range of cutting-edge fields including computer science, information systems, cybersecurity, and digital media, empowering students to become versatile professionals equipped to tackle the challenges of the digital age. At CCIT, we prioritize hands-on learning, industry-relevant projects, and collaboration with leading tech companies, ensuring that our graduates are ready to make an impact from day one. Join us as we explore the frontiers of technology, push the boundaries of innovation, and shape the future of the digital world. Welcome to CCIT, where your journey towards a tech-driven future begins.",
    color: Color.fromARGB(255, 212, 15, 91),
  ),
  Spot(
    id: 6,
    name: 'UNP Training Center',
    imageUrl: 'images/training.webp',
    imageUrl2: 'images/training.webp',
    description:
        "Welcome to the Spot of Criminal Justice and Enforcement (CCJE), where dedication to justice and security is paramount. As a premier institution in the field of criminal justice, CCJE offers comprehensive programs that prepare students for a wide range of careers in law enforcement, corrections, homeland security, and legal professions. Our faculty, comprised of experienced practitioners and scholars, provide students with the knowledge, skills, and ethical framework necessary to navigate complex legal systems and uphold the principles of fairness and equality. At CCJE, we emphasize hands-on learning, experiential opportunities, and community engagement, empowering our graduates to make a positive impact in their communities and beyond. Join us as we work towards a safer, more just society, where integrity and accountability are the cornerstones of our collective efforts. Welcome to CCJE, where your passion for justice finds purpose.",
    color: Color.fromARGB(255, 109, 2, 77),
  ),
  Spot(
    id: 7,
    name: 'Student Center',
    imageUrl: 'images/sc.webp',
    imageUrl2: 'images/scbuilding.webp',
    description:
        "The Student Center serves as the heart of campus life, providing a vibrant and inclusive space where students can engage, connect, and thrive. From hosting student organization meetings and events to providing recreational facilities and study spaces, the Student Center is a hub of activity. Our dedicated staff is here to support students, offering a wide range of resources and services to enhance their university experience. Whether it's grabbing a coffee between classes, attending a workshop, or simply finding a quiet place to study, the Student Center is where students come together to learn, grow, and make lasting memories.",
    color: Color.fromARGB(255, 201, 68, 15),
  ),
  Spot(
    id: 8,
    name: 'Science Complex',
    imageUrl: 'images/sciencecomplex.webp',
    imageUrl2: 'images/sciencecomplex.webp',
    description:
        "The Student Complex is designed to be the ultimate student hub, offering a wide range of facilities and services to meet the diverse needs of our student community. From modern residential halls to state-of-the-art recreational and dining facilities, the Student Complex provides everything students need to live, learn, and socialize on campus. With comfortable living spaces, study lounges, fitness centers, and dining options, the Student Complex is more than just a place to stay – it's a vibrant community where students can connect, collaborate, and create lifelong memories. Our dedicated staff is committed to providing a safe, inclusive, and supportive environment where all students can thrive both academically and personally.",
    color: Color.fromARGB(255, 56, 25, 196),
  ),
  Spot(
    id: 9,
    name: 'UNP Student Shed',
    imageUrl: 'images/office (40).webp',
    imageUrl2: 'images/office (40).webp',
    description:
        "The Student Shed is a dynamic space designed specifically for students to relax, socialize, and engage in various activities. Equipped with comfortable seating, study areas, and recreational facilities, the Student Shed provides an ideal environment for students to unwind between classes or collaborate on group projects. Whether it's grabbing a quick bite to eat, participating in club meetings, or simply catching up with friends, the Student Shed is the go-to destination for students looking to take a break from their academic pursuits. Our goal is to create a welcoming and inclusive space where students can foster meaningful connections and make the most of their university experience.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 10,
    name: 'UNP Parking Area(Heavy Vehicles)',
    imageUrl: 'images/office (40).webp',
    imageUrl2: 'images/office (40).webp',
    description:
        "The university parking area is designed to provide convenient and safe parking options for students, faculty, staff, and visitors. With designated parking zones, ample parking spaces, and clear signage, we strive to ensure a smooth and organized parking experience for everyone on campus. Our parking facilities are equipped with security measures to ensure the safety of vehicles and individuals. Additionally, we offer various parking permit options to accommodate the diverse needs of our university community. Whether you're a student rushing to class or a visitor attending an event, our goal is to provide accessible and hassle-free parking solutions for all.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 11,
    name: 'UNP Groceria',
    imageUrl: 'images/groceria.webp',
    imageUrl2: 'images/groceria.webp',
    description:
        "The university groceria is a convenient on-campus grocery store providing students, faculty, and staff with easy access to essential food items and household goods. Stocked with a variety of fresh produce, pantry staples, grab-and-go meals, and other daily necessities, the groceria offers a convenient shopping experience for the university community. Whether you're looking to pick up ingredients for a home-cooked meal, grab a quick snack between classes, or restock your dorm room supplies, the groceria has you covered. With affordable prices, friendly staff, and convenient location, we aim to make grocery shopping a hassle-free experience for everyone on campus.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 12,
    name: 'UNP Guestel Canteen',
    imageUrl: 'images/guestelcanteen.webp',
    imageUrl2: 'images/guestelcanteen.webp',
    description:
        "The university canteen is the perfect spot for students, faculty, and staff to grab a quick bite to eat or relax between classes. Offering a variety of delicious and affordable meals, snacks, and beverages, the canteen provides something for everyone. From freshly prepared sandwiches and salads to hot meals and daily specials, there's always something tasty to enjoy. With comfortable seating, free Wi-Fi, and a welcoming atmosphere, the canteen is not just a place to eat, but also a hub for socializing and unwinding. Our friendly staff are always ready to serve you with a smile, making your dining experience at the university canteen a delightful one.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 13,
    name: 'UNP Chapel',
    imageUrl: 'images/chapel.webp',
    imageUrl2: 'images/chapel.webp',
    description:
        "The university chapel is a sacred space where students, faculty, and staff can find solace, reflection, and spiritual support. Whether you're seeking a moment of quiet contemplation, a place for prayer and worship, or a community for fellowship, the chapel welcomes individuals of all faiths and backgrounds. Our chapel hosts regular religious services, meditation sessions, and community events, providing opportunities for spiritual growth and connection. With its serene atmosphere, beautiful architecture, and inclusive environment, the chapel serves as a beacon of faith and hope for the entire university community.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 14,
    name: 'UNP Lagoon',
    imageUrl: 'images/gymnasium.webp',
    imageUrl2: 'images/gymnasium.webp',
    description:
        "The university lagoon is a picturesque oasis nestled within our campus, providing a serene escape for students, faculty, and visitors alike. With its tranquil waters, lush greenery, and scenic walking paths, the lagoon offers a peaceful retreat where individuals can unwind, relax, and reconnect with nature. Whether you're enjoying a leisurely stroll along the water's edge, studying under the shade of a tree, or simply taking in the beauty of the surroundings, the lagoon provides a rejuvenating experience for all who visit. With benches, picnic areas, and outdoor seating available, the lagoon is the perfect spot for quiet reflection, social gatherings, and enjoying the natural beauty of our campus.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 15,
    name: 'UNP Library',
    imageUrl: 'images/library.webp',
    imageUrl2: 'images/library.webp',
    description:
        "The university library is the academic heart of our campus, providing students, faculty, and researchers with access to a vast array of resources and services to support their academic pursuits. With extensive collections of books, journals, and digital resources, as well as quiet study areas, collaborative spaces, and computer labs, the library is a dynamic hub for learning and research. Our knowledgeable librarians are available to assist with research inquiries, citation guidance, and information literacy skills. Whether you're conducting research for a paper, studying for exams, or simply exploring new topics, the library is here to support you every step of the way. With its welcoming atmosphere and commitment to academic excellence, the library is an essential resource for the entire university community.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 16,
    name: 'UNP Founders Plaza',
    imageUrl: 'images/foundersplaza.webp',
    imageUrl2: 'images/foundersplaza.webp',
    description:
        "The Founder's Plaza is a cherished landmark at our university, dedicated to honoring the visionaries who laid the foundation for our institution. Situated at the heart of campus, the plaza serves as a gathering place for students, faculty, alumni, and visitors to come together and celebrate our university's rich history and heritage. With its beautiful landscaping, inspiring monuments, and peaceful atmosphere, Founder's Plaza provides a serene retreat where individuals can reflect, connect, and find inspiration. Whether you're attending a campus event, meeting with friends, or simply enjoying a moment of quiet contemplation, Founder's Plaza is a beloved symbol of our university's past, present, and future.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 17,
    name: 'UNP Guestel',
    imageUrl: 'images/guestel.webp',
    imageUrl2: 'images/guestel.webp',
    description:
        "The university guestel offers comfortable and affordable accommodation for visitors, providing a convenient and welcoming place to stay while on campus. Whether you're a prospective student, visiting faculty member, or attending a conference or event, our guestel provides a home away from home. With clean and spacious rooms, modern amenities, and a friendly atmosphere, our guestel ensures a pleasant and enjoyable stay for all guests. Conveniently located near campus facilities and attractions, the guestel is the perfect base for exploring everything our university has to offer. Our dedicated staff are here to ensure that your stay is comfortable and memorable, making the guestel your ideal choice for accommodation on campus.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 18,
    name: 'UNP Ladies Dormitory',
    imageUrl: 'images/ladiesdorm.webp',
    imageUrl2: 'images/ladiesdorm.webp',
    description:
        "The ladies' dormitory at our university provides a safe, comfortable, and supportive living environment for female students. With spacious and well-appointed rooms, modern amenities, and a welcoming atmosphere, our dormitory offers a home away from home for students. Located conveniently on campus, the dormitory provides easy access to academic buildings, dining facilities, and recreational areas. Our dedicated resident assistants and staff are available to provide support and assistance to ensure that students have a positive and enriching experience during their time in residence. From fostering friendships to promoting personal growth and development, the ladies' dormitory is a vibrant community where students can thrive both academically and personally.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 19,
    name: 'UNP Mens Dormitory',
    imageUrl: 'images/ladiesdorm.webp',
    imageUrl2: 'images/ladiesdorm.webp',
    description:
        "The men's dormitory at our university offers a comfortable and supportive living environment for male students. With spacious rooms, modern amenities, and a welcoming atmosphere, our dormitory provides a home away from home for students. Conveniently located on campus, the dormitory offers easy access to academic buildings, dining facilities, and recreational areas. Our dedicated resident assistants and staff are available to provide support and assistance to ensure that students have a positive and enriching experience during their time in residence. Whether studying together, participating in dormitory events, or forming lifelong friendships, the men's dormitory is a vibrant community where students can thrive both academically and personally.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 20,
    name: 'UNP Grandstand',
    imageUrl: 'images/oval.webp',
    imageUrl2: 'images/oval.webp',
    description:
        "The university grandstand is the heart of our campus, providing an exhilarating venue for sporting events, concerts, and other campus activities. With its towering structure and panoramic views, the grandstand offers an unforgettable experience for spectators and participants alike. Whether cheering on our teams during a thrilling game or enjoying a live performance under the stars, the grandstand is the perfect place to come together and show our school spirit. With state-of-the-art facilities, comfortable seating, and a vibrant atmosphere, the grandstand is a cherished symbol of our university community, where memories are made and traditions are celebrated.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 21,
    name: 'UNP Oval',
    imageUrl: 'images/oval.webp',
    imageUrl2: 'images/oval.webp',
    description:
        "The university oval is the heart of campus life, providing a picturesque and dynamic outdoor space for students, faculty, and visitors to enjoy. Surrounded by lush greenery and majestic trees, the oval serves as a popular gathering place for recreational activities, social events, and community celebrations. Whether it's playing frisbee with friends, enjoying a leisurely stroll, or simply soaking up the sunshine, the oval offers something for everyone to enjoy. With its tranquil atmosphere and scenic surroundings, the oval is the perfect place to relax, recharge, and connect with nature. As a beloved symbol of our university community, the oval brings people together and fosters a sense of belonging and camaraderie among all who visit.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 22,
    name: 'UNP Motorpool',
    imageUrl: 'images/gym.webp',
    imageUrl2: 'images/gym.webp',
    description:
        "The university motorpool is a vital resource for our campus community, providing reliable transportation options for faculty, staff, and students. From maintenance and repairs to vehicle rentals and shuttle services, the motorpool ensures that our transportation needs are met safely and efficiently. With a fleet of well-maintained vehicles and dedicated staff, we strive to provide convenient and accessible transportation solutions for all members of the university community. Whether it's getting to and from campus, attending off-site meetings, or participating in university events, the motorpool is here to support our transportation needs and enhance our campus experience.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 23,
    name: 'UNP Canteen(Beside CCIT)',
    imageUrl: 'images/canteen2.webp',
    imageUrl2: 'images/canteen5.webp',
    description:
        "The university canteen is a bustling hub of activity, offering a wide variety of delicious and nutritious meals, snacks, and beverages to keep students, faculty, and staff fueled throughout the day. With an extensive menu featuring both local and international cuisine, there's something to satisfy every craving. Whether you're looking for a quick bite between classes, a leisurely meal with friends, or a refreshing beverage to go, the canteen has you covered. Our friendly staff work tirelessly to provide prompt service and ensure a pleasant dining experience for all. With comfortable seating, free Wi-Fi, and a vibrant atmosphere, the canteen is the perfect place to refuel, recharge, and relax on campus.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 24,
    name: 'UNP Canteen(Back)',
    imageUrl: 'images/ccjebuilding.webp',
    imageUrl2: 'images/ccjebuilding.webp',
    description:
        "The university canteen is a bustling hub of activity, offering a wide variety of delicious and nutritious meals, snacks, and beverages to keep students, faculty, and staff fueled throughout the day. With an extensive menu featuring both local and international cuisine, there's something to satisfy every craving. Whether you're looking for a quick bite between classes, a leisurely meal with friends, or a refreshing beverage to go, the canteen has you covered. Our friendly staff work tirelessly to provide prompt service and ensure a pleasant dining experience for all. With comfortable seating, free Wi-Fi, and a vibrant atmosphere, the canteen is the perfect place to refuel, recharge, and relax on campus.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 25,
    name: 'UNP Property Office',
    imageUrl: 'images/property.webp',
    imageUrl2: 'images/propertybuilding.webp',
    description:
        "The university property office is responsible for managing and maintaining the campus infrastructure to ensure a safe, functional, and attractive environment for students, faculty, and staff. From overseeing building maintenance and repairs to managing construction projects and renovations, our team works diligently to preserve and enhance the university's physical assets. Additionally, we handle property acquisitions, disposals, and lease agreements, as well as provide support for space planning and utilization. Our goal is to provide efficient and effective property management services that support the university's mission and strategic objectives. Whether it's ensuring buildings are safe and code-compliant or optimizing space utilization for academic and administrative functions, the property office plays a crucial role in supporting the university community.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 26,
    name: 'UNP Ceramic Center',
    imageUrl: 'images/office (10).webp',
    imageUrl2: 'images/office (10).webp',
    description:
        "The university ceramic center is a dynamic hub for creativity and artistic expression, providing students, faculty, and the community with access to state-of-the-art facilities and resources for ceramic arts. With spacious studios, kilns, and a wide range of equipment and materials, the ceramic center offers a vibrant environment for learning, experimentation, and collaboration. Whether you're a beginner exploring the basics of ceramics or an experienced artist pushing the boundaries of the medium, our center provides the support and resources you need to bring your artistic vision to life. In addition to studio space, we offer workshops, classes, and lectures led by experienced faculty and visiting artists, fostering a rich and supportive learning community. Whether you're sculpting, throwing on the wheel, or glazing your creations, the ceramic center is where creativity takes shape and imagination flourishes.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 27,
    name: 'UNP Elementary',
    imageUrl: 'images/hostel.webp',
    imageUrl2: 'images/hostel.webp',
    description:
        "The university elementary school is dedicated to providing a nurturing and stimulating learning environment for young students. With a focus on academic excellence, social development, and creative exploration, our school offers a comprehensive and engaging curriculum that prepares students for future success. Our dedicated faculty and staff are committed to providing personalized attention and support to each child, fostering a love of learning and a sense of curiosity. With small class sizes, modern facilities, and innovative teaching methods, we create a dynamic and inclusive learning community where every child can thrive. From the classroom to the playground, the university elementary school is where young minds grow, discover, and achieve their full potential.",
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Spot(
    id: 28,
    name: 'UNP Iconic Eifiel Tower',
    imageUrl: 'images/tower.webp',
    imageUrl2: 'images/tower.webp',
    description:
        "The university tower stands as an iconic symbol of our campus, offering stunning views and serving as a focal point for the entire university community. With its towering height and distinctive architecture, the tower is not only a landmark but also a hub of activity and innovation. From housing administrative offices to providing a space for meetings, events, and exhibitions, the tower plays a central role in the life of our university. Whether it's enjoying the panoramic views from the top floor, attending a lecture in one of the conference rooms, or simply admiring the architecture from the ground, the tower is a beloved and integral part of our campus identity.",
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
