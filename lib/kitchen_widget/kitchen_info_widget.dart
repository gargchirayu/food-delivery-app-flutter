/*
*  kitchen_info_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fudito/values/values.dart';


class KitchenInfoWidget extends StatelessWidget {
  
  void onWhatsappLinkPressed(BuildContext context) {
  
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 40,
              height: 2,
              margin: EdgeInsets.only(left: 150, right: 150, bottom: 12),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              //child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Mama’s Little Bakery",
                      style: TextStyle(
                        color: Color.fromARGB(255, 20, 33, 61),
                        fontFamily: "Proxima Nova",
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      "North Indian",
                      style: TextStyle(
                        color: Color.fromARGB(255, 112, 112, 112),
                        fontFamily: "Jost",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 44,
                  height: 44,
                  child: Image.asset(
                    "assets/images/logo-icon-14.png",
                    fit: BoxFit.none,
                  ),
                ),
              ],
            ),
            Container(
              height: 1,
              margin: EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 16,
                      height: 16,
                      child: Image.asset(
                        "assets/images/path-13.png",
                        fit: BoxFit.none,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Text(
                        "4.9 (200)",
                        textAlign: TextAlign.center,
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
                Row(
                  children: <Widget>[
                    Container(
                      width: 16,
                      height: 16,
                      child: Image.asset(
                        "assets/images/icon.png",
                        fit: BoxFit.none,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Text(
                        "8 - 12 AM",
                        textAlign: TextAlign.center,
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
                Row(
                  children: <Widget>[
                    Container(
                      width: 16,
                      height: 16,
                      child: Image.asset(
                        "assets/images/rupee-price-11.png",
                        fit: BoxFit.none,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Text(
                        "100 for two",
                        textAlign: TextAlign.center,
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
              ],
            ),
            Container(
              height: 2,
              margin: EdgeInsets.only(top: 14, bottom: 14),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Text(
              "Contact Information",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 20, 33, 61),
                fontFamily: "Proxima Nova",
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  "+91 9876543210",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 112, 112, 112),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Container(
                  width: 35,
                  height: 35,
                  child: FlatButton(
                    onPressed: () => launch('tel:+918287330881'),
                    color: Color.fromARGB(0, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                    ),
                    textColor: Color.fromARGB(255, 0, 0, 0),
                    padding: EdgeInsets.all(0),
                    child: Icon(
                      Icons.call,
                      color: Color.fromARGB(255, 20, 33, 61),
                      size: 20,
                    ),
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  child: FlatButton(
                    onPressed: () => this.onWhatsappLinkPressed(context),
                    color: Color.fromARGB(0, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                    ),
                    textColor: Color.fromARGB(255, 0, 0, 0),
                    padding: EdgeInsets.all(0),
                    child: Image.asset("assets/images/calllink.png",),
                  ),
                ),
              ],
            ),
            Container(
              height: 2,
              margin: EdgeInsets.only(top: 14, bottom: 14),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Row(
              children: <Widget>[
                Text(
                  "Order Hours",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 20, 33, 61),
                    fontFamily: "Proxima Nova",
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Text(
                  "*Delivery time may vary*",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color.fromARGB(255, 112, 112, 112),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.0
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Breakfast",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 112, 112, 112),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "8:00 - 12:00",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 112, 112, 112),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Lunch",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 112, 112, 112),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "11:00 - 14:00",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 112, 112, 112),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Dinner",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 112, 112, 112),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "16:00 - 19:00",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 112, 112, 112),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}