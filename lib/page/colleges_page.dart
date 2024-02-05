import 'package:flutter/material.dart';
import 'package:sharkspinpoint/colleges/college_details_screen.dart'; // Import the new file

class College {
  final String name;
  final String imagePath;

  College(this.name, this.imagePath);
}

class CollegesPage extends StatelessWidget {
  final List<College> colleges = [
    College('College of Architecture', 'images/carch.png'),
    College('College of Arts and Sciences', 'images/cas.jpg'),
    College('College of Business Administration and Accountancy',
        'images/cbaa.jpg'),
    College('College of Communication and Information Technology',
        'images/ccit.jpg'),
    College('College of Criminal Justice Education', 'images/ccje.png'),
    College('College of Engineering', 'images/ce.jpg'),
    College('College of Fine Arts and Design', 'images/cfad.jpg'),
    College('College of Health Science', 'images/cn.jpg'),
    College('College of Hospitality and Tourism Management', 'images/chtm.jpg'),
    College('College of Law', 'images/claw.jpg'),
    College('College of Medicine', 'images/cmed.jpg'),
    College('College of Nursing', 'images/cn.jpg'),
    College('College of Public Administration', 'images/cpad.jpg'),
    College('College of Social Work', 'images/csw.jpg'),
    College('College of Teacher Education', 'images/cte.jpg'),
    College('College of Technology', 'images/ctech.png'),
    College('Laboratory School', 'images/ls.png'),
    // Add more colleges with respective image paths
  ];

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
          backgroundColor: Color.fromARGB(255, 26, 99, 194),
          automaticallyImplyLeading: false,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: colleges.length,
          itemBuilder: (context, index) {
            final college = colleges[index];
            Color boxColor = Color(0xFFC1E1C1);

            return InkWell(
              onTap: () {
                navigateToCollegeDetails(context, college);
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

  void navigateToCollegeDetails(BuildContext context, College college) {
    // Use a switch statement to navigate to the appropriate college details screen
    switch (college.name) {
      case 'College of Architecture':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'carch.dart'),
          ),
        );
        break;
      case 'College of Arts and Sciences':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'cas.dart'),
          ),
        );
        break;
      case 'College of Business Administration and Accountancy':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'cbaa.dart'),
          ),
        );
        break;
      case 'College of Communication and Information Technology':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'ccit.dart'),
          ),
        );
        break;
      case 'College of Criminal Justice Education':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'ccje.dart'),
          ),
        );
        break;
      case 'College of Engineering':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'ce.dart'),
          ),
        );
        break;
      case 'College of Fine Arts and Design':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'cfad.dart'),
          ),
        );
        break;
      case 'College of Health and Science':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'chs.dart'),
          ),
        );
        break;
      case 'College of Law':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'claw.dart'),
          ),
        );
        break;
      case 'College of Medicine':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'cmed.dart'),
          ),
        );
        break;
      case 'College of Nursing':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'cn.dart'),
          ),
        );
        break;
      case 'College of Public Administration':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'cpad.dart'),
          ),
        );
        break;
      case 'College of Social Work':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'csw.dart'),
          ),
        );
        break;
      case 'College of Teacher Education':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'cte.dart'),
          ),
        );
        break;
      case 'College of Technology':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'ctech.dart'),
          ),
        );
        break;
      case 'Laboratory School':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CollegeDetailsScreen(college, 'ls.dart'),
          ),
        );
      default:
        break;
    }
  }
}
