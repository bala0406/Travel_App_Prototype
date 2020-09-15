import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:travel_app/Widgets/Button.dart';
import 'package:travel_app/Widgets/ToggleSwitch.dart';
import 'package:travel_app/common/Styles.dart';

class FlightsScreen extends StatefulWidget {
  @override
  _FlightsScreenState createState() => _FlightsScreenState();
}

class _FlightsScreenState extends State<FlightsScreen> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
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
              InkWell(
                onTap: () {},
                splashFactory: InkRipple.splashFactory,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "FROM",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        "BLE",
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            .copyWith(fontSize: 40),
                      ),
                      Text(
                        "BENGALURU",
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            .copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              ClipOval(
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
              ),
              SizedBox(
                width: 16,
              ),
              InkWell(
                onTap: () {},
                splashFactory: InkRipple.splashFactory,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "TO",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        "MDU",
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            .copyWith(fontSize: 40),
                      ),
                      Text(
                        "MADURAI",
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            .copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          FlutterToggleTab(
            width: 90,
            height: 36,
            initialIndex: 0,
            selectedIndex: _selectedTab,
            selectedTextStyle:
                Styles.body2TextStyleBold.copyWith(color: Colors.white),
            unSelectedTextStyle: Styles.body2TextStyleBold,
            labels: ["ONE WAY", "ROUND TRIP"],
            selectedLabelIndex: (index) {
              setState(() {
                _selectedTab = index;
              });
            },
          ),
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
                  Material(
                    child: InkWell(
                      onTap: () {},
                      splashFactory: InkRipple.splashFactory,
                      child: SizedBox(
                        height: 72,
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
                                    "13",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3
                                        .copyWith(
                                            fontSize: 32,
                                            color: Theme.of(context).accentColor),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 24),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "AUG",
                                        style:
                                            Theme.of(context).textTheme.bodyText1,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Thursday",
                                        style:
                                            Theme.of(context).textTheme.bodyText1,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  )
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
                  Material(
                    child: InkWell(
                      onTap: () {},
                      splashFactory: InkRipple.splashFactory,
                      child: SizedBox(
                        height: 72,
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
                                    "15",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3
                                        .copyWith(
                                            fontSize: 32,
                                            color: Theme.of(context).accentColor),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 24),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "AUG",
                                        style:
                                            Theme.of(context).textTheme.bodyText1,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Saturday",
                                        style:
                                            Theme.of(context).textTheme.bodyText1,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  )
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
                  Material(
                    child: InkWell(
                      onTap: () {},
                      splashFactory: InkRipple.splashFactory,
                      child: SizedBox(
                        height: 72,
                        width: width / 2.5,
                        child: Container(
                            alignment: Alignment.center,
                            color: Colors.black12,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "2 Adults",
                                        style:
                                            Theme.of(context).textTheme.bodyText1,
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "1 children",
                                        style:
                                            Theme.of(context).textTheme.bodyText1,
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
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
                  )
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
                  Material(
                    child: InkWell(
                      onTap: () {},
                      splashFactory: InkRipple.splashFactory,
                      child: SizedBox(
                        height: 72,
                        width: width / 2.5,
                        child: Container(
                            alignment: Alignment.center,
                            color: Colors.black12,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Text(
                                    "Economy",
                                    style: Theme.of(context).textTheme.bodyText1,
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
                  )
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
                onTap: () {},
                color: Theme.of(context).accentColor,
                textStyle: Theme.of(context).textTheme.button,
                context: context),
          ),
        ],
      ),
    );
  }
}
