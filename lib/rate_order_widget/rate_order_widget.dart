/*
*  rate_order_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/home_widget/home_widget.dart';
import 'package:fudito/review_other_widget/review_other_widget.dart';
import 'package:fudito/values/values.dart';


class RateOrderWidget extends StatelessWidget {
  
  void onOneStarPressed(BuildContext context) {
  
  }
  
  void onTwoStarPressed(BuildContext context) {
  
  }
  
  void onThreeStarPressed(BuildContext context) {
  
  }
  
  void onFourStarPressed(BuildContext context) {
  
  }
  
  void onFiveStarPressed(BuildContext context) {
  
  }
  
  void onButton1Pressed(BuildContext context) {
  
  }
  
  void onButton2Pressed(BuildContext context) {
  
  }
  
  void onButton3Pressed(BuildContext context) {
  
  }
  
  void onButton4Pressed(BuildContext context) {
  
  }
  
  void onButton5Pressed(BuildContext context) {
    showModalBottomSheet(context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: EdgeInsets.only(left: 16, right: 16, top:8),
        height: MediaQuery.of(context).size.height * 0.75,
        decoration: new BoxDecoration(
          color: Color.fromARGB(255, 250, 250, 250),
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(10.0),
            topRight: const Radius.circular(10.0),
          ),
        ),
        child: ReviewOtherWidget(),
      ),
    );
  }
  
  void onSubmitButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          "Rate your Tiffin",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 20, 33, 61),
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 255, 200, 33),
        elevation: 0,
      ),
      body:
      Container(
        constraints: BoxConstraints.expand(),
        child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
              width: 86,
              height: 86,
              child: Image.asset(
                "assets/images/logo-icon-5.png",
                fit: BoxFit.none,
              ),
            ),
              Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 31,
                    height: 30,
                    child: FlatButton(
                      onPressed: () => this.onOneStarPressed(context),
                      color: Colors.transparent,
                      textColor: Colors.transparent,
                      padding: EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/path-13-2.png",),
                          Text("",),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 31,
                    height: 30,
                    child: FlatButton(
                      onPressed: () => this.onTwoStarPressed(context),
                      color: Colors.transparent,
                      textColor: Colors.transparent,
                      padding: EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/path-13-2.png",),
                          Text("",),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 31,
                    height: 30,
                    child: FlatButton(
                      onPressed: () => this.onThreeStarPressed(context),
                      color: Colors.transparent,
                      textColor: Colors.transparent,
                      padding: EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/path-13-2.png",),
                          Text("",),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 31,
                    height: 30,
                    child: FlatButton(
                      onPressed: () => this.onFourStarPressed(context),
                      color: Colors.transparent,
                      textColor: Colors.transparent,
                      padding: EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/path-13-2.png",),
                          Text("",),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 31,
                    height: 30,
                    child: FlatButton(
                      onPressed: () => this.onFiveStarPressed(context),
                      color: Colors.transparent,
                      textColor: Colors.transparent,
                      padding: EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/path-18.png",),
                          Text("",),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
              Text(
                "Please select one of the following reasons",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 20, 33, 61),
                  fontFamily: "Jost",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                  width: 89,
                  height: 37,
                  child: FlatButton(
                    onPressed: () => this.onButton1Pressed(context),
                    color: Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                    textColor: Color.fromARGB(255, 112, 112, 112),
                    padding: EdgeInsets.all(0),
                    child: Text(
                      "Lorem",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 112, 112, 112),
                        fontFamily: "Jost",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                  Container(
                    width: 89,
                    height: 37,
                    child: FlatButton(
                      onPressed: () => this.onButton2Pressed(context),
                      color: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                      textColor: Color.fromARGB(255, 112, 112, 112),
                      padding: EdgeInsets.all(0),
                      child: Text(
                        "Lorem",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 200, 33),
                          fontFamily: "Jost",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 89,
                    height: 37,
                    child: FlatButton(
                      onPressed: () => this.onButton3Pressed(context),
                      color: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                      textColor: Color.fromARGB(255, 112, 112, 112),
                      padding: EdgeInsets.all(0),
                      child: Text(
                        "Lorem",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 112, 112, 112),
                          fontFamily: "Jost",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 90.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 89,
                      height: 37,
                      child: FlatButton(
                        onPressed: () => this.onButton4Pressed(context),
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 112, 112, 112),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "Lorem",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112),
                            fontFamily: "Jost",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 89,
                      height: 37,
                      child: FlatButton(
                        onPressed: () => this.onButton5Pressed(context),
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 112, 112, 112),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "Other",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112),
                            fontFamily: "Jost",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                height: 37.0,
                child: FlatButton(
                      onPressed: () => this.onSubmitButtonPressed(context),
                      color: Color.fromARGB(255, 253, 200, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      textColor: Color.fromARGB(255, 255, 255, 255),
                      padding: EdgeInsets.all(0),
                      child: Text(
                        "DONE",
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
    );
  }
}