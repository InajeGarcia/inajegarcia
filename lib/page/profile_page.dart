// profile_page.dart

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sharkspinpoint/page/login_page.dart';
import 'package:sharkspinpoint/widgets/data/help_center.dart';
import 'package:sharkspinpoint/widgets/data/invite_friend.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userName = '';
  String userEmail = '';
  String? _storedUserImage;
  final List<String> images = [
    'images/pfp/Mash.webp',
    'images/pfp/Gojo.webp',
    'images/pfp/Cid.webp',
    'images/pfp/Aang.webp',
    'images/pfp/Itadori.webp',
    'images/pfp/rudy.webp',
    'images/pfp/Tohsaka.webp',
    'images/pfp/Utena.webp',
    'images/pfp/Saber.webp',
    'images/pfp/Sailor.webp',
    'images/pfp/Korra.webp',
    // Add more image paths as needed
  ];

  @override
  void initState() {
    super.initState();
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
          // Retrieve user's profile picture
          _storedUserImage =
              userDoc['profilePicture'] ?? 'images/pfp/pikachu.gif';
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

  // Function to change the profile picture
  void _changeProfilePicture(String imagePath) {
    if (_storedUserImage != imagePath) {
      setState(() {
        _storedUserImage = imagePath;
      });
      // Save the selected profile picture to Firestore
      User? currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser != null) {
        FirebaseFirestore.instance
            .collection('users')
            .doc(currentUser.uid)
            .update({'profilePicture': imagePath});
      }
    }
    Navigator.of(context).pop();
  }

  // Function to navigate to the Help Center
  void _goToHelpCenter() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              HelpCenterPage()), // Navigate to HelpCenter page
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 221, 154, 31),
        elevation: 0,
        toolbarHeight: 100,
        centerTitle: true,
        automaticallyImplyLeading: false,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Change Profile Picture'),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: List.generate(
                                (images.length / 3).ceil(),
                                (index) {
                                  int start = index * 3;
                                  int end = (index + 1) * 3;
                                  if (end > images.length) {
                                    end = images.length;
                                  }
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      end - start,
                                      (index) {
                                        int i = start + index;
                                        return GestureDetector(
                                          onTap: () =>
                                              _changeProfilePicture(images[i]),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CircleAvatar(
                                              radius: 30,
                                              backgroundImage:
                                                  AssetImage(images[i]),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        _storedUserImage ?? 'images/pfp/pikachu.gif'),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      userEmail,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 1,
              color: Colors.grey.shade300,
              margin: EdgeInsets.symmetric(vertical: 10),
            ),
            ListTile(
              leading:
                  Icon(Icons.person_add_alt_1_rounded, color: Colors.black),
              title: Text('Share to Friends',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          InviteFriend()), // Navigate to InviteFriend page
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.help_rounded, color: Colors.black),
              title: Text('Help Center',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: _goToHelpCenter, // Call the Help Center function
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.black),
              title: Text('Version 1.0.0',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                // Show Version
              },
            ),
            ListTile(
              leading: Icon(Icons.logout_rounded, color: Colors.red),
              title: Text('Logout',
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold)),
              onTap: _logout,
            ),
          ],
        ),
      ),
    );
  }
}
