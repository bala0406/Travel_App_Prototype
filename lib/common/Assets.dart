import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Assets {
  static String get landingPageImagePath => "Assets/LandingPageImage.svg";
  static String get loginPageImagePath => "Assets/LoginPageImage.svg";
  static String get facebookImagePath => "Assets/Icons/facebook.svg";
  static String get googleImagePath => "Assets/Icons/google.svg";
  static Widget landingPageImage({context}) => SvgPicture.asset(
        landingPageImagePath,
        width: MediaQuery.of(context).size.width,
      );

  static Widget loginPageImage({context}) =>
      SvgPicture.asset(loginPageImagePath,
          width: MediaQuery.of(context).size.width / 2);

  static Widget facebookLoginImage() => SvgPicture.asset(facebookImagePath,color: Colors.white,);
  static Widget googleLoginImage() => SvgPicture.asset(googleImagePath,width: 22,);
}
