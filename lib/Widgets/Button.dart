import 'package:flutter/material.dart';
import 'package:travel_app/common/Styles.dart';

Widget button({String text, Function onTap, Color splashColor, Color color}) {
  return Container(
    height: 55,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: color,
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        splashFactory: InkRipple.splashFactory,
        splashColor: splashColor,
        highlightColor: splashColor,
        child: Center(
          child: Text(
            text,
            style: color == Styles.accentRedColor
                ? Styles.accentRedButtonTextStyle
                : Styles.greyButtonTextStyle,
          ),
        ),
      ),
    ),
  );
}
