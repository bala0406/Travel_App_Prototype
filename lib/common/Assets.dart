import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Assets {
  static String get landingPageImagePath => "Assets/LandingPageImage.svg";
  static String get loginPageImagePath => "Assets/LoginPageImage.svg";

  static Widget landingPageImage({context}) => SvgPicture.asset(
        landingPageImagePath,
        width: MediaQuery.of(context).size.width,
      );

  static Widget loginPageImage({context}) =>
      SvgPicture.asset(loginPageImagePath,
          width: MediaQuery.of(context).size.width/2);
}
