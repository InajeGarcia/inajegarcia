import 'package:flutter/material.dart';

class Admin {
  final int id;
  final String name;
  final String imageUrl;
  final String imageUrl2;
  final String description;
  final Color color;

  Admin({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.imageUrl2,
    required this.description,
    required this.color,
  });
}

List<Admin> admins = [
  Admin(
    id: 1,
    name: 'Accounting Unit',
    imageUrl: 'images/newadmin/admission.webp',
    imageUrl2: 'images/newadmin/admission.webp',
    description:
        'The Accounting Office is located at first floor of the Administration building, just enter the admin building and walk straight until you pass the COA office, you will see the  Accounting Office.',
    color: Color.fromARGB(255, 10, 76, 197),
  ),
  Admin(
    id: 2,
    name: 'Admission Services',
    imageUrl: 'images/newadmin/admission.webp',
    imageUrl2: 'images/newadmin/admission.webp',
    description:
        'The Admission Office is located at the ground floor of the Administration Building. Upon entering, you will find it on the first office to your right.',
    color: Color.fromARGB(255, 122, 7, 55),
  ),
  Admin(
    id: 3,
    name: 'Agribusiness Office',
    imageUrl: 'images/newadmin/agribusiness.webp',
    imageUrl2: 'images/newadmin/agribusiness.webp',
    description:
        'The Agribusiness Office is located at second floor of the UNP Administration Building, You will see the office upon reaching the end part of the second floor to the left part.',
    color: Color.fromARGB(255, 180, 21, 21),
  ),
  Admin(
    id: 4,
    name: 'Office of the University Board Secretary',
    imageUrl: 'images/newadmin/boardsec.webp',
    imageUrl2: 'images/newadmin/boardsec.webp',
    description:
        'Upon entering the Administration Building, You need to walk upstairs until you reach third floor. You need to reach the last office on the left part before Tadena Hall. The University Board Secretary Office is located on that point.',
    color: Color.fromARGB(255, 255, 233, 34),
  ),
  Admin(
    id: 5,
    name: 'Budget Office',
    imageUrl: 'images/newadmin/budget.webp',
    imageUrl2: 'images/newadmin/budget.webp',
    description:
        'Upon entering the Administration building. Just walk straight until you reach the very end part of the first floor. The Budget office is Located in the left part.',
    color: Color.fromARGB(255, 212, 15, 91),
  ),
  //////////////////////////////////
  Admin(
    id: 6,
    name: 'Cashiering Unit',
    imageUrl: 'images/newadmin/cashier.webp',
    imageUrl2: 'images/newadmin/cashier.webp',
    description:
        'Upon entering the Administration Building, You will see the Cashiering Unit, the second office to the left part.',
    color: Color.fromARGB(255, 109, 2, 77),
  ),
  Admin(
    id: 7,
    name: 'Center for Gender and Development(CGAD)',
    imageUrl: 'images/newadmin/cgad.webp',
    imageUrl2: 'images/newadmin/cgad.webp',
    description:
        'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    color: Color.fromARGB(255, 201, 68, 15),
  ),
  Admin(
    id: 8,
    name: 'Office of the Chief Administrative Officer',
    imageUrl: 'images/newadmin/chiefadmin.webp',
    imageUrl2: 'images/newadmin/chiefadmin.webp',
    description: '',
    color: Color.fromARGB(255, 56, 25, 196),
  ),
  Admin(
    id: 9,
    name: 'Commission on Audit(COA)',
    imageUrl: 'images/newadmin/coa.webp',
    imageUrl2: 'images/newadmin/coa.webp',
    description:
        'The Commission on Audit Office is located at the ground floor of the Administration Building. Just walk a few steps straight and you will see it next to the Cashiering unit.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 10,
    name: 'University Computer Maintenance Services',
    imageUrl: 'images/newadmin/maintenance.webp',
    imageUrl2: 'images/newadmin/maintenance.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 11,
    name: 'University Extension Office',
    imageUrl: 'images/newadmin/extension.webp',
    imageUrl2: 'images/newadmin/extension.webp',
    description:
        'The University Extension Office is located at second floor of the Administration Building. Upon entering, you will find a stairs and when you reach seond floor, the extension office is located at the south part of the university Administration building.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 12,
    name: 'Office of the Faculty Union',
    imageUrl: 'images/newadmin/facultyunion.webp',
    imageUrl2: 'images/newadmin/facultyunion.webp',
    description:
        'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 13,
    name: 'Office of the UNP Federated Alumni Association',
    imageUrl: 'images/newadmin/fedalumni.webp',
    imageUrl2: 'images/newadmin/fedalumni.webp',
    description:
        'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 14,
    name: 'Office of the Director Financial Services Division',
    imageUrl: 'images/newadmin/finance.webp',
    imageUrl2: 'images/newadmin/finance.webp',
    description:
        'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 15,
    name: 'Human Resource and Management Office(HRMO)',
    imageUrl: 'images/newadmin/hrmo.webp',
    imageUrl2: 'images/newadmin/hrmo.webp',
    description:
        'The Human Resource Management Office is located at second floor of the Administration Building. Upon entering,  you will find a stairs and when you reach seond floor, the HRMO is located next to the office of Chief Admin of the university Administration building.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 16,
    name: 'Internal Control Office(ICO)',
    imageUrl: 'images/newadmin/ico.webp',
    imageUrl2: 'images/newadmin/ico.webp',
    description:
        'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 17,
    name: 'Instruction & Faculty Development Office',
    imageUrl: 'images/newadmin/instruction.webp',
    imageUrl2: 'images/newadmin/instruction.webp',
    description:
        'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 18,
    name:
        'Information Technology Infrastructure Management and Development Services Office',
    imageUrl: 'images/newadmin/infotech.webp',
    imageUrl2: 'images/newadmin/infotech.webp',
    description:
        'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 19,
    name: 'University Legal Office',
    imageUrl: 'images/newadmin/legal.webp',
    imageUrl2: 'images/newadmin/legal.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 20,
    name: 'Network System and Operations Services',
    imageUrl: 'images/newadmin/networks.webp',
    imageUrl2: 'images/newadmin/networks.webp',
    description:
        'The Networks System Office is located at the second floor of the Administration Building. Upon reaching the second floor, you will find it already in your right part.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 21,
    name: 'National Service Training Program(NSTP)',
    imageUrl: 'images/newadmin/nstp.webp',
    imageUrl2: 'images/newadmin/nstp.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 22,
    name: 'Oandasan Room',
    imageUrl: 'images/newadmin/oandasan.webp',
    imageUrl2: 'images/newadmin/oandasan.webp',
    description:
        'Upon entering the Administration Building, You will see the Oandasan Room on the third floor of the administration building.The office is located to the east part when you reach the third floor when facing north.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 23,
    name: 'Office of the President(OP)',
    imageUrl: 'images/newadmin/op.webp',
    imageUrl2: 'images/newadmin/op.webp',
    description:
        'Upon entering the Administration Building, You will see the office of the President on the Third floor when you walk upstairs. The first office on the left part.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 24,
    name: 'Pasuc',
    imageUrl: 'images/newadmin/pasuc.webp',
    imageUrl2: 'images/newadmin/pasuc.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 25,
    name: 'Public & Internal Affairs Office(PIA)',
    imageUrl: 'images/newadmin/pia.webp',
    imageUrl2: 'images/newadmin/pia.webp',
    description:
        'The Public & International Affairs Office is located at third floor of the University Administration Office. You can reach it while walking upstairs on the right stairs on the admission services part. The PIA office is located next to Internal Control Office(ICO).',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 26,
    name: 'Records Office',
    imageUrl: 'images/newadmin/records.webp',
    imageUrl2: 'images/newadmin/records.webp',
    description:
        'The Records Office is located at the ground floor of the Administration Building. Upon entering, you will find it on the second office to your left.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 27,
    name: 'Office of the Registrar',
    imageUrl: 'images/newadmin/registrar.webp',
    imageUrl2: 'images/newadmin/registrar.webp',
    description:
        'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),

  Admin(
    id: 28,
    name: 'University Research Office',
    imageUrl: 'images/newadmin/research.webp',
    imageUrl2: 'images/newadmin/research.webp',
    description:
        'The University Research Office is located at the second floor of the Administration Building. Upon reaching the second floor,  you will find a stairs and when you reach seond floor, the research office is located at the south part next to the extension office of the university Administration building.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 29,
    name: 'Dr. Romualdo B. Tadena Hall',
    imageUrl: 'images/newadmin/tadena.webp',
    imageUrl2: 'images/newadmin/tadena.webp',
    description:
        'The Tadena Hall is located at the third floor of the Administration Building. You shall find it by reachig the end part of the Third floor of the University Administration Office.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 30,
    name: 'University Planning and Information Management Office(UPIM)',
    imageUrl: 'images/newadmin/upim.webp',
    imageUrl2: 'images/newadmin/upim.webp',
    description:
        'The University Planning and Information Management Office is located at second floor of the Administration Building. Upon entering, you will find a stairs and when you reach seond floor, the office on the north part is the UPIM office.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 31,
    name: 'Vice President for acedemic Affairs(VPAA)',
    imageUrl: 'images/newadmin/vpaa.webp',
    imageUrl2: 'images/newadmin/vpaa.webp',
    description:
        'The Vice President for Academic Affairs Office is located at the second floor of the Administration Building. Upon reaching the second floor, you shall see it already the first office on the left part.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 32,
    name: 'Vice President for Finance Administration(VPFAd)',
    imageUrl: 'images/newadmin/vpfad.webp',
    imageUrl2: 'images/newadmin/vpfad.webp',
    description:
        'The Vice President for Finance and Administration Office is located at the ground floor of the Administration Building. Upon entering the ground floor, just walk straight until you reach the end part. You shall see the Budget Office in front of it.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 33,
    name: 'Vice President for Research and Extension(VPRE)',
    imageUrl: 'images/newadmin/vpre.webp',
    imageUrl2: 'images/newadmin/vpre.webp',
    description:
        'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 34,
    name: 'Auditorium',
    imageUrl: 'images/spot/library.webp',
    imageUrl2: 'images/spot/library.webp',
    description:
        'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 35,
    name: 'Printing Services Office',
    imageUrl: 'images/spot/library.webp',
    imageUrl2: 'images/spot/library.webp',
    description:
        'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 36,
    name: 'Serial & Thesis Section',
    imageUrl: 'images/spot/library.webp',
    imageUrl2: 'images/spot/library.webp',
    description:
        'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 37,
    name: 'Ilocano Studies',
    imageUrl: 'images/ctech/ctechite.webp',
    imageUrl2: 'images/ctech/ctechite.webp',
    description:
        'Upon entering the Administration Building, You will see the office of the Registrar on the second office to the right part.',
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
      title: 'Admin Offices',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Offices'),
        ),
        body: ListView.builder(
          itemCount: admins.length,
          itemBuilder: (context, index) {
            // Retrieve the current College object from the list
            final admin = admins[index];
            // Return a container for each college
            return Container(
              padding: EdgeInsets.all(10.0),
              color: admin
                  .color, // Set the background color to the college's color
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Display the name of the college
                  Text(
                    admin.name,
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
                          content: Text('You clicked on ${admin.name}'),
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
