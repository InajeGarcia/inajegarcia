import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math'; // For random image selection
import 'login_page.dart'; // Import the LoginPage

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userName = '';
  String userEmail = '';
  String userImage = 'images/pfp1.jpg'; // Set a default random image path
  final List<String> images = [
    'images/pfp1.jpg',
    'images/pfp2.jpg',
    'images/pfp3.jpg',
    // Add more image paths as needed
  ];

  @override
  void initState() {
    super.initState();
    // Select a random image from the list
    userImage = images[Random().nextInt(images.length)];
    // Load user information
    _loadUserInfo();
  }

  Future<void> _loadUserInfo() async {
    // Get the current user
    User? currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      // Fetch user information from Firestore
      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser.uid)
          .get();

      if (userDoc.exists) {
        setState(() {
          // Retrieve user's first and last name
          String firstName = userDoc['firstName'];
          String lastName = userDoc['lastName'];
          userName = '$firstName $lastName';
          // Retrieve user's email (optional)
          userEmail = userDoc['email'];
        });
      }
    }
  }

  // Logout function
  void _logout() {
    // Log the user out
    FirebaseAuth.instance.signOut();
    // Navigate back to the login page
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const LoginPage(title: 'Login UI'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 221, 154, 31),
        automaticallyImplyLeading: false,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
      ),
      body: Center(
        // Wrap the content in a Center widget
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the random image and name
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Display the profile image at the center
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CircleAvatar(
                    radius: 75, // Adjust the radius as needed
                    backgroundImage: AssetImage(userImage),
                  ),
                ),
                // Display the user's name right below the image
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    userName,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
            // Display user's email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                userEmail,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            // Logout button
            ElevatedButton(
              onPressed: _logout,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Text(
                'Logout',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
