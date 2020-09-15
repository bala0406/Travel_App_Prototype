import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/Screens/Home/FlightsScreen.dart';
import 'package:travel_app/common/Styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              accountName: Text(
                "Bala Ganesh".toUpperCase(),
              ),
              currentAccountPicture: CircleAvatar(
                  child: Text(
                "Bala Ganesh".toUpperCase()[0],
                style: TextStyle(fontSize: 32),
              )),
              accountEmail: Text("balaganesh12.12@outlook.com"),
            ),
            InkWell(
              splashFactory: InkRipple.splashFactory,
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.flight,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  "Track a Flight",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            InkWell(
              splashFactory: InkRipple.splashFactory,
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.train,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  "Track a Train",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            InkWell(
              splashFactory: InkRipple.splashFactory,
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.directions_bus,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  "Track a Bus",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            InkWell(
              splashFactory: InkRipple.splashFactory,
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.history,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  "History",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            InkWell(
              splashFactory: InkRipple.splashFactory,
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.local_offer,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  "Offers",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            Divider(
              thickness: 0.2,
              color: Theme.of(context).primaryColor,
            ),
            InkWell(
              splashFactory: InkRipple.splashFactory,
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  "Settings",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            InkWell(
              splashFactory: InkRipple.splashFactory,
              onTap: () {},
              child: ListTile(
                leading: SvgPicture.asset(
                  "Assets/Icons/contact_support-24px.svg",
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  "Support",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            InkWell(
              splashFactory: InkRipple.splashFactory,
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.local_offer,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  "Offers",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ]),
        ),
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
              splashRadius: 24),
          title: SvgPicture.asset(
            "Assets/Travel_go_title.svg",
            height: 18,
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
