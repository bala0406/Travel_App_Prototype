import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/common/AnimatedButton.dart';
import 'package:travel_app/common/Styles.dart';


Widget button(
    {String text,
    Function onTap,
    Color color,
    TextStyle textStyle,
    BuildContext context}) {
  return Container(
    alignment: Alignment.center,
    height: Styles.textButtonHeight,
    decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(8),
  color: color,
    ),
    child: Material(
  color: Colors.transparent,
  child: InkWell(
    borderRadius: BorderRadius.circular(8),
    onTap: onTap,
    splashFactory: InkRipple.splashFactory,
    child: Center(
      child: Text(
        text,
        style: textStyle,
      ),
    ),
  ),
    ),
  );
}
Widget iconButton(
    {Widget image,
    Function onTap,
    Color color,
    TextStyle textStyle,
    BuildContext context}) {
  return Container(
    alignment: Alignment.center,
    height: Styles.iconButtonHeight,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: color,
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        splashFactory: InkRipple.splashFactory,
        child: Center(
          child: image
        ),
      ),
    ),
  );
}
