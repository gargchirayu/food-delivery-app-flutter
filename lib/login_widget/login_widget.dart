/*
*  login_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/services/auth.dart';
import 'package:fudito/otpverification_widget/otpverification_widget.dart';
import 'package:fudito/register_widget/register_widget.dart';
import 'package:flutter/services.dart';
import 'package:fudito/values/values.dart';


class LoginWidget extends StatefulWidget {

  final Function toggleView;

  LoginWidget({this.toggleView});
  
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String mobile = '';

  @override
  void initState() {
    _updateAppbar();
    super.initState();
  }

  void _updateAppbar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  void onGenerateOTPPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => OTPVerificationWidget()));

  void onRegisterPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterWidget()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 250, 250, 250),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 181,
                  height: 56,
                  margin: EdgeInsets.only(top: 81),
                  child: Image.asset(
                    "assets/images/fudito-yellowtext-5.png",
                    fit: BoxFit.none,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 67),
                  child: Text(
                    "Log In",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Proxima Nova",
                      fontWeight: FontWeight.w400,
                      fontSize: 36,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 2),
                  child: Text(
                    "Enter your mobile number to continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 112, 112, 112),
                      fontFamily: "Proxima Nova",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Container(
                  height: 40,
                  margin: EdgeInsets.only(left: 20, top: 61, right: 20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(26, 253, 185, 0),
                        offset: Offset(0, 7),
                        blurRadius: 20,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  child: TextFormField(
                    validator: (val) => val.length != 10 ? 'Invalid mobile number' : null,
                    onChanged: (val) {
                      setState(() {
                        mobile = val;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "10-digit Mobile Number",
                      contentPadding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 62),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.go,
                    autocorrect: false,
                  ),
                ),
              ),
              Container(
                height: 37,
                margin: EdgeInsets.only(left: 20, top: 50, right: 20),
                child: FlatButton(
                  onPressed: () async {
                    if(_formKey.currentState.validate()){
                      mobile = '+91' + mobile;
                      await _auth.signInWithPhone(mobile, context);
                    }
                  },
                  color: Color.fromARGB(255, 253, 200, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "GENERATE OTP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 100,
                  height: 26,
                  margin: EdgeInsets.only(top: 20),
                  child: FlatButton(
                    onPressed: () {
                      widget.toggleView();
                    },
                    color: Color.fromARGB(0, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color.fromARGB(255, 20, 33, 61),
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                    textColor: Color.fromARGB(255, 20, 33, 61),
                    padding: EdgeInsets.only(left: 1),
                    child: Text(
                      "Register Now >",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 20, 33, 61),
                        fontFamily: "Proxima Nova",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}