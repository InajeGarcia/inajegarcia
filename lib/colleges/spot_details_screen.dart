import 'package:flutter/material.dart';

import 'package:sharkspinpoint/page/map_page.dart';
import 'package:sharkspinpoint/spots/admin.dart';
import 'package:sharkspinpoint/spots/canteenback.dart';
import 'package:sharkspinpoint/spots/canteenccit.dart';
import 'package:sharkspinpoint/spots/ceramic.dart';
import 'package:sharkspinpoint/spots/chapel.dart';
import 'package:sharkspinpoint/spots/elementary.dart';
import 'package:sharkspinpoint/spots/foundersplaza.dart';
import 'package:sharkspinpoint/spots/grandstand.dart';
import 'package:sharkspinpoint/spots/groceria.dart';
import 'package:sharkspinpoint/spots/guestel.dart';
import 'package:sharkspinpoint/spots/guestelcanteen.dart';
import 'package:sharkspinpoint/spots/gym.dart';
import 'package:sharkspinpoint/spots/hostel.dart';
import 'package:sharkspinpoint/spots/ite.dart';
import 'package:sharkspinpoint/spots/ladiesdorm.dart';
import 'package:sharkspinpoint/spots/lagoon.dart';
import 'package:sharkspinpoint/spots/library.dart';
import 'package:sharkspinpoint/spots/mensdorm.dart';
import 'package:sharkspinpoint/spots/motorpool.dart';
import 'package:sharkspinpoint/spots/oval.dart';
import 'package:sharkspinpoint/spots/parkingarea.dart';
import 'package:sharkspinpoint/spots/pio.dart';
import 'package:sharkspinpoint/spots/property.dart';
import 'package:sharkspinpoint/spots/sciencecomplex.dart';
import 'package:sharkspinpoint/spots/studentcenter.dart';
import 'package:sharkspinpoint/spots/studentshed.dart';
import 'package:sharkspinpoint/spots/tower.dart';
import 'package:sharkspinpoint/spots/trainingcenter.dart';
import 'package:sharkspinpoint/widgets/data/spot_screen.dart';

class SpotDetailPage extends StatelessWidget {
  final Spot spot;

  SpotDetailPage({required this.spot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          spot.name,
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
                  spot.imageUrl2,
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
                      spot.name,
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
                      spot.description,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Navigate to MapPage with the selectedVertexId based on college name
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MapPage(selectedVertexId: spot.name),
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
                            if (spot.name == 'Administration Building') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Admin(),
                                ),
                              );
                            } else if (spot.name == 'Canteen(Back)') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CanteenBack(),
                                ),
                              );
                            } else if (spot.name == 'Canteen(Beside CCIT)') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CanteenCcit(),
                                ),
                              );
                            } else if (spot.name == 'Ceramic Center') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Ceramic(),
                                ),
                              );
                            } else if (spot.name == 'Chapel') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Chapel(),
                                ),
                              );
                            } else if (spot.name == 'Elementary') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Elementary(),
                                ),
                              );
                            } else if (spot.name == 'Founders Plaza') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Founders(),
                                ),
                              );
                            } else if (spot.name == 'Grandstand') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Grandstand(),
                                ),
                              );
                            } else if (spot.name == 'Groceria') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Groceria(),
                                ),
                              );
                            } else if (spot.name == 'Guestel') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Guestel(),
                                ),
                              );
                            } else if (spot.name == 'Guestel Canteen') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GuestelCanteen(),
                                ),
                              );
                            } else if (spot.name == 'Gym') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Gymn(),
                                ),
                              );
                            } else if (spot.name == 'Hostel') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Hostel(),
                                ),
                              );
                            } else if (spot.name == 'C-Tech/ITE') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Ite(),
                                ),
                              );
                            } else if (spot.name == 'Ladies Dormitory') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Ladies(),
                                ),
                              );
                            } else if (spot.name == 'Lagoon') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Lagoon(),
                                ),
                              );
                            } else if (spot.name == 'Library') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Library(),
                                ),
                              );
                            } else if (spot.name == 'Mens Dormitory') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Mens(),
                                ),
                              );
                            } else if (spot.name == 'Motorpool') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Motorpool(),
                                ),
                              );
                            } else if (spot.name == 'Oval') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Oval(),
                                ),
                              );
                            } else if (spot.name ==
                                'Parking Area(Heavy Vehicles)') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Parking(),
                                ),
                              );
                            } else if (spot.name == 'PIO/Quality Assurance') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Pio(),
                                ),
                              );
                            } else if (spot.name == 'Property Office') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Property(),
                                ),
                              );
                            } else if (spot.name == 'Science Complex') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SciComplex(),
                                ),
                              );
                            } else if (spot.name == 'Student Center') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StudentCenter(),
                                ),
                              );
                            } else if (spot.name == 'Student Shed') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Shed(),
                                ),
                              );
                            } else if (spot.name == 'Iconic Eifiel Tower') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Tower(),
                                ),
                              );
                            } else if (spot.name == ' Training Center') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Training(),
                                ),
                              );
                            }

                            // Add more conditions for other colleges as needed
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Text(
                            'View',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
