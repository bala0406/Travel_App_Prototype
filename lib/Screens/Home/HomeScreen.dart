import 'package:flutter/material.dart';
import 'package:travel_app/Widgets/Button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
            splashRadius: 24),
        title: Text(
          "TRAVEL GO",
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
              onPressed: () {},
              splashRadius: 24)
        ],
      ),
      body: Column(
        children: [
          Container(
            height: height / 16,
            width: width,
            color: Theme.of(context).primaryColor,
          ),
          Column(
            //body
            children: [
              Row(
                // 1st row
                children: [
                  Column(), // from
                  // Swap button
                  Column(), // to
                ],
              ),

              // one-way / round trip

              Row(
                //third row
                children: [
                  Column(), //departure
                  Column(), //return
                ],
              ),
              Row(
                //fourth row
                children: [
                  Column(), //traveller
                  Column(), //class
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: button(
                  text: "SEARCH FLIGHTS",
                  context: context,
                  color: Colors.white,
                  textStyle: Theme.of(context).textTheme.bodyText1,
                  onTap: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
