/*
*  review_other_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fudito/values/values.dart';


class ReviewOtherWidget extends StatefulWidget {
  
  @override
  _ReviewOtherWidgetState createState() => _ReviewOtherWidgetState();
}

class _ReviewOtherWidgetState extends State<ReviewOtherWidget> {

  final _formKey = GlobalKey<FormState>();

  String _review = '';

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 40,
            height: 2,
            margin: EdgeInsets.symmetric(horizontal: 140),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 234, 234, 234),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              "Edit your information",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 20, 33, 61),
                fontFamily: "Proxima Nova",
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            height: 118,
            margin: EdgeInsets.only(top: 16),
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
              scrollPhysics: NeverScrollableScrollPhysics(),
              validator: (val) => val.isEmpty ? 'You cannot leave this filed blank' : null,
              onChanged: (val) => setState(() => _review = val),
              maxLength: 300,
              decoration: InputDecoration(
                hintText: "Write your review",
                contentPadding: EdgeInsets.only(left: 13, right: 13, top: 14),
                border: InputBorder.none,
              ),
              style: TextStyle(
                color: Color.fromARGB(255, 112, 112, 112),
                fontFamily: "Jost",
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              expands: true,
            ),
          ),
          Container(
            height: 37,
            margin: EdgeInsets.only(top: 20,),
            child: FlatButton(
              color: Color.fromARGB(255, 253, 200, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              textColor: Color.fromARGB(255, 255, 255, 255),
              padding: EdgeInsets.all(0),
              child: Text(
                "SUBMIT",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Jost",
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              onPressed: () {
                if(_formKey.currentState.validate()){
                  print("Perfect");
                  Navigator.pop(context);
                }
              },
            ),
          ),
        ],
      ),
    );

//      Scaffold(
//      body: Container(
//        constraints: BoxConstraints.expand(),
//        decoration: BoxDecoration(
//          color: Color.fromARGB(51, 0, 0, 0),
//        ),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: [
//            Container(
//              height: 557,
//              margin: EdgeInsets.only(top: 255),
//              decoration: BoxDecoration(
//                color: Color.fromARGB(255, 255, 255, 255),
//                borderRadius: BorderRadius.all(Radius.circular(8)),
//              ),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.stretch,
//                children: [
//                  Align(
//                    alignment: Alignment.topCenter,
//                    child: Container(
//                      width: 43,
//                      height: 2,
//                      margin: EdgeInsets.only(top: 7),
//                      decoration: BoxDecoration(
//                        color: Color.fromARGB(255, 234, 234, 234),
//                      ),
//                      child: Container(),
//                    ),
//                  ),
//                  Align(
//                    alignment: Alignment.topLeft,
//                    child: Container(
//                      margin: EdgeInsets.only(left: 15, top: 10),
//                      child: Text(
//                        "Tell us what you think",
//                        textAlign: TextAlign.left,
//                        style: TextStyle(
//                          color: Color.fromARGB(255, 20, 33, 61),
//                          fontFamily: "Proxima Nova",
//                          fontWeight: FontWeight.w400,
//                          fontSize: 16,
//                        ),
//                      ),
//                    ),
//                  ),
//                  Container(
//                    height: 111,
//                    margin: EdgeInsets.only(left: 16, top: 16, right: 16),
//                    decoration: BoxDecoration(
//                      color: Color.fromARGB(255, 255, 255, 255),
//                      boxShadow: [
//                        BoxShadow(
//                          color: Color.fromARGB(26, 253, 185, 0),
//                          offset: Offset(0, 7),
//                          blurRadius: 20,
//                        ),
//                      ],
//                      borderRadius: BorderRadius.all(Radius.circular(7)),
//                    ),
//                    child: TextField(
//                      decoration: InputDecoration(
//                        hintText: "Write your review",
//                        contentPadding: EdgeInsets.only(left: 13, top: 10),
//                        border: InputBorder.none,
//                      ),
//                      style: TextStyle(
//                        color: Color.fromARGB(255, 112, 112, 112),
//                        fontFamily: "Jost",
//                        fontWeight: FontWeight.w400,
//                        fontSize: 12,
//                      ),
//                      textInputAction: TextInputAction.done,
//                    ),
//                  ),
//                  Align(
//                    alignment: Alignment.topRight,
//                    child: Container(
//                      margin: EdgeInsets.only(top: 7, right: 15),
//                      child: Text(
//                        "(0/300 chars.)",
//                        textAlign: TextAlign.left,
//                        style: TextStyle(
//                          color: Color.fromARGB(255, 112, 112, 112),
//                          fontFamily: "Jost",
//                          fontWeight: FontWeight.w400,
//                          fontSize: 10,
//                        ),
//                      ),
//                    ),
//                  ),
//                  Container(
//                    height: 37,
//                    margin: EdgeInsets.only(left: 16, top: 17, right: 16),
//                    child: FlatButton(
//                      onPressed: () => this.onSubmitReviewPressed(context),
//                      color: Color.fromARGB(255, 253, 200, 48),
//                      shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.all(Radius.circular(5)),
//                      ),
//                      textColor: Color.fromARGB(255, 255, 255, 255),
//                      padding: EdgeInsets.all(0),
//                      child: Text(
//                        "SUBMIT",
//                        textAlign: TextAlign.center,
//                        style: TextStyle(
//                          color: Color.fromARGB(255, 255, 255, 255),
//                          fontFamily: "Jost",
//                          fontWeight: FontWeight.w400,
//                          fontSize: 16,
//                        ),
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
  }
}