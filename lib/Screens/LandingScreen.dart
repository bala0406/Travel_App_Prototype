import 'package:flutter/material.dart';
import 'package:travel_app/Screens/LoginScreen.dart';
import 'package:travel_app/Widgets/Button.dart';
import 'package:travel_app/common/AnimatedButton.dart';
import 'package:travel_app/common/Assets.dart';
import 'package:travel_app/common/Styles.dart';
import 'package:travel_app/common/Texts.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final double paddingValue = MediaQuery.of(context).size.width / 16;
    final double paddingValue = 24;
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: paddingValue),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  Texts.landingScreenText,
                  style: Theme.of(context).textTheme.headline1,
                )),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: paddingValue),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Assets.landingPageImage(context: context))),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: paddingValue),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                button(
                  text: "Register",
                  onTap: () {},
                  color: Styles.accentRedColor,
                  textStyle: Theme.of(context).textTheme.button,
                ),
                SizedBox(height: 8),
                button(
                  text: "Login",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  textStyle: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: Theme.of(context).primaryColor),
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
