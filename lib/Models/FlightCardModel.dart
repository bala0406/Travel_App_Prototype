import 'package:flutter/material.dart';
import 'package:travel_app/common/Styles.dart';

class FlightCardModel {
  Widget image;
  String from;
  String to;
  String fromTime;
  String toTime;
  String stops;
  int stopsCount;
  double price;

  FlightCardModel(
      {image,
      this.from,
      this.to,
      this.fromTime,
      this.toTime,
      this.stops,
      this.stopsCount,
      this.price}) {
    this.image = image ??
        Container(
          child: Text(
            "Indigo",
            style: Styles.primaryTitleTextStyle,
          ),
        );
  }
}
