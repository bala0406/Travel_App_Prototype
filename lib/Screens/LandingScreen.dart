import 'package:flutter/material.dart';
import 'package:travel_app/Screens/LoginScreen.dart';
import 'package:travel_app/Widgets/Button.dart';
import 'package:travel_app/common/Assets.dart';
import 'package:travel_app/common/Styles.dart';
import 'package:travel_app/common/Texts.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double paddingValue = MediaQuery.of(context).size.width / 10;
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: paddingValue / 1.5),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  Texts.landingScreenText,
                  style: Styles.titleTextStyle,
                )),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: paddingValue / 3),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Assets.landingPageImage(context: context))),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: paddingValue / 1.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                button(
                    text: "Register",
                    onTap: () {},
                    color: Styles.accentRedColor,
                    splashColor: Styles.splashColor),
                SizedBox(height: 10),
                button(
                  text: "Login",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  color: Styles.greyShadeColor,
                  splashColor: Styles.greySplashColor,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
