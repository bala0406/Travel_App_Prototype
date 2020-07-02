import 'package:flutter/material.dart';
import 'package:travel_app/Assets.dart';
import 'package:travel_app/LoginScreen.dart';
import 'package:travel_app/Styles.dart';
import 'package:travel_app/Texts.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double paddingValue = MediaQuery.of(context).size.width / 10;
    return Scaffold(
        body: Column(
      children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: paddingValue),
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
          Container(
            width: MediaQuery.of(context).size.width,
            height: 55,
            child: FlatButton(
              onPressed: () {},
              color: Styles.accentRedColor,
              splashColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Register",
                style: Styles.buttonTextStyle,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 55,
            child: FlatButton(
              onPressed: () {
                Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LoginScreen()));
              },
              color: Styles.greyShadeColor,
              splashColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Login",
                style: Styles.buttonTextStyle,
              ),
            ),
          ),
        ],
                ),
              ),
            ),
      ],
    ));
  }
}
