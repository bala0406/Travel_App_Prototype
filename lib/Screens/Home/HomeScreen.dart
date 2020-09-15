import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/Screens/Home/FlightsScreen.dart';
import 'package:travel_app/Widgets/Button.dart';
import 'package:travel_app/common/Styles.dart';

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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(),
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
              splashRadius: 24),
          title: SvgPicture.asset("Assets/Travel_go_title.svg",height: 18,),
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
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(64),
            child: TabBar(
              labelStyle: Styles.body1TextStyleBold,
              unselectedLabelColor: Theme.of(context).disabledColor,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  text: "Flights",
                ),
                Tab(
                  text: "Trains",
                ),
                Tab(
                  text: "Buses",
                ),
                Tab(
                  text: "Hotels",
                )
              ],
              indicatorColor: Theme.of(context).accentColor,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 0),
              indicatorWeight: 5,
            ),
          ),
        ),
       body: TabBarView(children: [
         FlightsScreen(),
         FlightsScreen(),
         FlightsScreen(),
         FlightsScreen(),
       ]),
      ),
    );
  }
}
