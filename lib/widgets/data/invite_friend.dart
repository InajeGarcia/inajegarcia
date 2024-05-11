import 'package:flutter/material.dart';

class InviteFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'images/bglogo/11.webp',
            height: 250,
            width: 300,
            fit: BoxFit.contain,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 28, 151, 3),
        automaticallyImplyLeading: false,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Image.asset(
            'images/bglogo/Sharks Pinpoint.webp',
            height: 300,
            width: 300,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
