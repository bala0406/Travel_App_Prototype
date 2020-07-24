import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  //light theme
  static Color get accentRedColor => Color.fromRGBO(232, 80, 91, 1);
  static Color get textDarkBlueColor => Color.fromRGBO(38, 50, 56, 1);
  static Color get greyShadeColor => Color.fromRGBO(224, 224, 224, 1);
  static Color get splashColor => Color.fromRGBO(226, 35, 49, 1);
  static Color get greySplashColor => Color.fromRGBO(199, 199, 199,1);
  static double get titleLetterSpacing => .5;

  static TextStyle get titleTextStyle => GoogleFonts.montserrat(
        color: accentRedColor,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        letterSpacing: titleLetterSpacing,
      );
  static TextStyle get titleTextStyleDarkBlue => GoogleFonts.montserrat(
        color: textDarkBlueColor,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        letterSpacing: titleLetterSpacing,
      );

  static TextStyle get greyButtonTextStyle => GoogleFonts.montserrat(
        color: textDarkBlueColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get accentRedButtonTextStyle => GoogleFonts.montserrat(
        color: greyShadeColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textFieldTextStyle => GoogleFonts.montserrat(
        color: textDarkBlueColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get errorTextStyle => GoogleFonts.montserrat(
        color: accentRedColor,
        fontSize: 11,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get smallBodyTextStyle => GoogleFonts.montserrat(
        color: textDarkBlueColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get normalBodyTextStyle => GoogleFonts.montserrat(
        color: textDarkBlueColor,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      );
}
