import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/spot_page.dart';

class SpotDetailsScreen extends StatelessWidget {
  final Spot spots;
  final String dartFileName; // Add this new variable

  SpotDetailsScreen(this.spots, this.dartFileName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spot Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              spots.imagePath,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text('${spots.name}'),
            ElevatedButton(
              onPressed: () {
                // Use the dartFileName to dynamically import the correct Dart file
                Navigator.pushNamed(context, '/spots/$dartFileName');
              },
              child: Text('View Full Information'),
            ),
          ],
        ),
      ),
    );
  }
}
