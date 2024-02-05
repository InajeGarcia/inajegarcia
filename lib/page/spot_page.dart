import 'package:flutter/material.dart';
import 'package:sharkspinpoint/colleges/spot_details_screen.dart';

class Spot {
  final String name;
  final String imagePath;

  Spot(this.name, this.imagePath);
}

class SpotPage extends StatelessWidget {
  final List<Spot> spots = [
    Spot('Library', 'images/carch.png'),
    Spot('Church', 'images/cas.jpg'),
    Spot('Gymnasium', 'images/gymnasium.jpg'),
    Spot('Ladies Dormitory', 'images/ladiesdorm.jpg'),
  ];

//class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Center(
            child: Image.asset(
              'images/11.png',
              height: 250,
              width: 300,
              fit: BoxFit.contain,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 43, 163, 105),
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
          itemBuilder: (context, index) {
            final college = spots[index];
            Color boxColor = Color(0xFFC1E1C1);

            return InkWell(
              onTap: () {
                navigateToSpotDetails(context, college);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                margin: EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    college.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 51, 51, 51),
                    ),
                  ),
                  subtitle: Text("• ${college.name}"),
                  leading: Image.asset(
                    college.imagePath,
                    width: 56,
                    height: 56,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      );

  void navigateToSpotDetails(BuildContext context, Spot spots) {
    switch (spots.name) {
      case 'College of Architecture':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpotDetailsScreen(spots, 'carch.dart'),
          ),
        );
        break;
      case 'College of Arts and Sciences':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpotDetailsScreen(spots, 'cas.dart'),
          ),
        );
        break;
      case 'College of Business Administration and Accountancy':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpotDetailsScreen(spots, 'cbaa.dart'),
          ),
        );
        break;
      case 'College of Communication and Information Technology':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpotDetailsScreen(spots, 'ccit.dart'),
          ),
        );
        break;
      case 'College of Criminal Justice Education':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpotDetailsScreen(spots, 'ccje.dart'),
          ),
        );
        break;
      default:
        break;
    }
  }
}
