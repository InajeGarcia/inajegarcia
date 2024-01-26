import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            image: AssetImage("images/welcome.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Explore",
              style: GoogleFonts.openSans(
                fontSize: 50,
                color: Color(0xFF0045A0),
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
            ),
            Column(
              children: [
                SizedBox(height: 80),
                Material(
                  color: Color.fromARGB(255, 0, 158, 82),
                  borderRadius: BorderRadius.circular(40),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 140),
                      // Adjust the vertical padding as needed
                      child: Text(
                        "Explore",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
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
