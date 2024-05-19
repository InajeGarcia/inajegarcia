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
    description: '',
    color: Color.fromARGB(255, 10, 76, 197),
  ),
  Admin(
    id: 2,
    name: 'Admission Services',
    imageUrl: 'images/newadmin/admission.webp',
    imageUrl2: 'images/newadmin/admission.webp',
    description: '',
    color: Color.fromARGB(255, 122, 7, 55),
  ),
  Admin(
    id: 3,
    name: 'Agribusiness Office',
    imageUrl: 'images/newadmin/agribusiness.webp',
    imageUrl2: 'images/newadmin/agribusiness.webp',
    description: '',
    color: Color.fromARGB(255, 180, 21, 21),
  ),
  Admin(
    id: 4,
    name: 'Office of the University Board Secretary',
    imageUrl: 'images/newadmin/boardsec.webp',
    imageUrl2: 'images/newadmin/boardsec.webp',
    description: '',
    color: Color.fromARGB(255, 255, 233, 34),
  ),
  Admin(
    id: 5,
    name: 'Budget Office',
    imageUrl: 'images/newadmin/budget.webp',
    imageUrl2: 'images/newadmin/budget.webp',
    description: '',
    color: Color.fromARGB(255, 212, 15, 91),
  ),
  //////////////////////////////////
  Admin(
    id: 6,
    name: 'Cashiering Unit',
    imageUrl: 'images/newadmin/cashier.webp',
    imageUrl2: 'images/newadmin/cashier.webp',
    description: '',
    color: Color.fromARGB(255, 109, 2, 77),
  ),
  Admin(
    id: 7,
    name: 'Center for Gender and Development(CGAD)',
    imageUrl: 'images/newadmin/cgad.webp',
    imageUrl2: 'images/newadmin/cgad.webp',
    description: '',
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
    description: '',
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
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 12,
    name: 'Office of the Faculty Union',
    imageUrl: 'images/newadmin/facultyunion.webp',
    imageUrl2: 'images/newadmin/facultyunion.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 13,
    name: 'Office of the UNP Federated Alumni Association',
    imageUrl: 'images/newadmin/fedalumni.webp',
    imageUrl2: 'images/newadmin/fedalumni.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 14,
    name: 'Office of the Director Financial Services Division',
    imageUrl: 'images/newadmin/finance.webp',
    imageUrl2: 'images/newadmin/finance.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 15,
    name: 'Human Resource and Management Office(HRMO)',
    imageUrl: 'images/newadmin/hrmo.webp',
    imageUrl2: 'images/newadmin/hrmo.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 16,
    name: 'Internal Control Office(ICO)',
    imageUrl: 'images/newadmin/ico.webp',
    imageUrl2: 'images/newadmin/ico.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 17,
    name: 'Instruction & Faculty Development Office',
    imageUrl: 'images/newadmin/instruction.webp',
    imageUrl2: 'images/newadmin/instruction.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 18,
    name:
        'Information Technology Infrastructure Management and Development Services Office',
    imageUrl: 'images/newadmin/infotech.webp',
    imageUrl2: 'images/newadmin/infotech.webp',
    description: '',
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
    description: '',
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
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 23,
    name: 'Office of the President(OP)',
    imageUrl: 'images/newadmin/op.webp',
    imageUrl2: 'images/newadmin/op.webp',
    description: '',
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
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 26,
    name: 'Records Office',
    imageUrl: 'images/newadmin/records.webp',
    imageUrl2: 'images/newadmin/records.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 27,
    name: 'Office of the Registrar',
    imageUrl: 'images/newadmin/registrar.webp',
    imageUrl2: 'images/newadmin/registrar.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),

  Admin(
    id: 28,
    name: 'University Research Office',
    imageUrl: 'images/newadmin/research.webp',
    imageUrl2: 'images/newadmin/research.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 29,
    name: 'Dr. Romualdo B. Tadena Hall',
    imageUrl: 'images/newadmin/tadena.webp',
    imageUrl2: 'images/newadmin/tadena.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 30,
    name: 'University Planning and Information Management Office(UPIM)',
    imageUrl: 'images/newadmin/upim.webp',
    imageUrl2: 'images/newadmin/upim.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 31,
    name: 'Vice President for acedemic Affairs(VPAA)',
    imageUrl: 'images/newadmin/vpaa.webp',
    imageUrl2: 'images/newadmin/vpaa.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 32,
    name: 'Vice President for Finance Administration(VPFAd)',
    imageUrl: 'images/newadmin/vpfad.webp',
    imageUrl2: 'images/newadmin/vpfad.webp',
    description: '',
    color: Color.fromARGB(255, 255, 99, 17),
  ),
  Admin(
    id: 33,
    name: 'Vice President for Research and Extension(VPRE)',
    imageUrl: 'images/newadmin/vpre.webp',
    imageUrl2: 'images/newadmin/vpre.webp',
    description: '',
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
