import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/Widgets/Button.dart';
import 'package:travel_app/common/Assets.dart';
import 'package:travel_app/common/Styles.dart';
import 'package:travel_app/common/Texts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    // final double paddingValue = MediaQuery.of(context).size.width / 10;
    final double paddingValue = 24;
    bool isUsernameOrPasswordWrong = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Theme.of(context).primaryColor,
          splashRadius: 24,
        ),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: paddingValue),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                    alignment: Alignment.center,
                    child: Assets.loginPageImage(context: context)),
                SizedBox(height: 8),
                Text(
                  Texts.loginScreenText,
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(height: 4),
                Text(
                  "Sign in to continue",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(height: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: TextFormField(
                        style: Theme.of(context).textTheme.bodyText1,
                        decoration: InputDecoration(
                          labelText: "Username",
                          labelStyle: Theme.of(context).textTheme.bodyText1,
                          fillColor: Theme.of(context).secondaryHeaderColor,
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          border: InputBorder.none,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: TextFormField(
                        style: Theme.of(context).textTheme.bodyText1,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: Theme.of(context).textTheme.bodyText1,
                          fillColor: Theme.of(context).secondaryHeaderColor,
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          border: InputBorder.none,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                        ),
                        textAlign: TextAlign.start,
                        obscureText: true,
                      ),
                    ),
                    isUsernameOrPasswordWrong
                        ? SizedBox(height: 4)
                        : Container(),
                    isUsernameOrPasswordWrong
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  Texts.userNameOrPasswordError,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(color: Styles.errorColor),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    SizedBox(height: 16),
                    button(
                      text: "Login",
                      onTap: () {},
                      color: Theme.of(context).accentColor,
                      textStyle: Theme.of(context).textTheme.button,
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Forgot Password?",
                      style: Theme.of(context).textTheme.bodyText2,
                    ), //TODO: implement forgot password
                    SizedBox(height: 16),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          color: Theme.of(context).primaryColor,
                          height: 0.5,
                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "or",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          color: Theme.of(context).primaryColor,
                          height: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Text("Sign in with",
                    style: Theme.of(context).textTheme.bodyText2),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: iconButton(
                          image: Assets.googleLoginImage(),
                          onTap: () {},
                          color: Theme.of(context).secondaryHeaderColor),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: iconButton(
                          image: Assets.facebookLoginImage(),
                          onTap: () {},
                          color: Color(0xFF2196F3)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
