import 'package:flutter/material.dart';

class VehiclePath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle Path'),
      ),
      body: Center(
        child: Image.asset(
          'images/bglogo/welcome4.webp', // Replace with your image path
          width: 300, // Adjust width as needed
          height: 300, // Adjust height as needed
          fit: BoxFit.contain, // Adjust how the image fits within the container
        ),
      ),
    );
  }
}
