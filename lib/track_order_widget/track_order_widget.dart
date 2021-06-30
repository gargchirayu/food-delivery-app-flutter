/*
*  track_order_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/account_widget/account_widget.dart';
import 'package:fudito/home_widget/home_widget.dart';
import 'package:fudito/values/values.dart';


class TrackOrderWidget extends StatelessWidget {
  
  void onAllKitchensButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeWidget()));
  
  void onBackPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => AccountWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          "Order Status",
          style: TextStyle(
            color: AppColors.secondaryText,
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
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 498,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 165,
                        height: 341,
                        margin: EdgeInsets.only(left: 44, top: 58),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 24,
                                height: 326,
                                margin: EdgeInsets.only(top: 3),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Container(
                                      height: 24,
                                      margin: EdgeInsets.only(right: 1),
                                      child: Image.asset(
                                        "assets/images/rec-icon.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                    Container(
                                      height: 118,
                                      margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Container(
                                            height: 13,
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Container(
                                            height: 13,
                                            margin: EdgeInsets.only(top: 2),
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Container(
                                            height: 13,
                                            margin: EdgeInsets.only(top: 2),
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Container(
                                            height: 13,
                                            margin: EdgeInsets.only(top: 2),
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Container(
                                            height: 13,
                                            margin: EdgeInsets.only(top: 2),
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Container(
                                            height: 13,
                                            margin: EdgeInsets.only(top: 2),
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Container(
                                            height: 13,
                                            margin: EdgeInsets.only(bottom: 2),
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Container(
                                            height: 13,
                                            margin: EdgeInsets.only(bottom: 2),
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 23,
                                      margin: EdgeInsets.only(right: 1),
                                      child: Image.asset(
                                        "assets/images/way-icon.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                    Container(
                                      height: 118,
                                      margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Container(
                                            height: 13,
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Container(
                                            height: 13,
                                            margin: EdgeInsets.only(top: 2),
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Container(
                                            height: 13,
                                            margin: EdgeInsets.only(top: 2),
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Container(
                                            height: 13,
                                            margin: EdgeInsets.only(top: 2),
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Container(
                                            height: 13,
                                            margin: EdgeInsets.only(top: 2),
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Container(
                                            height: 13,
                                            margin: EdgeInsets.only(top: 2),
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            height: 13,
                                            margin: EdgeInsets.only(bottom: 2),
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Container(
                                            height: 13,
                                            child: Image.asset(
                                              "assets/images/image.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 23,
                                      margin: EdgeInsets.only(left: 2, right: 4),
                                      child: Image.asset(
                                        "assets/images/tiffin-icon.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 97,
                                height: 341,
                                margin: EdgeInsets.only(left: 44),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 97,
                                        height: 37,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Text(
                                              "Order Received",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 20, 33, 61),
                                                fontFamily: "Proxima Nova",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Spacer(),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "09.10 AM",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Color.fromARGB(255, 112, 112, 112),
                                                  fontFamily: "Jost",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 70,
                                        height: 37,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Text(
                                              "On the way",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 20, 33, 61),
                                                fontFamily: "Proxima Nova",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              margin: EdgeInsets.only(right: 19),
                                              child: Text(
                                                "10.10 AM",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Color.fromARGB(255, 112, 112, 112),
                                                  fontFamily: "Jost",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 60,
                                        height: 37,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Text(
                                              "Delivered",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 20, 33, 61),
                                                fontFamily: "Proxima Nova",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              margin: EdgeInsets.only(right: 8),
                                              child: Text(
                                                "10.30 AM",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Color.fromARGB(255, 112, 112, 112),
                                                  fontFamily: "Jost",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 37,
                      child: FlatButton(
                        onPressed: () => this.onAllKitchensButtonPressed(context),
                        color: Color.fromARGB(255, 253, 200, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        textColor: Color.fromARGB(255, 255, 255, 255),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "CONFIRM DELIVERY",
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
//              Row(
//                mainAxisAlignment: MainAxisAlignment.start,
//                crossAxisAlignment: CrossAxisAlignment.center,
//                children: <Widget>[
//                  Container(
//                    height: 24,
//                    margin: EdgeInsets.symmetric(horizontal: 44),
//                    child: Image.asset(
//                        "assets/images/rec-icon.png",
//                        fit: BoxFit.none,
//                      ),
//                  ),
//                  Column(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Text(
//                        "Order Recieved",
//                        textAlign: TextAlign.left,
//                        style: TextStyle(
//                          color: Color.fromARGB(255, 20, 33, 61),
//                          fontFamily: "Proxima Nova",
//                          fontWeight: FontWeight.w400,
//                          fontSize: 14,
//                        ),
//                      ),
//                      Text(
//                        "09.10 AM",
//                        textAlign: TextAlign.left,
//                        style: TextStyle(
//                          color: Color.fromARGB(255, 112, 112, 112),
//                          fontFamily: "Jost",
//                          fontWeight: FontWeight.w400,
//                          fontSize: 12,
//                        ),
//                      ),
//                    ],
//                  ),
//                ],
//              ),
            ],
          ),
        ),
      ),
    );
  }
}