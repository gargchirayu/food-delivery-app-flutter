/*
*  otpverification_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fudito/categories_widget/categories_widget.dart';
import 'package:flutter/services.dart';
import 'package:fudito/values/values.dart';


class OTPVerificationWidget extends StatefulWidget {
  
  @override
  _OTPVerificationWidgetState createState() => _OTPVerificationWidgetState();
}

class _OTPVerificationWidgetState extends State<OTPVerificationWidget> {

  String smsCode = '';

  @override
  void initState() {
    _updateAppbar();
    super.initState();
  }

  void _updateAppbar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  void onResendOTPPressed(BuildContext context) {

  }

  void onContinuePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesWidget()));

  void onBackPressed(BuildContext context) {

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Verify OTP",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 20, 33, 61),
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
        leading: IconButton(
          onPressed: () => this.onBackPressed(context),
          icon: Image.asset("assets/images/back-button.png",),
        ),
        backgroundColor: Color.fromARGB(255, 255, 200, 33),
        elevation: 0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 108),
                  child: Text(
                    "Confirm the OTP sent to 9876543210",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Proxima Nova",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Container(
                height: 32,
                margin: EdgeInsets.only(left: 86, top: 80, right: 85),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                      Container(
                        width: 20,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(
                            width: 1,
                            color: Color.fromARGB(255, 20, 33, 61),
                          ),
                        ),
                        child: TextField(
                          onChanged: (val) {
                            setState(() {
                              smsCode = smsCode+val;
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "",
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(

                            color: Color.fromARGB(255, 20, 33, 61),
                            fontFamily: "Proxima Nova",
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                          maxLines: 1,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          autocorrect: false,
                        ),
                      ),
                      Container(
                        width: 21,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(
                            width: 1,
                            color: Color.fromARGB(255, 20, 33, 61),
                          ),
                        ),
                        child: TextField(
                          onChanged: (val) {
                            setState(() {
                              smsCode = smsCode+val;
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "",
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Color.fromARGB(255, 20, 33, 61),
                            fontFamily: "Proxima Nova",
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                          maxLines: 1,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          autocorrect: false,
                        ),
                      ),
                      Container(
                        width: 21,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(
                            width: 1,
                            color: Color.fromARGB(255, 20, 33, 61),
                          ),
                        ),
                        child: TextField(
                          onChanged: (val) {
                            setState(() {
                              smsCode = smsCode+val;
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "",
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Color.fromARGB(255, 20, 33, 61),
                            fontFamily: "Proxima Nova",
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                          maxLines: 1,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          autocorrect: false,
                        ),
                      ),
                      Container(
                        width: 21,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(
                            width: 1,
                            color: Color.fromARGB(255, 20, 33, 61),
                          ),
                        ),
                        child: TextField(
                          onChanged: (val) {
                            setState(() {
                              smsCode = smsCode+val;
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "",
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Color.fromARGB(255, 20, 33, 61),
                            fontFamily: "Proxima Nova",
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                          maxLines: 1,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.go,
                          autocorrect: false,
                        ),
                      ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 82,
                  height: 26,
                  margin: EdgeInsets.only(top: 28),
                  child: FlatButton(
                    onPressed: () => this.onResendOTPPressed(context),
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
                      "Resend OTP >",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 20, 33, 61),
                        fontFamily: "Proxima Nova",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 37,
                margin: EdgeInsets.only(left: 16, top: 109, right: 16),
                child: FlatButton(
                  onPressed: () {
//                    FirebaseAuth auth = FirebaseAuth.instance;
//
//                    AuthCredential _credential = PhoneAuthProvider.getCredential(verificationId: verificationId, smsCode: smsCode);
//                    auth.signInWithCredential(_credential).then((AuthResult result){
//                      Navigator.pushReplacement(context, MaterialPageRoute(
//                          builder: (context) => HomeScreen(result.user)
//                      ));
//                    }).catchError((e){
//                      print(e);
//                    });
                  },
                  color: Color.fromARGB(255, 253, 200, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "CONTINUE",
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
            ],
          ),
        ),
      ),
    );
  }
}