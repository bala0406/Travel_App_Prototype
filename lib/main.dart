import 'package:flutter/material.dart';
import 'package:travel_app/Screens/SplashScreen.dart';
import 'package:travel_app/common/Styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Styles.primaryDarkBlueColor,
          accentColor: Styles.accentRedColor,
          buttonColor: Styles.accentRedColor,
          scaffoldBackgroundColor: Colors.white,
          // splashColor: Styles.primaryButtonSplashColor,
          errorColor: Styles.errorColor,
          disabledColor: Styles.disabledColor,
          dividerColor: Styles.primaryDarkBlueColor,
          iconTheme: IconThemeData(color: Styles.primaryDarkBlueColor),
          toggleableActiveColor: Styles.primaryDarkBlueColor,
          secondaryHeaderColor: Styles.secondaryGreyColor,
          textTheme: TextTheme(
            headline1: Styles.accentTitleTextStyle,
            headline2: Styles.primaryTitleTextStyle,
            headline3: Styles.secondaryTitleTextStyle,
            button: Styles.primaryButtonTextStyle,
            bodyText1: Styles.body1TextStyle,
            bodyText2: Styles.body2TextStyle,
          )),
      home: SplashScreen(),
    );
  }
}
