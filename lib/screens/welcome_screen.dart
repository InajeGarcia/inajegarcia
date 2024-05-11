import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth
import 'package:sharkspinpoint/page/login_page.dart';
import 'package:sharkspinpoint/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          color: Color(0xFF0045A0),
          image: DecorationImage(
            image: AssetImage("images/bglogo/welcome1.webp"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 500),
                Material(
                  color: Color.fromARGB(255, 0, 158, 82),
                  borderRadius: BorderRadius.circular(40),
                  child: InkWell(
                    onTap: () async {
                      User? user = FirebaseAuth.instance.currentUser;
                      if (user != null) {
                        // If user is authenticated, navigate to HomeScreen
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      } else {
                        // If user is not authenticated, navigate to LoginPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(title: 'Login UI'),
                          ),
                        );
                      }
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 100),
                      child: Text(
                        "Explore",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
