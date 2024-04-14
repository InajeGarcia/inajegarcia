import 'package:flutter/material.dart';
import 'package:sharkspinpoint/colleges/college_details_screen.dart';
import 'package:sharkspinpoint/widgets/data/college.dart';

class SearchResultPage extends StatelessWidget {
  final String query;

  SearchResultPage({required this.query});

  @override
  Widget build(BuildContext context) {
    // Normalize the search query by removing spaces and converting to lowercase
    String normalizedQuery = query.replaceAll(' ', '').toLowerCase();

    // Filter the colleges list based on the normalized search query
    List<College> filteredColleges = colleges.where((college) {
      // Normalize the college name by removing spaces and converting to lowercase
      String normalizedCollegeName =
          college.name.replaceAll(' ', '').toLowerCase();
      // Return true if the normalized college name contains the normalized query
      return normalizedCollegeName.contains(normalizedQuery);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Search Results for '$query'"),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: filteredColleges.isNotEmpty
          ? ListView.separated(
              itemCount: filteredColleges.length,
              separatorBuilder: (context, index) {
                return Divider(color: Colors.grey);
              },
              itemBuilder: (context, index) {
                final college = filteredColleges[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: ListTile(
                    leading: Image.asset(college.imageUrl),
                    title: Text(college.name),
                    tileColor: college.color.withOpacity(.5),
                    onTap: () {
                      // Navigate to the CollegeDetailPage when the list item is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CollegeDetailPage(college: college),
                        ),
                      );
                    },
                  ),
                );
              },
            )
          : Center(
              child: Text(
                "No results found",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
    );
  }
}
