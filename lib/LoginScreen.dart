import 'package:flutter/material.dart';
import 'package:travel_app/Assets.dart';
import 'package:travel_app/Styles.dart';
import 'package:travel_app/Texts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double paddingValue = MediaQuery.of(context).size.width / 10;

    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: paddingValue),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        Texts.loginScreenText,
                        style: Styles.titleTextStyle,
                      )),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: paddingValue * 2),
                    child: Align(
                        alignment: Alignment.center,
                        child: Assets.loginPageImage(context: context))),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingValue / 1.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: TextFormField(
                          style: Styles.textFieldTextStyle,
                          decoration: InputDecoration(
                            labelText: "Username",
                            labelStyle: Styles.textFieldTextStyle,
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Styles.greyShadeColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      // SizedBox(height: 3),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10),
                      //   child: Align(
                      //     alignment: Alignment.centerLeft,
                      //     child: Container(
                      //       child: Text(
                      //         Texts.userNameError,
                      //         style: Styles.errorTextStyle,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: TextFormField(
                          style: Styles.textFieldTextStyle,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: Styles.textFieldTextStyle,
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            // errorText: "enter a valid Password",
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Styles.greyShadeColor,
                          ),
                          textAlign: TextAlign.start,
                          obscureText: true,
                        ),
                      ),
                      // SizedBox(height: 3),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10),
                      //   child: Align(
                      //     alignment: Alignment.centerLeft,
                      //     child: Container(
                      //       child: Text(
                      //         Texts.passwordError,
                      //         style: Styles.errorTextStyle,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: 20),
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
                            "Login",
                            style: Styles.buttonTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
