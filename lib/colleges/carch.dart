import 'package:flutter/material.dart';
import 'package:sharkspinpoint/page/colleges_page.dart';

class CarchCollege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Modify the college name based on your requirement
        navigateToCollegeDetails(context, 'College of Architecture');
      },
      child: Text('Navigate to College of Architecture Details'),
    );
  }

  // Function to initiate navigation
  void navigateToCollegeDetails(BuildContext context, String collegeName) {
    // Find the college in the list based on the name
    final selectedCollege = CollegesPage()
        .colleges
        .firstWhere((college) => college.name == collegeName);

    if (selectedCollege != null) {
      // Navigate to CollegeDetailsScreen and pass the selected college
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CollegeDetailsScreen(selectedCollege),
        ),
      );
    } else {
      // Handle case where the college is not found
      print('College not found: $collegeName');
    }
  }
}
