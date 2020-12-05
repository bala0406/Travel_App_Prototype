import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/Models/FlightCardModel.dart';
import 'package:travel_app/Widgets/Button.dart';
import 'package:travel_app/common/Styles.dart';
import 'dart:math' as math;

class SearchResultsScreen extends StatefulWidget {
  @override
  _SearchResultsScreenState createState() => _SearchResultsScreenState();
}

class _SearchResultsScreenState extends State<SearchResultsScreen> {
  double appBarHeight = AppBar().preferredSize.height;
  // GlobalKey sliverKey = GlobalKey();
  // RenderBox _renderBox = sliverKey.currentContext.findRenderObject()
  List<FlightCardModel> dummyCardData = [
    FlightCardModel(
        image: Text(
          "Indigo",
          style: Styles.primaryTitleTextStyle,
        ),
        from: "BLE",
        to: "CHN",
        fromTime: "11:30 PM",
        toTime: "03:00 AM",
        stops: "non-stop",
        stopsCount: 0,
        price: 3500),
    FlightCardModel(
        image: Text(
          "Go AIR",
          style: Styles.primaryTitleTextStyle,
        ),
        from: "BLE",
        to: "CHN",
        fromTime: "12:30 PM",
        toTime: "04:00 AM",
        stops: "one-stop",
        stopsCount: 1,
        price: 3000),
    FlightCardModel(
        image: Text(
          "Spice Jet",
          style: Styles.primaryTitleTextStyle,
        ),
        from: "BLE",
        to: "CHN",
        fromTime: "01:30 AM",
        toTime: "05:00 AM",
        stops: "three-stop",
        stopsCount: 3,
        price: 3120),
    FlightCardModel(
        from: "BLE",
        to: "CHN",
        fromTime: "02:30 AM",
        toTime: "03:00 AM",
        stops: "two-stop",
        stopsCount: 2,
        price: 4500),
    FlightCardModel(
        from: "BLE",
        to: "CHN",
        fromTime: "11.30 PM",
        toTime: "03.00 AM",
        stops: "non-stop",
        stopsCount: 0,
        price: 5000),
    FlightCardModel(
        image: Text(
          "Indigo",
          style: Styles.primaryTitleTextStyle,
        ),
        from: "BLE",
        to: "CHN",
        fromTime: "11:30 PM",
        toTime: "03:00 AM",
        stops: "non-stop",
        stopsCount: 0,
        price: 3500),
    FlightCardModel(
        image: Text(
          "Go AIR",
          style: Styles.primaryTitleTextStyle,
        ),
        from: "BLE",
        to: "CHN",
        fromTime: "12:30 PM",
        toTime: "04:00 AM",
        stops: "one-stop",
        stopsCount: 1,
        price: 3000),
    FlightCardModel(
        image: Text(
          "Spice Jet",
          style: Styles.primaryTitleTextStyle,
        ),
        from: "BLE",
        to: "CHN",
        fromTime: "01:30 AM",
        toTime: "05:00 AM",
        stops: "three-stop",
        stopsCount: 3,
        price: 3120),
    FlightCardModel(
        from: "BLE",
        to: "CHN",
        fromTime: "02:30 AM",
        toTime: "03:00 AM",
        stops: "two-stop",
        stopsCount: 2,
        price: 4500),
    FlightCardModel(
        from: "BLE",
        to: "CHN",
        fromTime: "11.30 PM",
        toTime: "03.00 AM",
        stops: "non-stop",
        stopsCount: 0,
        price: 5000),
    FlightCardModel(
        image: Text(
          "Indigo",
          style: Styles.primaryTitleTextStyle,
        ),
        from: "BLE",
        to: "CHN",
        fromTime: "11:30 PM",
        toTime: "03:00 AM",
        stops: "non-stop",
        stopsCount: 0,
        price: 3500),
    FlightCardModel(
        image: Text(
          "Go AIR",
          style: Styles.primaryTitleTextStyle,
        ),
        from: "BLE",
        to: "CHN",
        fromTime: "12:30 PM",
        toTime: "04:00 AM",
        stops: "one-stop",
        stopsCount: 1,
        price: 3000),
    FlightCardModel(
        image: Text(
          "Spice Jet",
          style: Styles.primaryTitleTextStyle,
        ),
        from: "BLE",
        to: "CHN",
        fromTime: "01:30 AM",
        toTime: "05:00 AM",
        stops: "three-stop",
        stopsCount: 3,
        price: 3120),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          // key: sliverKey,
          floating: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "13 Flights Found",
            style: Styles.secondaryTitleTextStyle.copyWith(color: Colors.white),
          ),
          pinned: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: InkWell(
                splashColor: Colors.white10,
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.sort_outlined),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Sort By",
                      style:
                          Styles.body1TextStyle.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
            )
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Padding(
                padding: EdgeInsets.only(top: appBarHeight + 32),
                child: _buildSliverAppBarContent()),
            collapseMode: CollapseMode.parallax,
            stretchModes: [
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle
            ],
          ),
          expandedHeight: 230,
          stretch: true,
          // stretchTriggerOffset: 150,
          // (sliverKey.currentContext.findRenderObject() as RenderBox).localToGlobal(Offset.zero) as double
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return _buildFlightCard(dummyCardData[index]);
        }, childCount: dummyCardData.length)),
      ],
    ));
  }

  Widget _buildSliverAppBarContent() {
    return Container(child: _buildTravelInformation());
  }

  Widget _buildTravelInformation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "BLE",
                style: Styles.accentTitleTextStyle.copyWith(fontSize: 30),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(height: 1, color: Styles.secondaryGreyColor),
                ),
              ),
              // SizedBox(width: 4,),
              Transform.rotate(
                  angle: math.pi / 2,
                  child: Icon(
                    Icons.arrow_circle_up,
                    color: Styles.secondaryGreyColor,
                  )),
              // SizedBox(width: 4,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(height: 1, color: Styles.secondaryGreyColor),
                ),
              ),
              Text(
                "CHN",
                style: Styles.accentTitleTextStyle.copyWith(fontSize: 30),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bengaluru",
                style: Styles.body1TextStyle.copyWith(color: Colors.white),
              ),
              Text(
                "Chennai",
                style: Styles.body1TextStyle.copyWith(color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.red)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_circle_up,
                            color: Styles.accentRedColor,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "13 August 2020",
                            style: Styles.body1TextStyle
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.perm_identity_outlined,
                            color: Styles.accentRedColor,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "3 Passengers",
                            style: Styles.body1TextStyle
                                .copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                // decoration:
                //     BoxDecoration(border: Border.all(color: Colors.red)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_circle_down,
                          color: Styles.accentRedColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "15 August 2020",
                          style: Styles.body1TextStyle
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.airline_seat_recline_extra,
                          color: Styles.accentRedColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Economy",
                          style: Styles.body1TextStyle
                              .copyWith(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFlightCard(FlightCardModel flightCard) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Styles.secondaryGreyColor,
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(16),
        child: InkWell(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    flightCard.from,
                    style: Styles.accentTitleTextStyle,
                  ),
                  Expanded(
                      child: _buildStopsLine(stopsCount: flightCard.stopsCount)),
                  Text(
                    flightCard.to,
                    style: Styles.accentTitleTextStyle,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    flightCard.fromTime,
                    style: Styles.body1TextStyle,
                  ),
                  Text(
                    flightCard.stopsCount == 0
                        ? "Non-Stop"
                        : flightCard.stopsCount.toString() + " Stops",
                    style: Styles.body1TextStyle,
                  ),
                  Text(
                    flightCard.toTime,
                    style: Styles.body1TextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width / 2 - 32),
                      child: flightCard.image),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width / 2 - 32),
                    child: Text(
                      "₹ " + flightCard.price.toInt().toString(),
                      style: Styles.primaryTitleTextStyle,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStopsLine({int stopsCount}) {
    List<Widget> circles = [];
    Widget stopsCircle = Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Styles.accentRedColor,
      ),
    );
    int index = 0;
    while (index < stopsCount) {
      circles.add(stopsCircle);
      index++;
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Styles.primaryDarkBlueColor,
            height: 1,
            //use expanded as parent to occupy the maximum width
          ),
          Row(
            mainAxisAlignment: stopsCount == 1
                ? MainAxisAlignment.center
                : MainAxisAlignment.spaceAround,
            children: circles,
          ),
        ],
      ),
    );
    // ],
    // );
  }
}
