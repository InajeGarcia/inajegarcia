import 'package:flutter/material.dart';
import 'package:sharkspinpoint/colleges/spot_details_screen.dart';
import 'package:sharkspinpoint/widgets/data/spot_screen.dart';
// Import the detail page

class SpotPage extends StatelessWidget {
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
        backgroundColor: Color.fromARGB(255, 5, 128, 36),
        automaticallyImplyLeading: false,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: spots.length,
        itemBuilder: (BuildContext context, int index) {
          Spot spot = spots[index];
          return GestureDetector(
            onTap: () {
              // Navigate to detail page when a spot item is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SpotDetailPage(spot: spot),
                ),
              );
            },
            child: Card(
              child: ListTile(
                leading: Image.asset(
                  spot.imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                title: Text(spot.name),
              ),
            ),
          );
        },
      ),
    );
  }
}
