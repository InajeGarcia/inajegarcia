import 'package:flutter/material.dart';

class OfficeImage {
  final String imagePath;
  final String name;
  final String details;

  OfficeImage(
      {required this.imagePath, required this.name, required this.details});
}

class FirstFloorPage extends StatelessWidget {
  final List<OfficeImage> firstFloorImages = [
    OfficeImage(
        imagePath: 'images/records.webp',
        name: 'Records Office',
        details:
            "In the university records office, we are dedicated to maintaining and managing student records with the utmost accuracy and confidentiality. Our responsibilities include organizing and updating student academic records, processing transcript requests, and ensuring compliance with university policies and regulations regarding record-keeping. We also provide support to students, faculty, and staff by assisting with inquiries related to academic records and graduation requirements. Our goal is to provide efficient and reliable service to the university community while upholding the highest standards of data integrity and security."),
    OfficeImage(
        imagePath: 'images/admission.webp',
        name: 'Admission Office',
        details:
            "In the admission services office, we are committed to assisting prospective students throughout the admissions process. Our responsibilities include providing information about academic programs, assisting with application procedures, and evaluating applicant qualifications. We work closely with prospective students to address any questions or concerns they may have and to ensure a smooth transition into the university. Additionally, we collaborate with academic departments and other university offices to facilitate the admissions process and maintain the integrity of admissions standards. Our goal is to provide excellent customer service and support to prospective students as they pursue their educational goals."),
    OfficeImage(
        imagePath: 'images/cashier.webp',
        name: 'Cashier Office',
        details:
            "In the university cashiering office, our primary responsibility is to handle all financial transactions for students, faculty, and staff. This includes processing tuition and fee payments, issuing refunds, and managing student accounts. We strive to provide efficient and accurate service to ensure that all financial transactions are handled in a timely manner. Additionally, we are here to assist students with any questions or concerns they may have regarding their student accounts or financial aid. Our goal is to provide excellent customer service and support to the university community."),
    OfficeImage(
        imagePath: 'images/registrar.webp',
        name: 'Registrar Office',
        details:
            "As the university registrar, I oversee the management of student records, academic policies, and course enrollment. My responsibilities include maintaining accurate academic records, managing the registration process, and ensuring compliance with university policies and procedures. I work closely with students, faculty, and staff to provide support and assistance with academic matters. Whether it's helping students navigate the registration process or ensuring that academic policies are followed, my goal is to facilitate a smooth and successful academic experience for all members of the university community."),
    OfficeImage(
        imagePath: 'images/coa.webp',
        name: 'COA Office',
        details: 'Details about COA Office'),
    OfficeImage(
        imagePath: 'images/guidance.webp',
        name: 'Guidance Office',
        details: 'Details about Guidance Office'),
    OfficeImage(
        imagePath: 'images/accounting.webp',
        name: 'Accounting Office',
        details: 'Details about Accounting Office'),
    OfficeImage(
        imagePath: 'images/img.webp',
        name: 'IMG Office',
        details: 'Details about IMG Office'),
    OfficeImage(
        imagePath: 'images/budget.webp',
        name: 'Budget Office',
        details: 'Details about Budget Office'),
    OfficeImage(
        imagePath: 'images/vpfad.webp',
        name: 'VPFAD Office',
        details: 'Details about VPFAD Office'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Floor'),
      ),
      body: ListView.builder(
        itemCount: firstFloorImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                // Handle image tap here
                // You can navigate to a new page to show image details
                _showImageDetails(context, firstFloorImages[index]);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  firstFloorImages[index].imagePath,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showImageDetails(BuildContext context, OfficeImage image) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(image.name),
          content: Text(image.details),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

class SecondFloorPage extends StatelessWidget {
  final List<OfficeImage> secondFloorImages = [
    OfficeImage(
        imagePath: 'images/vpre.webp',
        name: 'Vice President for Research and Extension Office',
        details:
            'Details about Vice President for Research and Extension Office'),
    OfficeImage(
        imagePath: 'images/vpaa.webp',
        name: 'Vice President for Academic Affairs Office',
        details: 'Details about Vice President for Academic Affairs Office'),
    OfficeImage(
        imagePath: 'images/networksystem.webp',
        name: 'Network System Office',
        details: 'Details about Network System Office'),
    OfficeImage(
        imagePath: 'images/researchoffice.webp',
        name: 'Research Office',
        details: 'Details about Research Office'),
    OfficeImage(
        imagePath: 'images/hrmo.webp',
        name: 'HRMO Office',
        details: 'Details about HRMO Office'),
    OfficeImage(
        imagePath: 'images/extensionoffice.webp',
        name: 'Extension Office',
        details: 'Details about Extension Office'),
    OfficeImage(
        imagePath: 'images/upim.webp',
        name: 'UPIM Office',
        details: 'Details about UPIM Office'),
    OfficeImage(
        imagePath: 'images/pasuc.webp',
        name: 'PASUC Office',
        details: 'Details about PASUC Office'),
    OfficeImage(
        imagePath: 'images/nstp.webp',
        name: 'NSTP',
        details: 'nstpsagsgsdfsdgfsd'),
    OfficeImage(
        imagePath: 'images/centergender.webp',
        name: 'CGAD',
        details:
            "The Center for Gender and Development (CGD) at our university is committed to advancing gender equality and promoting social justice through research, advocacy, and education. Our center focuses on addressing gender disparities and promoting the empowerment of all individuals, irrespective of gender identity. We collaborate with academic departments, community organizations, and international partners to conduct research and develop initiatives aimed at promoting gender equality and social inclusion. Through our programs, workshops, and events, we strive to raise awareness about gender issues and create a campus environment that is safe, inclusive, and supportive for all.")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Floor'),
      ),
      body: ListView.builder(
        itemCount: secondFloorImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                // Handle image tap here
                // You can navigate to a new page to show image details
                _showImageDetails(context, secondFloorImages[index]);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  secondFloorImages[index].imagePath,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showImageDetails(BuildContext context, OfficeImage image) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(image.name),
          content: Text(image.details),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

class ThirdFloorPage extends StatelessWidget {
  final List<OfficeImage> thirdFloorImages = [
    OfficeImage(
        imagePath: 'images/op.webp',
        name: 'Office of the President',
        details: 'Details about Office of the President'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Floor'),
      ),
      body: ListView.builder(
        itemCount: thirdFloorImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                // Handle image tap here
                // You can navigate to a new page to show image details
                _showImageDetails(context, thirdFloorImages[index]);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  thirdFloorImages[index].imagePath,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showImageDetails(BuildContext context, OfficeImage image) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(image.name),
          content: Text(image.details),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
