import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:travel_app/Screens/Home/SearchResults/SearchResultsScreen.dart';
import 'package:travel_app/Widgets/Button.dart';
import 'package:travel_app/common/Styles.dart';

class FlightsScreen extends StatefulWidget {
  @override
  _FlightsScreenState createState() => _FlightsScreenState();
}

class _FlightsScreenState extends State<FlightsScreen> {
  int _selectedToggleTab = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFromAndToButton(
                  context: context,
                  city: "BENGALURU",
                  cityShort: "BLR",
                  toOrFrom: ToOrFrom.FROM,
                  onTap: () {}),
              SizedBox(
                width: 16,
              ),
              _buildCitySwapButton(context),
              SizedBox(
                width: 16,
              ),
              _buildFromAndToButton(
                  context: context,
                  city: "MADURAI",
                  cityShort: "MDU",
                  toOrFrom: ToOrFrom.TO,
                  onTap: () {}),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          _buildTravelTypeToggle(),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DEPARTURE",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  _buildDepartureReturnButton(
                      onTap: () {},
                      width: width,
                      context: context,
                      date: "13",
                      day: "Thursday",
                      month: "AUG")
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "RETURN",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  _buildDepartureReturnButton(
                      onTap: () {},
                      width: width,
                      context: context,
                      date: "15",
                      day: "Saturday",
                      month: "AUG")
                ],
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "TRAVELLER",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  _buildTravellerButton(width: width, context: context)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CLASS",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  _buildClassButton(
                      width: width,
                      context: context,
                      classType: ClassType.economy)
                ],
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: button(
                text: "SEARCH FLIGHTS",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchResultsScreen()));
                },
                color: Theme.of(context).accentColor,
                textStyle: Theme.of(context).textTheme.button,
                context: context),
          ),
        ],
      ),
    );
  }

  //This method is used to swap the selected cities in from and to
  Widget _buildCitySwapButton(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.black12,
        child: InkWell(
          splashFactory: InkRipple.splashFactory,
          onTap: () {},
          child: SizedBox(
            height: 48,
            width: 48,
            child: Icon(
              Icons.swap_horiz,
              size: 32,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }

  //this method is used to toggle between one way or round trip
  Widget _buildTravelTypeToggle() {
    return FlutterToggleTab(
      width: 90,
      height: 36,
      initialIndex: 0,
      selectedIndex: _selectedToggleTab,
      selectedTextStyle:
          Styles.body2TextStyleBold.copyWith(color: Colors.white),
      unSelectedTextStyle: Styles.body2TextStyleBold,
      labels: ["ONE WAY", "ROUND TRIP"],
      selectedLabelIndex: (index) {
        setState(() {
          _selectedToggleTab = index;
        });
      },
    );
  }

  // This method is used to select the to and from cities
  Widget _buildFromAndToButton(
      {BuildContext context,
      ToOrFrom toOrFrom,
      String cityShort,
      String city,
      Function onTap}) {
    return InkWell(
      onTap: onTap,
      splashFactory: InkRipple.splashFactory,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              toOrFrom == ToOrFrom.FROM ? "FROM" : "TO",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              cityShort,
              style:
                  Theme.of(context).textTheme.headline1.copyWith(fontSize: 40),
            ),
            Text(
              city,
              style:
                  Theme.of(context).textTheme.headline3.copyWith(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  //This method is used to select the type of class in which the user wants to travel
  Widget _buildClassButton(
      {double width, BuildContext context, ClassType classType}) {
    return Material(
      child: InkWell(
        onTap: () {},
        splashFactory: InkRipple.splashFactory,
        child: SizedBox(
          height: 60,
          width: width / 2.5,
          child: Container(
              alignment: Alignment.center,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        _getClassType(classType),
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodyText1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 8,
                    ),
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  // This method is used to select number of passengers
  Widget _buildTravellerButton(
      {double width,
      BuildContext context,
      int childrenCount = 0,
      int adultCount = 0}) {
    return Material(
      child: InkWell(
        onTap: () {},
        splashFactory: InkRipple.splashFactory,
        child: SizedBox(
          height: 60,
          width: width / 2.5,
          child: Container(
              alignment: Alignment.center,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Container(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            "$adultCount adults,\n$childrenCount children",
                            style: Theme.of(context).textTheme.bodyText1,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ))),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 8,
                    ),
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  // This button is used to select the date of departure and return which on clicked shows a calendar
  Widget _buildDepartureReturnButton(
      {double width,
      BuildContext context,
      String date,
      String day,
      String month,
      Function onTap}) {
    return Material(
      child: InkWell(
        onTap: onTap,
        splashFactory: InkRipple.splashFactory,
        child: SizedBox(
          height: 60,
          width: width / 2.5,
          child: Container(
              alignment: Alignment.center,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      date,
                      style: Theme.of(context).textTheme.headline3.copyWith(
                          fontSize: 32, color: Theme.of(context).accentColor),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            month,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            day,
                            style: Styles.body1TextStyle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  // this method takes the ClassType Enum value as input and returns the appropriate string value of that travel class type
  String _getClassType(ClassType classType) {
    if (classType == ClassType.businessClass) {
      return "Business Class";
    } else if (classType == ClassType.economy) {
      return "Economy";
    } else {
      return "First Class";
    }
  }
}

enum ClassType { economy, firstClass, businessClass }
enum ToOrFrom { TO, FROM }
