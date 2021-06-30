/*
*  coupons_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/tiffin_widget/tiffin_widget.dart';
import 'package:fudito/values/values.dart';


class CouponsWidget extends StatelessWidget {
  
  void onApplyCodePressed(BuildContext context) {
  
  }
  
  void onApplyCodeTwoPressed(BuildContext context) {
  
  }
  
  void onApplyCodeThreePressed(BuildContext context) {
  
  }
  
  void onApplyCodeFourPressed(BuildContext context) {
  
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text(
          "Offers",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.secondaryText,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 20, 33, 61),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 200, 33),
        elevation: 0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                //margin: EdgeInsets.symmetric(vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Coupons and Deals",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 20, 33, 61),
                            fontFamily: "Proxima Nova",
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        height: 52,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "FUDITONEW",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 20, 33, 61),
                                      fontFamily: "Proxima Nova",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Get flat Rs. 100 discount on first order",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 112, 112, 112),
                                      fontFamily: "Jost",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            Container(
                              width: 62,
                              height: 20,
                              child: FlatButton(
                                onPressed: () => this.onApplyCodePressed(context),
                                color: Color.fromARGB(255, 253, 200, 48),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(3)),
                                ),
                                textColor: Color.fromARGB(255, 255, 255, 255),
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  "APPLY",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontFamily: "Jost",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
//                        Stack(
//                          alignment: Alignment.topCenter,
//                          children: [
//                            Positioned(
//                              left: 0,
//                              top: 48,
//                              right: 0,
//                              child: Container(
//                                height: 49,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 255, 255, 255),
//                                ),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Container(
//                                      height: 35,
//                                      margin: EdgeInsets.only(left: 16, top: 6, right: 16),
//                                      child: Row(
//                                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                                        children: [
//                                          Align(
//                                            alignment: Alignment.topLeft,
//                                            child: Container(
//                                              width: 77,
//                                              height: 35,
//                                              child: Column(
//                                                crossAxisAlignment: CrossAxisAlignment.stretch,
//                                                children: [
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Text(
//                                                      "FUDITO50",
//                                                      textAlign: TextAlign.left,
//                                                      style: TextStyle(
//                                                        color: Color.fromARGB(255, 20, 33, 61),
//                                                        fontFamily: "Proxima Nova",
//                                                        fontWeight: FontWeight.w400,
//                                                        fontSize: 14,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Container(
//                                                      margin: EdgeInsets.only(top: 3),
//                                                      child: Text(
//                                                        "Get up to 50% off",
//                                                        textAlign: TextAlign.left,
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 112, 112, 112),
//                                                          fontFamily: "Jost",
//                                                          fontWeight: FontWeight.w400,
//                                                          fontSize: 10,
//                                                        ),
//                                                      ),
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                            ),
//                                          ),
//                                          Spacer(),
//                                          Align(
//                                            alignment: Alignment.centerLeft,
//                                            child: Container(
//                                              width: 62,
//                                              height: 20,
//                                              child: FlatButton(
//                                                onPressed: () => this.onApplyCodePressed(context),
//                                                color: Color.fromARGB(255, 253, 200, 48),
//                                                shape: RoundedRectangleBorder(
//                                                  borderRadius: BorderRadius.all(Radius.circular(3)),
//                                                ),
//                                                textColor: Color.fromARGB(255, 255, 255, 255),
//                                                padding: EdgeInsets.all(0),
//                                                child: Text(
//                                                  "APPLY",
//                                                  textAlign: TextAlign.center,
//                                                  style: TextStyle(
//                                                    color: Color.fromARGB(255, 255, 255, 255),
//                                                    fontFamily: "Jost",
//                                                    fontWeight: FontWeight.w400,
//                                                    fontSize: 12,
//                                                  ),
//                                                ),
//                                              ),
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                    Spacer(),
//                                    Container(
//                                      height: 2,
//                                      margin: EdgeInsets.only(left: 15, right: 93),
//                                      decoration: BoxDecoration(
//                                        color: Color.fromARGB(255, 234, 234, 234),
//                                      ),
//                                      child: Container(),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            ),
//                            Positioned(
//                              left: 0,
//                              top: 0,
//                              right: 0,
//                              child: Container(
//                                height: 49,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 255, 255, 255),
//                                ),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Container(
//                                      height: 35,
//                                      margin: EdgeInsets.only(left: 16, top: 6, right: 16),
//                                      child: Row(
//                                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                                        children: [
//                                          Align(
//                                            alignment: Alignment.topLeft,
//                                            child: Container(
//                                              width: 163,
//                                              height: 35,
//                                              child: Column(
//                                                crossAxisAlignment: CrossAxisAlignment.stretch,
//                                                children: [
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Text(
//                                                      "FUDITONEW",
//                                                      textAlign: TextAlign.left,
//                                                      style: TextStyle(
//                                                        color: Color.fromARGB(255, 20, 33, 61),
//                                                        fontFamily: "Proxima Nova",
//                                                        fontWeight: FontWeight.w400,
//                                                        fontSize: 14,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Container(
//                                                      margin: EdgeInsets.only(top: 3),
//                                                      child: Text(
//                                                        "Get flat Rs. 100 discount on first order",
//                                                        textAlign: TextAlign.left,
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 112, 112, 112),
//                                                          fontFamily: "Jost",
//                                                          fontWeight: FontWeight.w400,
//                                                          fontSize: 10,
//                                                        ),
//                                                      ),
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                            ),
//                                          ),
//                                          Spacer(),
//                                          Align(
//                                            alignment: Alignment.centerLeft,
//                                            child: Container(
//                                              width: 62,
//                                              height: 20,
//                                              child: FlatButton(
//                                                onPressed: () => this.onApplyCodeTwoPressed(context),
//                                                color: Color.fromARGB(255, 253, 200, 48),
//                                                shape: RoundedRectangleBorder(
//                                                  borderRadius: BorderRadius.all(Radius.circular(3)),
//                                                ),
//                                                textColor: Color.fromARGB(255, 255, 255, 255),
//                                                padding: EdgeInsets.all(0),
//                                                child: Text(
//                                                  "APPLY",
//                                                  textAlign: TextAlign.center,
//                                                  style: TextStyle(
//                                                    color: Color.fromARGB(255, 255, 255, 255),
//                                                    fontFamily: "Jost",
//                                                    fontWeight: FontWeight.w400,
//                                                    fontSize: 12,
//                                                  ),
//                                                ),
//                                              ),
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                    Spacer(),
//                                    Container(
//                                      height: 2,
//                                      margin: EdgeInsets.only(left: 15, right: 93),
//                                      decoration: BoxDecoration(
//                                        color: Color.fromARGB(255, 234, 234, 234),
//                                      ),
//                                      child: Container(),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            ),
//                          ],
//                        ),
                      ),
                      Container(
                        height: 2,
                        margin: EdgeInsets.only(left: 16, right: 94),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 234, 234, 234),
                        ),
                        child: Container(),
                      ),
                      Container(
                        height: 52,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "FUDITONEW",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 20, 33, 61),
                                    fontFamily: "Proxima Nova",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Get flat Rs. 100 discount on first order",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 112, 112, 112),
                                    fontFamily: "Jost",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 62,
                              height: 20,
                              child: FlatButton(
                                onPressed: () => this.onApplyCodeTwoPressed(context),
                                color: Color.fromARGB(255, 253, 200, 48),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(3)),
                                ),
                                textColor: Color.fromARGB(255, 255, 255, 255),
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  "APPLY",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontFamily: "Jost",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
//                        Stack(
//                          alignment: Alignment.topCenter,
//                          children: [
//                            Positioned(
//                              left: 0,
//                              top: 48,
//                              right: 0,
//                              child: Container(
//                                height: 49,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 255, 255, 255),
//                                ),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Container(
//                                      height: 35,
//                                      margin: EdgeInsets.only(left: 16, top: 6, right: 16),
//                                      child: Row(
//                                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                                        children: [
//                                          Align(
//                                            alignment: Alignment.topLeft,
//                                            child: Container(
//                                              width: 77,
//                                              height: 35,
//                                              child: Column(
//                                                crossAxisAlignment: CrossAxisAlignment.stretch,
//                                                children: [
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Text(
//                                                      "FUDITO50",
//                                                      textAlign: TextAlign.left,
//                                                      style: TextStyle(
//                                                        color: Color.fromARGB(255, 20, 33, 61),
//                                                        fontFamily: "Proxima Nova",
//                                                        fontWeight: FontWeight.w400,
//                                                        fontSize: 14,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Container(
//                                                      margin: EdgeInsets.only(top: 3),
//                                                      child: Text(
//                                                        "Get up to 50% off",
//                                                        textAlign: TextAlign.left,
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 112, 112, 112),
//                                                          fontFamily: "Jost",
//                                                          fontWeight: FontWeight.w400,
//                                                          fontSize: 10,
//                                                        ),
//                                                      ),
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                            ),
//                                          ),
//                                          Spacer(),
//                                          Align(
//                                            alignment: Alignment.centerLeft,
//                                            child: Container(
//                                              width: 62,
//                                              height: 20,
//                                              child: FlatButton(
//                                                onPressed: () => this.onApplyCodePressed(context),
//                                                color: Color.fromARGB(255, 253, 200, 48),
//                                                shape: RoundedRectangleBorder(
//                                                  borderRadius: BorderRadius.all(Radius.circular(3)),
//                                                ),
//                                                textColor: Color.fromARGB(255, 255, 255, 255),
//                                                padding: EdgeInsets.all(0),
//                                                child: Text(
//                                                  "APPLY",
//                                                  textAlign: TextAlign.center,
//                                                  style: TextStyle(
//                                                    color: Color.fromARGB(255, 255, 255, 255),
//                                                    fontFamily: "Jost",
//                                                    fontWeight: FontWeight.w400,
//                                                    fontSize: 12,
//                                                  ),
//                                                ),
//                                              ),
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                    Spacer(),
//                                    Container(
//                                      height: 2,
//                                      margin: EdgeInsets.only(left: 15, right: 93),
//                                      decoration: BoxDecoration(
//                                        color: Color.fromARGB(255, 234, 234, 234),
//                                      ),
//                                      child: Container(),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            ),
//                            Positioned(
//                              left: 0,
//                              top: 0,
//                              right: 0,
//                              child: Container(
//                                height: 49,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 255, 255, 255),
//                                ),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Container(
//                                      height: 35,
//                                      margin: EdgeInsets.only(left: 16, top: 6, right: 16),
//                                      child: Row(
//                                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                                        children: [
//                                          Align(
//                                            alignment: Alignment.topLeft,
//                                            child: Container(
//                                              width: 163,
//                                              height: 35,
//                                              child: Column(
//                                                crossAxisAlignment: CrossAxisAlignment.stretch,
//                                                children: [
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Text(
//                                                      "FUDITONEW",
//                                                      textAlign: TextAlign.left,
//                                                      style: TextStyle(
//                                                        color: Color.fromARGB(255, 20, 33, 61),
//                                                        fontFamily: "Proxima Nova",
//                                                        fontWeight: FontWeight.w400,
//                                                        fontSize: 14,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Container(
//                                                      margin: EdgeInsets.only(top: 3),
//                                                      child: Text(
//                                                        "Get flat Rs. 100 discount on first order",
//                                                        textAlign: TextAlign.left,
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 112, 112, 112),
//                                                          fontFamily: "Jost",
//                                                          fontWeight: FontWeight.w400,
//                                                          fontSize: 10,
//                                                        ),
//                                                      ),
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                            ),
//                                          ),
//                                          Spacer(),
//                                          Align(
//                                            alignment: Alignment.centerLeft,
//                                            child: Container(
//                                              width: 62,
//                                              height: 20,
//                                              child: FlatButton(
//                                                onPressed: () => this.onApplyCodeTwoPressed(context),
//                                                color: Color.fromARGB(255, 253, 200, 48),
//                                                shape: RoundedRectangleBorder(
//                                                  borderRadius: BorderRadius.all(Radius.circular(3)),
//                                                ),
//                                                textColor: Color.fromARGB(255, 255, 255, 255),
//                                                padding: EdgeInsets.all(0),
//                                                child: Text(
//                                                  "APPLY",
//                                                  textAlign: TextAlign.center,
//                                                  style: TextStyle(
//                                                    color: Color.fromARGB(255, 255, 255, 255),
//                                                    fontFamily: "Jost",
//                                                    fontWeight: FontWeight.w400,
//                                                    fontSize: 12,
//                                                  ),
//                                                ),
//                                              ),
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                    Spacer(),
//                                    Container(
//                                      height: 2,
//                                      margin: EdgeInsets.only(left: 15, right: 93),
//                                      decoration: BoxDecoration(
//                                        color: Color.fromARGB(255, 234, 234, 234),
//                                      ),
//                                      child: Container(),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            ),
//                          ],
//                        ),
                      ),
                      Container(
                        height: 2,
                        margin: EdgeInsets.only(left: 16, right: 94),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 234, 234, 234),
                        ),
                        child: Container(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Payment Offers",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 20, 33, 61),
                            fontFamily: "Proxima Nova",
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        height: 52,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "FUDITONEW",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 20, 33, 61),
                                    fontFamily: "Proxima Nova",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Get flat Rs. 100 discount on first order",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 112, 112, 112),
                                    fontFamily: "Jost",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 62,
                              height: 20,
                              child: FlatButton(
                                onPressed: () => this.onApplyCodeThreePressed(context),
                                color: Color.fromARGB(255, 253, 200, 48),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(3)),
                                ),
                                textColor: Color.fromARGB(255, 255, 255, 255),
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  "APPLY",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontFamily: "Jost",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
//                        Stack(
//                          alignment: Alignment.topCenter,
//                          children: [
//                            Positioned(
//                              left: 0,
//                              top: 48,
//                              right: 0,
//                              child: Container(
//                                height: 49,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 255, 255, 255),
//                                ),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Container(
//                                      height: 35,
//                                      margin: EdgeInsets.only(left: 16, top: 6, right: 16),
//                                      child: Row(
//                                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                                        children: [
//                                          Align(
//                                            alignment: Alignment.topLeft,
//                                            child: Container(
//                                              width: 77,
//                                              height: 35,
//                                              child: Column(
//                                                crossAxisAlignment: CrossAxisAlignment.stretch,
//                                                children: [
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Text(
//                                                      "FUDITO50",
//                                                      textAlign: TextAlign.left,
//                                                      style: TextStyle(
//                                                        color: Color.fromARGB(255, 20, 33, 61),
//                                                        fontFamily: "Proxima Nova",
//                                                        fontWeight: FontWeight.w400,
//                                                        fontSize: 14,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Container(
//                                                      margin: EdgeInsets.only(top: 3),
//                                                      child: Text(
//                                                        "Get up to 50% off",
//                                                        textAlign: TextAlign.left,
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 112, 112, 112),
//                                                          fontFamily: "Jost",
//                                                          fontWeight: FontWeight.w400,
//                                                          fontSize: 10,
//                                                        ),
//                                                      ),
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                            ),
//                                          ),
//                                          Spacer(),
//                                          Align(
//                                            alignment: Alignment.centerLeft,
//                                            child: Container(
//                                              width: 62,
//                                              height: 20,
//                                              child: FlatButton(
//                                                onPressed: () => this.onApplyCodePressed(context),
//                                                color: Color.fromARGB(255, 253, 200, 48),
//                                                shape: RoundedRectangleBorder(
//                                                  borderRadius: BorderRadius.all(Radius.circular(3)),
//                                                ),
//                                                textColor: Color.fromARGB(255, 255, 255, 255),
//                                                padding: EdgeInsets.all(0),
//                                                child: Text(
//                                                  "APPLY",
//                                                  textAlign: TextAlign.center,
//                                                  style: TextStyle(
//                                                    color: Color.fromARGB(255, 255, 255, 255),
//                                                    fontFamily: "Jost",
//                                                    fontWeight: FontWeight.w400,
//                                                    fontSize: 12,
//                                                  ),
//                                                ),
//                                              ),
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                    Spacer(),
//                                    Container(
//                                      height: 2,
//                                      margin: EdgeInsets.only(left: 15, right: 93),
//                                      decoration: BoxDecoration(
//                                        color: Color.fromARGB(255, 234, 234, 234),
//                                      ),
//                                      child: Container(),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            ),
//                            Positioned(
//                              left: 0,
//                              top: 0,
//                              right: 0,
//                              child: Container(
//                                height: 49,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 255, 255, 255),
//                                ),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Container(
//                                      height: 35,
//                                      margin: EdgeInsets.only(left: 16, top: 6, right: 16),
//                                      child: Row(
//                                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                                        children: [
//                                          Align(
//                                            alignment: Alignment.topLeft,
//                                            child: Container(
//                                              width: 163,
//                                              height: 35,
//                                              child: Column(
//                                                crossAxisAlignment: CrossAxisAlignment.stretch,
//                                                children: [
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Text(
//                                                      "FUDITONEW",
//                                                      textAlign: TextAlign.left,
//                                                      style: TextStyle(
//                                                        color: Color.fromARGB(255, 20, 33, 61),
//                                                        fontFamily: "Proxima Nova",
//                                                        fontWeight: FontWeight.w400,
//                                                        fontSize: 14,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Container(
//                                                      margin: EdgeInsets.only(top: 3),
//                                                      child: Text(
//                                                        "Get flat Rs. 100 discount on first order",
//                                                        textAlign: TextAlign.left,
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 112, 112, 112),
//                                                          fontFamily: "Jost",
//                                                          fontWeight: FontWeight.w400,
//                                                          fontSize: 10,
//                                                        ),
//                                                      ),
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                            ),
//                                          ),
//                                          Spacer(),
//                                          Align(
//                                            alignment: Alignment.centerLeft,
//                                            child: Container(
//                                              width: 62,
//                                              height: 20,
//                                              child: FlatButton(
//                                                onPressed: () => this.onApplyCodeTwoPressed(context),
//                                                color: Color.fromARGB(255, 253, 200, 48),
//                                                shape: RoundedRectangleBorder(
//                                                  borderRadius: BorderRadius.all(Radius.circular(3)),
//                                                ),
//                                                textColor: Color.fromARGB(255, 255, 255, 255),
//                                                padding: EdgeInsets.all(0),
//                                                child: Text(
//                                                  "APPLY",
//                                                  textAlign: TextAlign.center,
//                                                  style: TextStyle(
//                                                    color: Color.fromARGB(255, 255, 255, 255),
//                                                    fontFamily: "Jost",
//                                                    fontWeight: FontWeight.w400,
//                                                    fontSize: 12,
//                                                  ),
//                                                ),
//                                              ),
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                    Spacer(),
//                                    Container(
//                                      height: 2,
//                                      margin: EdgeInsets.only(left: 15, right: 93),
//                                      decoration: BoxDecoration(
//                                        color: Color.fromARGB(255, 234, 234, 234),
//                                      ),
//                                      child: Container(),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            ),
//                          ],
//                        ),
                      ),
                      Container(
                        height: 2,
                        margin: EdgeInsets.only(left: 16, right: 94),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 234, 234, 234),
                        ),
                        child: Container(),
                      ),
                      Container(
                        height: 52,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "FUDITONEW",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 20, 33, 61),
                                    fontFamily: "Proxima Nova",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Get flat Rs. 100 discount on first order",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 112, 112, 112),
                                    fontFamily: "Jost",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 62,
                              height: 20,
                              child: FlatButton(
                                onPressed: () => this.onApplyCodeFourPressed(context),
                                color: Color.fromARGB(255, 253, 200, 48),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(3)),
                                ),
                                textColor: Color.fromARGB(255, 255, 255, 255),
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  "APPLY",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontFamily: "Jost",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
//                        Stack(
//                          alignment: Alignment.topCenter,
//                          children: [
//                            Positioned(
//                              left: 0,
//                              top: 48,
//                              right: 0,
//                              child: Container(
//                                height: 49,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 255, 255, 255),
//                                ),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Container(
//                                      height: 35,
//                                      margin: EdgeInsets.only(left: 16, top: 6, right: 16),
//                                      child: Row(
//                                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                                        children: [
//                                          Align(
//                                            alignment: Alignment.topLeft,
//                                            child: Container(
//                                              width: 77,
//                                              height: 35,
//                                              child: Column(
//                                                crossAxisAlignment: CrossAxisAlignment.stretch,
//                                                children: [
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Text(
//                                                      "FUDITO50",
//                                                      textAlign: TextAlign.left,
//                                                      style: TextStyle(
//                                                        color: Color.fromARGB(255, 20, 33, 61),
//                                                        fontFamily: "Proxima Nova",
//                                                        fontWeight: FontWeight.w400,
//                                                        fontSize: 14,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Container(
//                                                      margin: EdgeInsets.only(top: 3),
//                                                      child: Text(
//                                                        "Get up to 50% off",
//                                                        textAlign: TextAlign.left,
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 112, 112, 112),
//                                                          fontFamily: "Jost",
//                                                          fontWeight: FontWeight.w400,
//                                                          fontSize: 10,
//                                                        ),
//                                                      ),
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                            ),
//                                          ),
//                                          Spacer(),
//                                          Align(
//                                            alignment: Alignment.centerLeft,
//                                            child: Container(
//                                              width: 62,
//                                              height: 20,
//                                              child: FlatButton(
//                                                onPressed: () => this.onApplyCodePressed(context),
//                                                color: Color.fromARGB(255, 253, 200, 48),
//                                                shape: RoundedRectangleBorder(
//                                                  borderRadius: BorderRadius.all(Radius.circular(3)),
//                                                ),
//                                                textColor: Color.fromARGB(255, 255, 255, 255),
//                                                padding: EdgeInsets.all(0),
//                                                child: Text(
//                                                  "APPLY",
//                                                  textAlign: TextAlign.center,
//                                                  style: TextStyle(
//                                                    color: Color.fromARGB(255, 255, 255, 255),
//                                                    fontFamily: "Jost",
//                                                    fontWeight: FontWeight.w400,
//                                                    fontSize: 12,
//                                                  ),
//                                                ),
//                                              ),
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                    Spacer(),
//                                    Container(
//                                      height: 2,
//                                      margin: EdgeInsets.only(left: 15, right: 93),
//                                      decoration: BoxDecoration(
//                                        color: Color.fromARGB(255, 234, 234, 234),
//                                      ),
//                                      child: Container(),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            ),
//                            Positioned(
//                              left: 0,
//                              top: 0,
//                              right: 0,
//                              child: Container(
//                                height: 49,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 255, 255, 255),
//                                ),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Container(
//                                      height: 35,
//                                      margin: EdgeInsets.only(left: 16, top: 6, right: 16),
//                                      child: Row(
//                                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                                        children: [
//                                          Align(
//                                            alignment: Alignment.topLeft,
//                                            child: Container(
//                                              width: 163,
//                                              height: 35,
//                                              child: Column(
//                                                crossAxisAlignment: CrossAxisAlignment.stretch,
//                                                children: [
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Text(
//                                                      "FUDITONEW",
//                                                      textAlign: TextAlign.left,
//                                                      style: TextStyle(
//                                                        color: Color.fromARGB(255, 20, 33, 61),
//                                                        fontFamily: "Proxima Nova",
//                                                        fontWeight: FontWeight.w400,
//                                                        fontSize: 14,
//                                                      ),
//                                                    ),
//                                                  ),
//                                                  Align(
//                                                    alignment: Alignment.topLeft,
//                                                    child: Container(
//                                                      margin: EdgeInsets.only(top: 3),
//                                                      child: Text(
//                                                        "Get flat Rs. 100 discount on first order",
//                                                        textAlign: TextAlign.left,
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 112, 112, 112),
//                                                          fontFamily: "Jost",
//                                                          fontWeight: FontWeight.w400,
//                                                          fontSize: 10,
//                                                        ),
//                                                      ),
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                            ),
//                                          ),
//                                          Spacer(),
//                                          Align(
//                                            alignment: Alignment.centerLeft,
//                                            child: Container(
//                                              width: 62,
//                                              height: 20,
//                                              child: FlatButton(
//                                                onPressed: () => this.onApplyCodeTwoPressed(context),
//                                                color: Color.fromARGB(255, 253, 200, 48),
//                                                shape: RoundedRectangleBorder(
//                                                  borderRadius: BorderRadius.all(Radius.circular(3)),
//                                                ),
//                                                textColor: Color.fromARGB(255, 255, 255, 255),
//                                                padding: EdgeInsets.all(0),
//                                                child: Text(
//                                                  "APPLY",
//                                                  textAlign: TextAlign.center,
//                                                  style: TextStyle(
//                                                    color: Color.fromARGB(255, 255, 255, 255),
//                                                    fontFamily: "Jost",
//                                                    fontWeight: FontWeight.w400,
//                                                    fontSize: 12,
//                                                  ),
//                                                ),
//                                              ),
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                    Spacer(),
//                                    Container(
//                                      height: 2,
//                                      margin: EdgeInsets.only(left: 15, right: 93),
//                                      decoration: BoxDecoration(
//                                        color: Color.fromARGB(255, 234, 234, 234),
//                                      ),
//                                      child: Container(),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            ),
//                          ],
//                        ),
                      ),
                      Container(
                        height: 2,
                        margin: EdgeInsets.only(left: 16, right: 94),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 234, 234, 234),
                        ),
                        child: Container(),
                      ),
                    ],
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