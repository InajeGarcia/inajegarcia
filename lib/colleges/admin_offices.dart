import 'package:flutter/material.dart';
import 'package:sharkspinpoint/offices/adminbuilding.dart';

class AdminOfficesPage extends StatelessWidget {
  const AdminOfficesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Offices'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // First Floor
              GestureDetector(
                onTap: () {
                  // Redirect to First Floor page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstFloorPage()),
                  );
                },
                child: Column(
                  children: [
                    Text(
                      'First Floor',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        'images/admin.jpg',
                        width: 300,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Second Floor
              GestureDetector(
                onTap: () {
                  // Redirect to Second Floor page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondFloorPage()),
                  );
                },
                child: Column(
                  children: [
                    Text(
                      'Second Floor',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        'images/admin.jpg',
                        width: 300,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Third Floor
              GestureDetector(
                onTap: () {
                  // Redirect to Third Floor page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdFloorPage()),
                  );
                },
                child: Column(
                  children: [
                    Text(
                      'Third Floor',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        'images/admin.jpg',
                        width: 300,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
