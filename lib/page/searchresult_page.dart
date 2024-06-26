import 'package:flutter/material.dart';
import 'package:sharkspinpoint/colleges/college_details_screen.dart';
import 'package:sharkspinpoint/colleges/spot_details_screen.dart';
import 'package:sharkspinpoint/widgets/data/admin_data.dart';
import 'package:sharkspinpoint/widgets/data/college.dart';
import 'package:sharkspinpoint/widgets/data/spot_screen.dart';
import 'package:sharkspinpoint/colleges/admin_details_screen.dart';

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

    // Filter the spots list based on the normalized search query
    List<Spot> filteredSpots = spots.where((spot) {
      // Normalize the spot name by removing spaces and converting to lowercase
      String normalizedSpotName = spot.name.replaceAll(' ', '').toLowerCase();
      // Return true if the normalized spot name contains the normalized query
      return normalizedSpotName.contains(normalizedQuery);
    }).toList();

    List<Admin> filteredAdmins = admins.where((admin) {
      // Normalize the spot name by removing spaces and converting to lowercase
      String normalizedSpotName = admin.name.replaceAll(' ', '').toLowerCase();
      // Return true if the normalized spot name contains the normalized query
      return normalizedSpotName.contains(normalizedQuery);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Search Results for '$query'"),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          if (filteredColleges.isNotEmpty) ...[
            Text(
              "Colleges:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
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
            ),
          ],
          if (filteredSpots.isNotEmpty) ...[
            Text(
              "Spots:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: filteredSpots.length,
              separatorBuilder: (context, index) {
                return Divider(color: Colors.grey);
              },
              itemBuilder: (context, index) {
                final spot = filteredSpots[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: ListTile(
                    leading: Image.asset(spot.imageUrl),
                    title: Text(spot.name),
                    tileColor: spot.color.withOpacity(.5),
                    onTap: () {
                      // Navigate to the SpotDetailPage when the list item is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SpotDetailPage(spot: spot),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
          if (filteredAdmins.isNotEmpty) ...[
            Text(
              "Offices:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: filteredAdmins.length,
              separatorBuilder: (context, index) {
                return Divider(color: Colors.grey);
              },
              itemBuilder: (context, index) {
                final admin = filteredAdmins[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: ListTile(
                    leading: Image.asset(admin.imageUrl),
                    title: Text(admin.name),
                    tileColor: admin.color.withOpacity(.5),
                    onTap: () {
                      // Navigate to the SpotDetailPage when the list item is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminDetailPage(admin: admin),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
          if (filteredColleges.isEmpty &&
              filteredSpots.isEmpty &&
              filteredAdmins.isEmpty)
            Center(
              child: Text(
                "No results found",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
        ],
      ),
    );
  }
}
