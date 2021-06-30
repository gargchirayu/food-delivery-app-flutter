/*
*  register_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/login_widget/login_widget.dart';
import 'package:fudito/otpverification_widget/otpverification_widget.dart';
import 'package:flutter/services.dart';
import 'package:fudito/services/auth.dart';
import 'package:fudito/values/values.dart';


class RegisterWidget extends StatefulWidget {

  final Function toggleView;
  RegisterWidget({this.toggleView});
  
  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String name = '';
  String mobile = '';
  String email = '';
  String refCode = '';
  String num = '';

  @override
  void initState() {
    _updateAppbar();
    super.initState();
  }

  void _updateAppbar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  void onGenerateOTPPressed(BuildContext context) {
    print("$name");
    Navigator.push(context, MaterialPageRoute(builder: (context) => OTPVerificationWidget()));
  }

  void onLogInPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      body: Container(
        constraints: BoxConstraints.expand(),
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
                  margin: EdgeInsets.only(top: 67, bottom: 13),
                  child: Text(
                    "Sign Up",
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
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(left: 20, top: 20, right: 20),
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
                        validator: (val) => val.isEmpty ? 'Enter name' : null,
                        onChanged: (val) {
                          setState(() {
                            name = val;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Name",
                          contentPadding: EdgeInsets.only(left: 13, bottom: 8.0),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Color.fromARGB(255, 112, 112, 112),
                          fontFamily: "Jost",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        maxLines: 1,
                        textInputAction: TextInputAction.next,
                        autocorrect: false,
                      ),
                    ),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(left: 20, top: 20, right: 20),
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
                          contentPadding: EdgeInsets.only(left: 13, bottom: 8),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Color.fromARGB(255, 112, 112, 112),
                          fontFamily: "Jost",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        maxLines: 1,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        autocorrect: false,
                      ),
                    ),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(left: 20, top: 20, right: 20),
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
                        validator: (val) => val.isEmpty ? 'Enter email' : null,
                        onChanged: (val) {
                          setState(() {
                            email = val;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          contentPadding: EdgeInsets.only(left: 13, bottom: 8),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Color.fromARGB(255, 112, 112, 112),
                          fontFamily: "Jost",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        autocorrect: false,
                      ),
                    ),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(left: 20, top: 20, right: 20),
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
                        onChanged: (val) {
                          setState(() {
                            refCode = val;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Referral Code (if any)",
                          contentPadding: EdgeInsets.only(left: 13, bottom: 8),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Color.fromARGB(255, 112, 112, 112),
                          fontFamily: "Jost",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        maxLines: 1,
                        textInputAction: TextInputAction.go,
                        autocorrect: false,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 37,
                margin: EdgeInsets.only(left: 20, top: 40, right: 20),
                child: FlatButton(
                  onPressed: () async {
                    if(_formKey.currentState.validate()){
                      num = '+91' + mobile;
                      await _auth.registerWithPhone(name, num, email, refCode, context);
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
                  width: 218,
                  height: 26,
                  margin: EdgeInsets.only(top: 15),
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
                      "Already have an account? Log In >",
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