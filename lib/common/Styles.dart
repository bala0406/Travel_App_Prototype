import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  //color theme
  static Color get primaryDarkBlueColor => Color.fromRGBO(38, 50, 56, 1);
  static Color get accentRedColor => Color.fromRGBO(232, 80, 91, 1);
  static Color get secondaryGreyColor => Color.fromRGBO(224, 224, 224, 1);
  static Color get primaryButtonSplashColor => Color.fromRGBO(226, 35, 49, 1);
  static Color get secondaryButtonSplashColor =>
      Color.fromRGBO(199, 199, 199, 1);
  static Color get errorColor => Color(0XFFB00020);
  static Color get disabledColor => Color(0XFFAAAAAA);

  //letter spacing
  static double get titleLetterSpacing => .5;
  static double get textButtonHeight => 52;
  static double get iconButtonHeight => 40;

  //font size
  static double get title1FontSize => 24;
  static double get title2FontSize => 18;
  static double get title3FontSize => 16;
  static double get body1FontSize => 14;
  static double get body2FontSize => 12;

//text styles
  static TextStyle get primaryTitleTextStyle => GoogleFonts.montserrat(
        color: primaryDarkBlueColor,
        fontSize: title1FontSize,
        fontWeight: FontWeight.w600,
        letterSpacing: titleLetterSpacing,
      );

  static TextStyle get accentTitleTextStyle => GoogleFonts.montserrat(
        color: accentRedColor,
        fontSize: title1FontSize,
        fontWeight: FontWeight.w600,
        letterSpacing: titleLetterSpacing,
      );

  static TextStyle get primaryButtonTextStyle => GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: body1FontSize,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get secondaryButtonTextStyle => GoogleFonts.montserrat(
        color: primaryDarkBlueColor,
        fontSize: body2FontSize,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textFieldTextStyle => GoogleFonts.montserrat(
        color: primaryDarkBlueColor,
        fontSize: body2FontSize,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get errorTextStyle => GoogleFonts.montserrat(
        color: accentRedColor,
        fontSize: body2FontSize,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get body1TextStyle => GoogleFonts.montserrat(
        color: primaryDarkBlueColor,
        fontSize: body1FontSize,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get body2TextStyle => GoogleFonts.montserrat(
        color: primaryDarkBlueColor,
        fontSize: body2FontSize,
        fontWeight: FontWeight.w400,
      );
}
