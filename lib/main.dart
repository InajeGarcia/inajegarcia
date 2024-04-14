import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase Core
import 'package:sharkspinpoint/screens/welcome_screen.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';
import 'package:sharkspinpoint/page/tutorial_page.dart'; // Import TutorialPage
import 'package:sharkspinpoint/screens/home_screen.dart';
//import 'package:sharkspinpoint/page/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase App
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
      ),
      // Set the initial route to the TutorialPage if you want the app to start there
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/colleges': (context) => CollegePage(),
        '/tutorial': (context) => TutorialPage(), // Add the TutorialPage route
        '/home': (context) => HomeScreen(), // Add the HomeScreen route
      },
    );
  }
}
