import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SingleItemScreen extends StatelessWidget {
  String img;
  SingleItemScreen(this.img);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Center(
                  child: Image.asset(
                    "images/$img.jpg",
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "UNP",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        img,
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              width: 160,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.2),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "Details",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "UNP Admin Office",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.4),
                              ),
                            ),
                            //SizedBox(height: 20),
                            //Row(
                            //  children: [
                            //    Text(
                            //      "Details: ",
                            //      style: TextStyle(
                            //        fontSize: 18,
                            //        fontWeight: FontWeight.w500,
                            //      ),
                            //    ),
                            //  ],
                            //),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
