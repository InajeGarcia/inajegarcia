import 'package:flutter/material.dart';
import 'package:sharkspinpoint/colleges/cbaa.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';
import 'package:sharkspinpoint/screens/welcome_screen.dart';
import 'package:sharkspinpoint/colleges/ccit.dart';
import 'package:sharkspinpoint/colleges/carch.dart';
import 'package:sharkspinpoint/colleges/cas.dart';
import 'package:sharkspinpoint/colleges/ccje.dart';
import 'package:sharkspinpoint/colleges/ce.dart';
import 'package:sharkspinpoint/colleges/cfad.dart';
import 'package:sharkspinpoint/colleges/chs.dart';
import 'package:sharkspinpoint/colleges/chtm.dart';
import 'package:sharkspinpoint/colleges/claw.dart';
import 'package:sharkspinpoint/colleges/cmed.dart';
import 'package:sharkspinpoint/colleges/cn.dart';
import 'package:sharkspinpoint/colleges/cpad.dart';
import 'package:sharkspinpoint/colleges/csw.dart';
import 'package:sharkspinpoint/colleges/cte.dart';
import 'package:sharkspinpoint/colleges/ctech.dart';
import 'package:sharkspinpoint/colleges/ls.dart';

import 'package:firebase_core/firebase_core.dart'; // Import Firebase core

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
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
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/colleges': (context) => CollegesPage(),
        '/colleges/carch.dart': (context) => CarchPage(),
        '/colleges/cas.dart': (context) => CasPage(),
        '/colleges/cbaa.dart': (context) => CbaaPage(),
        '/colleges/ccit.dart': (context) => CcitPage(),
        '/colleges/ccje.dart': (context) => CcjePage(),
        '/colleges/ce.dart': (context) => CePage(),
        '/colleges/cfad.dart': (context) => CfadPage(),
        '/colleges/chs.dart': (context) => ChsPage(),
        '/colleges/chtm.dart': (context) => ChtmPage(),
        '/colleges/claw.dart': (context) => ClawPage(),
        '/colleges/cmed.dart': (context) => CmedPage(),
        '/colleges/cn.dart': (context) => CnPage(),
        '/colleges/cpad.dart': (context) => CpadPage(),
        '/colleges/csw.dart': (context) => CswPage(),
        '/colleges/cte.dart': (context) => CtePage(),
        '/colleges/ctech.dart': (context) => CtechPage(),
        '/colleges/ls.dart': (context) => LsPage(),
      },
    );
  }
}
