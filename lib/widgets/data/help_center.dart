// help_center.dart

import 'package:flutter/material.dart';

class HelpCenterPage extends StatelessWidget {
  final List<Map<String, String>> faq = [
    {
      'question': 'How do I change my profile picture?',
      'answer': 'To change your profile picture, tap on your current picture '
          'in the profile page and select a new picture from the list.'
    },
    {
      'question': 'How do I invite a friend?',
      'answer': 'To invite a friend, tap on the "Invite a Friend" option '
          'in the profile page and follow the instructions.'
    },
    {
      'question': 'How do I log out?',
      'answer': 'To log out, tap on the "Logout" option at the bottom of the '
          'profile page.'
    },
    {
      'question': 'How do I get help if I have a problem?',
      'answer': 'If you encounter any problems, you can visit our Help Center '
          'or contact our support team at garciainaje@gmail.com.'
    },
    {
      'question': 'How do I update my profile information?',
      'answer':
          "You don't need to update any information into this Application. But, you can edit your profile picture into something you want by tapping the profile picture and select the Image that you want to pick."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'images/bglogo/11.png',
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
      body: ListView.builder(
        itemCount: faq.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ExpansionTile(
              title: Text(
                faq[index]['question']!,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    faq[index]['answer']!,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
