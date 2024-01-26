import 'package:flutter/material.dart';
import 'package:sharkspinpoint/widgets/home_bottom_bar.dart';
import 'package:sharkspinpoint/widgets/items_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.black.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.black.withOpacity(0.5),
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Mapa latta font ko",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFA8CCF0),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Find something to Locate?",
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.8),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              TabBar(
                  controller: _tabController,
                  labelColor: Color.fromARGB(255, 2, 80, 182),
                  unselectedLabelColor:
                      const Color.fromARGB(255, 121, 121, 121).withOpacity(0.5),
                  isScrollable: true,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color.fromARGB(255, 2, 80, 182),
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 5),
                  ),
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Tab(text: "Offices"),
                    Tab(text: "Food & Drinks"),
                    Tab(text: "Spot"),
                    Tab(text: "Rooms & Utilities"),
                  ]),
              SizedBox(height: 10),
              Center(
                child: [
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                ][_tabController.index],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Home(),
    );
  }
}
