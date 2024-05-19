import 'package:flutter/material.dart';
import 'package:sharkspinpoint/offices/accounting.dart';
import 'package:sharkspinpoint/offices/admission.dart';
import 'package:sharkspinpoint/offices/agribusiness.dart';
import 'package:sharkspinpoint/offices/boardsec.dart';
import 'package:sharkspinpoint/offices/budget.dart';
import 'package:sharkspinpoint/offices/cashier.dart';
import 'package:sharkspinpoint/offices/cgad.dart';
import 'package:sharkspinpoint/offices/chiefadmin.dart';
import 'package:sharkspinpoint/offices/coa.dart';
import 'package:sharkspinpoint/offices/compmaintenance.dart';
import 'package:sharkspinpoint/offices/extension.dart';
import 'package:sharkspinpoint/offices/facultyunion.dart';
import 'package:sharkspinpoint/offices/fedalumni.dart';
import 'package:sharkspinpoint/offices/financialservice.dart';
import 'package:sharkspinpoint/offices/hrmo.dart';
import 'package:sharkspinpoint/offices/ico.dart';
import 'package:sharkspinpoint/offices/ifd.dart';
import 'package:sharkspinpoint/offices/infotech.dart';
import 'package:sharkspinpoint/offices/instruction.dart';
import 'package:sharkspinpoint/offices/legal.dart';
import 'package:sharkspinpoint/offices/networks.dart';
import 'package:sharkspinpoint/offices/nstp.dart';
import 'package:sharkspinpoint/offices/oandasan.dart';
import 'package:sharkspinpoint/offices/op.dart';
import 'package:sharkspinpoint/offices/records.dart';
import 'package:sharkspinpoint/offices/registrar.dart';
import 'package:sharkspinpoint/offices/research.dart';
import 'package:sharkspinpoint/offices/tadena.dart';
import 'package:sharkspinpoint/offices/upim.dart';
import 'package:sharkspinpoint/offices/vpaa.dart';
import 'package:sharkspinpoint/offices/vpfad.dart';
import 'package:sharkspinpoint/offices/vpre.dart';

import 'package:sharkspinpoint/page/map_page.dart';

import '../widgets/data/admin_data.dart';

class AdminDetailPage extends StatelessWidget {
  final Admin admin;

  AdminDetailPage({required this.admin});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          admin.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 5, 128, 36),
                Color.fromARGB(255, 17, 44, 163),
                Color.fromARGB(255, 221, 154, 31),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  admin.imageUrl2,
                  width: 350,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      admin.name,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Description:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      admin.description,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /*ElevatedButton(
                          onPressed: () {
                            // Navigate to MapPage with the selectedVertexId based on college name
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MapPage(selectedVertexId: admin.name),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Text(
                            'View on Map',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Define navigation based on college name
                            if (admin.name == 'Admission Services') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ADmission(),
                                ),
                              );
                            } else if (admin.name == 'Records Office') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => REcords(),
                                ),
                              );
                            } else if (admin.name ==
                                'Office of the Registrar') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => REgistrar(),
                                ),
                              );
                            } else if (admin.name == 'Cashiering Unit') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CAshier(),
                                ),
                              );
                            } else if (admin.name == 'Commission on Audit') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => COA(),
                                ),
                              );
                            } else if (admin.name == 'Accounting Office') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ACcounting(),
                                ),
                              );
                            } else if (admin.name ==
                                'Office of the Director Financial Services Division') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FInancialservices(),
                                ),
                              );
                            } else if (admin.name == 'Budget Office') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BUdget(),
                                ),
                              );
                            } else if (admin.name ==
                                'Vice President of Financial Administration') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VPfad(),
                                ),
                              );
                              //////////////////////////////////////////////
                            } else if (admin.name ==
                                'University Planning and Information System Management') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UPim(),
                                ),
                              );
                            } else if (admin.name ==
                                'Center for Gender and Development') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CGad(),
                                ),
                              );
                            } else if (admin.name ==
                                'Network System and Operations Services') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NEtworks(),
                                ),
                              );
                            } else if (admin.name ==
                                'Vice President for Academic Affairs') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VPaa(),
                                ),
                              );
                            } else if (admin.name ==
                                'Office of the Chief Administrative Officer') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CHiefadmin(),
                                ),
                              );
                            } else if (admin.name ==
                                'Human Resource Management Office') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HRmo(),
                                ),
                              );
                            } else if (admin.name ==
                                'University Extension Office') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EXtension(),
                                ),
                              );
                            } else if (admin.name ==
                                'University Research Office') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => REsearch(),
                                ),
                              );
                            } else if (admin.name ==
                                'Vice President for Research and Extension') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VPre(),
                                ),
                              );
                            } else if (admin.name ==
                                'University Computer Maintenance Services') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => COmpmaintenance(),
                                ),
                              );
                            } else if (admin.name ==
                                'Instruction and Faculty Development Office') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => INstruction(),
                                ),
                              );
                            } else if (admin.name ==
                                'National Service Training Program') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NStp(),
                                ),
                              );
                            } else if (admin.name == 'Agribusiness Office') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AGribusiness(),
                                ),
                              );
                            } else if (admin.name ==
                                'Instruction & Faculty Development Office') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => IFd(),
                                ),
                              );
                              ///////////////////////////////////
                            } else if (admin.name == 'Faculty Union Office') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FAcultyunion(),
                                ),
                              );
                            } else if (admin.name ==
                                'Office of the UNP Federated Alumni Association') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FEdalumni(),
                                ),
                              );
                            } else if (admin.name ==
                                'Office of the University Board Secretary') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BOardsec(),
                                ),
                              );
                            } else if (admin.name ==
                                'Dr. Romualdo Tadena Hall') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TAdena(),
                                ),
                              );
                            } else if (admin.name ==
                                'Internal Control Office') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ICo(),
                                ),
                              );
                            } else if (admin.name ==
                                'Information Technology Infrastructure Management and Development Services Office') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => INfotech(),
                                ),
                              );
                            } else if (admin.name ==
                                'Office of the President') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OP(),
                                ),
                              );
                            } else if (admin.name == 'Oandasan Room') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OAndasan(),
                                ),
                              );
                            } else if (admin.name ==
                                'University Legal Office') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LEgal(),
                                ),
                              );
                            }

                            // Add more conditions for other colleges as needed
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Text(
                            'View Rooms',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),*/
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
