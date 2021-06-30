/*
*  add_to_tiffin_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fudito/values/values.dart';


class AddToTiffinWidget extends StatefulWidget {
  
  @override
  _AddToTiffinWidgetState createState() => _AddToTiffinWidgetState();
}

class _AddToTiffinWidgetState extends State<AddToTiffinWidget> {

  void onOrderPressed(BuildContext context) {
    //stuff
    Navigator.pop(context);
  }

  int quantity = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.white,
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
            Text(
              "Rajma Rice",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 20, 33, 61),
                fontFamily: "Proxima Nova",
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            Text(
              "Lorem Ipsum, Dolor Sit, Amet Lorem Ipsum, Dolor Sit, Amet",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 112, 112, 112),
                fontFamily: "Jost",
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            Container(
              height: 2,
              margin: EdgeInsets.only(top: 8, bottom: 16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              //child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 75,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 25,
                        height: 25,
                        child: Center(
                          child: FlatButton(
                            onPressed: quantity==1 ? null :
                                () {
                              setState(() {
                                --quantity;
                              });
                            },
                            color: Color.fromARGB(0, 0, 0, 0),
                            textColor: Color.fromARGB(255, 0, 0, 0),
                            padding: EdgeInsets.all(0),
                            child: Center(
                              child: Container(
                                height: 1.5,
                                width: 10,
                                color: Color.fromARGB(255, 253, 200, 48),
                              ),
                            ),
                            //Image.asset("assets/images/sub-button.png",),
                          ),
                        ),
                      ),
                      Container(
                        width:25,
                        height: 25,
                        child: Center(
                          child: Text(
                            quantity.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 20, 33, 61),
                              fontFamily: "Jost",
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        child: Center(
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                ++quantity;
                              });
                            },
                            color: Color.fromARGB(0, 0, 0, 0),
                            textColor: Color.fromARGB(255, 0, 0, 0),
                            padding: EdgeInsets.all(0),
                            child: Icon(
                              Icons.add,
                              color: Color.fromARGB(255, 253, 200, 48)
                            ),
                            //Image.asset("assets/images/add-button.png",),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 37,
              margin: EdgeInsets.symmetric(vertical: 16),
              child: FlatButton(
                onPressed: () => this.onOrderPressed(context),
                color: Color.fromARGB(255, 253, 200, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                textColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.all(0),
                child: Text(
                  "ADD TO TIFFIN",
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

//            Container(
//              height: 178,
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
//                      width: 42,
//                      height: 2,
//                      margin: EdgeInsets.only(top: 3),
//                      child: Image.asset(
//                        "assets/images/bar.png",
//                        fit: BoxFit.none,
//                      ),
//                    ),
//                  ),
//                  Align(
//                    alignment: Alignment.topLeft,
//                    child: Container(
//                      margin: EdgeInsets.only(left: 16, top: 13),
//                      child: Text(
//                        "Rajma Rice",
//                        textAlign: TextAlign.center,
//                        style: TextStyle(
//                          color: Color.fromARGB(255, 20, 33, 61),
//                          fontFamily: "Proxima Nova",
//                          fontWeight: FontWeight.w700,
//                          fontSize: 20,
//                        ),
//                      ),
//                    ),
//                  ),
//                  Align(
//                    alignment: Alignment.topLeft,
//                    child: Container(
//                      margin: EdgeInsets.only(left: 16, top: 4),
//                      child: Text(
//                        "Lorem Ipsum, Dolor Sit, Amet Lorem Ipsum, Dolor Sit, Amet",
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
//                    height: 2,
//                    margin: EdgeInsets.only(left: 15, top: 6, right: 15),
//                    decoration: BoxDecoration(
//                      color: Color.fromARGB(255, 234, 234, 234),
//                    ),
//                    child: Container(),
//                  ),
//                  Align(
//                    alignment: Alignment.topCenter,
//                    child: Container(
//                      width: 60,
//                      height: 20,
//                      margin: EdgeInsets.only(top: 19),
//                      child: Stack(
//                        alignment: Alignment.centerRight,
//                        children: [
//                          Positioned(
//                            left: 0,
//                            child: FlatButton(
//                              onPressed: () => this.onLessPressed(context),
//                              color: Color.fromARGB(0, 0, 0, 0),
//                              shape: RoundedRectangleBorder(
//                                borderRadius: BorderRadius.all(Radius.circular(0)),
//                              ),
//                              textColor: Color.fromARGB(255, 0, 0, 0),
//                              padding: EdgeInsets.all(0),
//                              child: Row(
//                                mainAxisAlignment: MainAxisAlignment.center,
//                                children: [
//                                  Image.asset("assets/images/sub-button.png",),
//                                  SizedBox(
//                                    width: 10,
//                                  ),
//                                  Text(
//                                    "",
//                                    textAlign: TextAlign.left,
//                                    style: TextStyle(
//                                      color: Color.fromARGB(255, 0, 0, 0),
//                                      fontWeight: FontWeight.w400,
//                                      fontSize: 12,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          ),
//                          Positioned(
//                            right: 2,
//                            child: Row(
//                              crossAxisAlignment: CrossAxisAlignment.stretch,
//                              children: [
//                                Align(
//                                  alignment: Alignment.centerLeft,
//                                  child: Text(
//                                    "1",
//                                    textAlign: TextAlign.center,
//                                    style: TextStyle(
//                                      color: Color.fromARGB(255, 20, 33, 61),
//                                      fontFamily: "Jost",
//                                      fontWeight: FontWeight.w400,
//                                      fontSize: 14,
//                                    ),
//                                  ),
//                                ),
//                                Spacer(),
//                                Align(
//                                  alignment: Alignment.centerLeft,
//                                  child: Container(
//                                    width: 25,
//                                    height: 20,
//                                    child: FlatButton(
//                                      onPressed: () => this.onAddPressed(context),
//                                      color: Color.fromARGB(0, 0, 0, 0),
//                                      shape: RoundedRectangleBorder(
//                                        borderRadius: BorderRadius.all(Radius.circular(0)),
//                                      ),
//                                      textColor: Color.fromARGB(255, 0, 0, 0),
//                                      padding: EdgeInsets.all(0),
//                                      child: Row(
//                                        mainAxisAlignment: MainAxisAlignment.center,
//                                        children: [
//                                          Image.asset("assets/images/add-button.png",),
//                                          SizedBox(
//                                            width: 10,
//                                          ),
//                                          Text(
//                                            "",
//                                            textAlign: TextAlign.left,
//                                            style: TextStyle(
//                                              color: Color.fromARGB(255, 0, 0, 0),
//                                              fontWeight: FontWeight.w400,
//                                              fontSize: 12,
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                        ],
//                      ),
//                    ),
//                  ),
//                  Spacer(),
//                  Container(
//                    height: 37,
//                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
//                    child: FlatButton(
//                      onPressed: () => this.onOrderPressed(context),
//                      color: Color.fromARGB(255, 253, 200, 48),
//                      shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.all(Radius.circular(5)),
//                      ),
//                      textColor: Color.fromARGB(255, 255, 255, 255),
//                      padding: EdgeInsets.all(0),
//                      child: Text(
//                        "ADD TO TIFFIN",
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
          ],
        ),
      ),
    );
  }
}