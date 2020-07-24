import 'package:flutter/material.dart';
import 'package:travel_app/Widgets/Button.dart';
import 'package:travel_app/common/Assets.dart';
import 'package:travel_app/common/Styles.dart';
import 'package:travel_app/common/Texts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double paddingValue = MediaQuery.of(context).size.width / 10;
    bool isUsernameOrPasswordWrong = false;
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Stack(
          children: <Widget>[
            Center(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: paddingValue / 1.5),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            Texts.loginScreenText,
                            style: Styles.titleTextStyle,
                          )),
                    ),
                    SizedBox(height: 20),
                    Container(
                        child: Align(
                            alignment: Alignment.center,
                            child: Assets.loginPageImage(context: context))),
                    SizedBox(height: 20),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: paddingValue / 1.5),
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
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto,
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
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto,
                                // errorText: "enter a valid Password",
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Styles.greyShadeColor,
                              ),
                              textAlign: TextAlign.start,
                              obscureText: true,
                            ),
                          ),
                          SizedBox(height: 5),
                          isUsernameOrPasswordWrong
                              ? Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      child: Text(
                                        Texts.userNameOrPasswordError,
                                        style: Styles.errorTextStyle,
                                      ),
                                    ),
                                  ),
                                )
                              : Container(),
                          SizedBox(height: 20),
                          // Container(
                          //   width: MediaQuery.of(context).size.width,
                          //   height: 55,
                          //   child: FlatButton(
                          //     onPressed: () {},
                          //     color: Styles.accentRedColor,
                          //     splashColor: Colors.transparent,
                          //     shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(10),
                          //     ),
                          //     child: Text(
                          //       "Login",
                          //       style: Styles.buttonTextStyle,
                          //     ),
                          //   ),
                          // ),
                          button(
                              text: "Login",
                              onTap: () {},
                              color: Styles.accentRedColor,
                              splashColor: Styles.splashColor),
                          FlatButton(
                              splashColor: Colors.transparent,
                              onPressed: () {},
                              child: Text(
                                "Forgot Password?",
                                style: Styles.textFieldTextStyle,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
                child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context)))
          ],
        ),
      ),
    );
  }
}
