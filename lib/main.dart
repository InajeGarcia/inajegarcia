import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth
import 'package:sharkspinpoint/screens/welcome_screen.dart';
import 'package:sharkspinpoint/screens/home_screen.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';
import 'package:sharkspinpoint/page/tutorial_page.dart';

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
      // Set the initial route to '/' and use onGenerateRoute for custom routing
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        // Check if the user is authenticated
        User? user = FirebaseAuth.instance.currentUser;

        // Determine which screen to navigate to based on authentication status
        if (user != null) {
          // If user is authenticated, navigate to HomeScreen
          return MaterialPageRoute(builder: (context) => HomeScreen());
        } else {
          // If user is not authenticated, navigate to WelcomeScreen
          return MaterialPageRoute(builder: (context) => WelcomeScreen());
        }
      },
      routes: {
        '/colleges': (context) => CollegePage(),
        '/tutorial': (context) => TutorialPage(),
      },
    );
  }
}
