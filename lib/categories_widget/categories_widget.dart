/*
*  categories_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/shared/global_variables.dart';
import 'package:fudito/tab_group_one_tab_bar_widget/tab_group_one_tab_bar_widget.dart';
import 'package:flutter/services.dart';
import 'package:fudito/values/values.dart';


class CategoriesWidget extends StatefulWidget {

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {

  @override
  void initState() {
    _updateAppbar();
    super.initState();
  }

  void _updateAppbar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  void onBreakfastPressed(BuildContext context) {
    category = 0;
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TabGroupOneTabBarWidget()));
  }

  void onLunchPressed(BuildContext context) {
    category = 1;
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TabGroupOneTabBarWidget()));
  }

  void onDinnerPressed(BuildContext context) {
    category = 2;
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TabGroupOneTabBarWidget()));
  }

  void onDessertPressed(BuildContext context) {
    category = 3;
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TabGroupOneTabBarWidget()));
  }

  void onTiffinPressed(BuildContext context) {
    category = 4;
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TabGroupOneTabBarWidget()));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        height: 115,
                        padding: EdgeInsets.only(top: 44, right: 16, left: 16, bottom: 12),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/path-19.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Select a Meal",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 20, 33, 61),
                                    fontFamily: "Proxima Nova",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  "Get a freshly prepared home-cooked meal",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 111, 88, 21),
                                    fontFamily: "Jost",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(22)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(80, 112, 112, 112),
                                    offset: Offset(0, 5),
                                    blurRadius: 10,
                                  ),
                                ]
                              ),
                              child: Center(
                                child: IconButton(
                                  onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TabGroupOneTabBarWidget())) ,
                                  icon: Icon(
                                      Icons.close,
                                      size: 30,
                                      color: Color.fromARGB(255, 20, 33, 61)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 134,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(41, 253, 200, 48),
                              offset: Offset(0, 7),
                              blurRadius: 15,
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/anshu-a-kusgqygrgse-unsplash-3.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: FlatButton(
                            onPressed: () => this.onBreakfastPressed(context),
                            color: Color.fromARGB(255, 253, 200, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                            ),
                            textColor: Color.fromARGB(255, 255, 255, 255),
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "Breakfast",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "Jost",
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 134,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 134,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(41, 253, 200, 48),
                                      offset: Offset(0, 7),
                                      blurRadius: 15,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/18716-3.png",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: FlatButton(
                                    onPressed: () => this.onLunchPressed(context),
                                    color: Color.fromARGB(255, 253, 200, 48),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(9)),
                                    ),
                                    textColor: Color.fromARGB(255, 255, 255, 255),
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                      "Lunch",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontFamily: "Jost",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 134,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(41, 253, 200, 48),
                                      offset: Offset(0, 7),
                                      blurRadius: 15,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/409184-pd1nc8-930-3.png",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                  child: FlatButton(
                                    onPressed: () => this.onDinnerPressed(context),
                                    color: Color.fromARGB(255, 253, 200, 48),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(9)),
                                    ),
                                    textColor: Color.fromARGB(255, 255, 255, 255),
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                      "Dinner",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontFamily: "Jost",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 134,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(41, 253, 200, 48),
                              offset: Offset(0, 7),
                              blurRadius: 15,
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/3642805-3.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: FlatButton(
                            onPressed: () => this.onDessertPressed(context),
                            color: Color.fromARGB(255, 253, 200, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                            ),
                            textColor: Color.fromARGB(255, 255, 255, 255),
                            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                            child: Text(
                              "Cakes &\nChocolates",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "Jost",
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Skip the hassle",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 20, 33, 61),
                            fontFamily: "Proxima Nova",
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16, right: 16, top: 4),
                        child: Text(
                          "Subscribe to a kitchen and enjoy timely meals everyday",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112),
                            fontFamily: "Jost",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        height: 134,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(41, 253, 200, 48),
                              offset: Offset(0, 7),
                              blurRadius: 15,
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/s-well-vbuwd0zqcnu-unsplash-3.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: FlatButton(
                            onPressed: () => this.onTiffinPressed(context),
                            color: Color.fromARGB(255, 253, 200, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                            ),
                            textColor: Color.fromARGB(255, 255, 255, 255),
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "Tiffin",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "Jost",
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
//      Container(
//        constraints: BoxConstraints.expand(),
//        height: MediaQuery.of(context).size.height,
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          mainAxisSize: MainAxisSize.min,
//          children: [
//            Expanded(
//              flex: 1,
//              child: Column(
//                children: <Widget>[
//                  SingleChildScrollView(
//                    child: Column(
//                      crossAxisAlignment: CrossAxisAlignment.stretch,
////                  mainAxisSize: MainAxisSize.min,
//                      children: [
//                        Container(
//                          height: 109,
//                          child: Stack(
//                            children: [
//                              Positioned(
//                                left: 0,
//                                top: 0,
//                                right: 0,
//                                child: Image.asset(
//                                  "assets/images/path-19.png",
//                                  fit: BoxFit.fill,
//                                ),
//                              ),
//                              Positioned(
//                                left: 16,
//                                top: 37,
//                                child: Column(
//                                  //crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Align(
//                                      alignment: Alignment.topLeft,
//                                      child: Text(
//                                        "Select a Meal",
//                                        textAlign: TextAlign.left,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 20, 33, 61),
//                                          fontFamily: "Proxima Nova",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 24,
//                                        ),
//                                      ),
//                                    ),
//                                    Align(
//                                      alignment: Alignment.topLeft,
//                                      child: Container(
//                                        margin: EdgeInsets.only(top: 3),
//                                        child: Text(
//                                          "Get a freshly prepared home-cooked meal",
//                                          textAlign: TextAlign.left,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 112, 112, 112),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 14,
//                                          ),
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Container(
//                          height: 134,
//                          margin: EdgeInsets.only(left: 20, top: 16, right: 19),
//                          decoration: BoxDecoration(
//                            color: Color.fromARGB(255, 255, 255, 255),
//                            boxShadow: [
//                              BoxShadow(
//                                color: Color.fromARGB(41, 253, 200, 48),
//                                offset: Offset(0, 7),
//                                blurRadius: 15,
//                              ),
//                            ],
//                            borderRadius: BorderRadius.all(Radius.circular(15)),
//                          ),
//                          child: Stack(
//                            alignment: Alignment.center,
//                            children: [
//                              Positioned(
//                                left: 0,
//                                right: 1,
//                                child: Container(
//                                  height: 134,
//                                  decoration: BoxDecoration(
//                                    boxShadow: [
//                                      BoxShadow(
//                                        color: Color.fromARGB(26, 251, 217, 0),
//                                        offset: Offset(0, 7),
//                                        blurRadius: 15,
//                                      ),
//                                    ],
//                                  ),
//                                  child: Image.asset(
//                                    "assets/images/anshu-a-kusgqygrgse-unsplash-3.png",
//                                    fit: BoxFit.cover,
//                                  ),
//                                ),
//                              ),
//                              Positioned(
//                                child: FlatButton(
//                                  onPressed: () => this.onBreakfastPressed(context),
//                                  color: Color.fromARGB(255, 253, 200, 48),
//                                  shape: RoundedRectangleBorder(
//                                    borderRadius: BorderRadius.all(Radius.circular(9)),
//                                  ),
//                                  textColor: Color.fromARGB(255, 255, 255, 255),
//                                  padding: EdgeInsets.all(0),
//                                  child: Text(
//                                    "Breakfast",
//                                    textAlign: TextAlign.center,
//                                    style: TextStyle(
//                                      color: Color.fromARGB(255, 255, 255, 255),
//                                      fontFamily: "Jost",
//                                      fontWeight: FontWeight.w400,
//                                      fontSize: 16,
//                                    ),
//                                  ),
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Container(
//                          height: 134,
//                          margin: EdgeInsets.only(left: 20, top: 10, right: 20),
//                          child: Row(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: [
//                              Expanded(
//                                flex: 1,
//                                child: Container(
//                                  height: 134,
//                                  margin: EdgeInsets.only(right: 10),
//                                  decoration: BoxDecoration(
//                                    color: Color.fromARGB(255, 255, 255, 255),
//                                    boxShadow: [
//                                      BoxShadow(
//                                        color: Color.fromARGB(41, 253, 200, 48),
//                                        offset: Offset(0, 7),
//                                        blurRadius: 15,
//                                      ),
//                                    ],
//                                    borderRadius: BorderRadius.all(Radius.circular(15)),
//                                  ),
//                                  child: Stack(
//                                    alignment: Alignment.center,
//                                    children: [
//                                      Positioned(
//                                        left: 0,
//                                        right: 0,
//                                        child: Container(
//                                          height: 134,
//                                          decoration: BoxDecoration(
//                                            boxShadow: [
//                                              BoxShadow(
//                                                color: Color.fromARGB(26, 251, 217, 0),
//                                                offset: Offset(0, 7),
//                                                blurRadius: 15,
//                                              ),
//                                            ],
//                                          ),
//                                          child: Image.asset(
//                                            "assets/images/18716-3.png",
//                                            fit: BoxFit.cover,
//                                          ),
//                                        ),
//                                      ),
//                                      Positioned(
//                                        child: FlatButton(
//                                          onPressed: () => this.onLunchPressed(context),
//                                          color: Color.fromARGB(255, 253, 200, 48),
//                                          shape: RoundedRectangleBorder(
//                                            borderRadius: BorderRadius.all(Radius.circular(9)),
//                                          ),
//                                          textColor: Color.fromARGB(255, 255, 255, 255),
//                                          padding: EdgeInsets.all(0),
//                                          child: Text(
//                                            "Lunch",
//                                            textAlign: TextAlign.center,
//                                            style: TextStyle(
//                                              color: Color.fromARGB(255, 255, 255, 255),
//                                              fontFamily: "Jost",
//                                              fontWeight: FontWeight.w400,
//                                              fontSize: 16,
//                                            ),
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              ),
//                              Expanded(
//                                flex: 1,
//                                child: Container(
//                                  height: 134,
//                                  margin: EdgeInsets.only(left: 10),
//                                  decoration: BoxDecoration(
//                                    color: Color.fromARGB(255, 255, 255, 255),
//                                    boxShadow: [
//                                      BoxShadow(
//                                        color: Color.fromARGB(41, 253, 200, 48),
//                                        offset: Offset(0, 7),
//                                        blurRadius: 15,
//                                      ),
//                                    ],
//                                    borderRadius: BorderRadius.all(Radius.circular(15)),
//                                  ),
//                                  child: Stack(
//                                    alignment: Alignment.center,
//                                    children: [
//                                      Positioned(
//                                        left: 0,
//                                        right: 0,
//                                        child: Container(
//                                          height: 134,
//                                          decoration: BoxDecoration(
//                                            boxShadow: [
//                                              BoxShadow(
//                                                color: Color.fromARGB(26, 251, 217, 0),
//                                                offset: Offset(0, 7),
//                                                blurRadius: 15,
//                                              ),
//                                            ],
//                                          ),
//                                          child: Image.asset(
//                                            "assets/images/409184-pd1nc8-930-3.png",
//                                            fit: BoxFit.cover,
//                                          ),
//                                        ),
//                                      ),
//                                      Positioned(
//                                        child: FlatButton(
//                                          onPressed: () => this.onDinnerPressed(context),
//                                          color: Color.fromARGB(255, 253, 200, 48),
//                                          shape: RoundedRectangleBorder(
//                                            borderRadius: BorderRadius.all(Radius.circular(9)),
//                                          ),
//                                          textColor: Color.fromARGB(255, 255, 255, 255),
//                                          padding: EdgeInsets.all(0),
//                                          child: Text(
//                                            "Dinner",
//                                            textAlign: TextAlign.center,
//                                            style: TextStyle(
//                                              color: Color.fromARGB(255, 255, 255, 255),
//                                              fontFamily: "Jost",
//                                              fontWeight: FontWeight.w400,
//                                              fontSize: 16,
//                                            ),
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Container(
//                          height: 134,
//                          margin: EdgeInsets.only(left: 20, top: 10, right: 20),
//                          decoration: BoxDecoration(
//                            color: Color.fromARGB(255, 255, 255, 255),
//                            boxShadow: [
//                              BoxShadow(
//                                color: Color.fromARGB(41, 253, 200, 48),
//                                offset: Offset(0, 7),
//                                blurRadius: 15,
//                              ),
//                            ],
//                            borderRadius: BorderRadius.all(Radius.circular(15)),
//                          ),
//                          child: Stack(
//                            alignment: Alignment.center,
//                            children: [
//                              Positioned(
//                                left: 0,
//                                right: 0,
//                                child: Container(
//                                  height: 134,
//                                  decoration: BoxDecoration(
//                                    boxShadow: [
//                                      BoxShadow(
//                                        color: Color.fromARGB(26, 251, 217, 0),
//                                        offset: Offset(0, 7),
//                                        blurRadius: 15,
//                                      ),
//                                    ],
//                                  ),
//                                  child: Image.asset(
//                                    "assets/images/3642805-3.png",
//                                    fit: BoxFit.cover,
//                                  ),
//                                ),
//                              ),
//                              Positioned(
//                                child: FlatButton(
//                                  onPressed: () => this.onDessertPressed(context),
//                                  color: Color.fromARGB(255, 253, 200, 48),
//                                  shape: RoundedRectangleBorder(
//                                    borderRadius: BorderRadius.all(Radius.circular(9)),
//                                  ),
//                                  textColor: Color.fromARGB(255, 255, 255, 255),
//                                  padding: EdgeInsets.all(0),
//                                  child: Text(
//                                    "Cakes &\nChocolates",
//                                    textAlign: TextAlign.center,
//                                    style: TextStyle(
//                                      color: Color.fromARGB(255, 255, 255, 255),
//                                      fontFamily: "Jost",
//                                      fontWeight: FontWeight.w400,
//                                      fontSize: 16,
//                                    ),
//                                  ),
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Align(
//                          alignment: Alignment.topLeft,
//                          child: Container(
//                            width: 327,
//                            height: 52,
//                            margin: EdgeInsets.only(left: 15, top: 16),
//                            child: Column(
//                              crossAxisAlignment: CrossAxisAlignment.stretch,
//                              children: [
//                                Align(
//                                  alignment: Alignment.topLeft,
//                                  child: Text(
//                                    "Skip the hassle",
//                                    textAlign: TextAlign.left,
//                                    style: TextStyle(
//                                      color: Color.fromARGB(255, 20, 33, 61),
//                                      fontFamily: "Proxima Nova",
//                                      fontWeight: FontWeight.w400,
//                                      fontSize: 24,
//                                    ),
//                                  ),
//                                ),
//                                Spacer(),
//                                Text(
//                                  "Subscribe to a kitchen and enjoy timely meals everyday",
//                                  textAlign: TextAlign.left,
//                                  style: TextStyle(
//                                    color: Color.fromARGB(255, 112, 112, 112),
//                                    fontFamily: "Jost",
//                                    fontWeight: FontWeight.w400,
//                                    fontSize: 14,
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                        ),
//                        Spacer(),
//                        Container(
//                          height: 134,
//                          margin: EdgeInsets.only(left: 20, right: 20, bottom: 45),
//                          decoration: BoxDecoration(
//                            color: Color.fromARGB(255, 255, 255, 255),
//                            boxShadow: [
//                              BoxShadow(
//                                color: Color.fromARGB(41, 253, 200, 48),
//                                offset: Offset(0, 7),
//                                blurRadius: 15,
//                              ),
//                            ],
//                            borderRadius: BorderRadius.all(Radius.circular(15)),
//                          ),
//                          child: Stack(
//                            alignment: Alignment.center,
//                            children: [
//                              Positioned(
//                                left: 0,
//                                right: 0,
//                                child: Container(
//                                  height: 134,
//                                  decoration: BoxDecoration(
//                                    boxShadow: [
//                                      BoxShadow(
//                                        color: Color.fromARGB(26, 251, 217, 0),
//                                        offset: Offset(0, 7),
//                                        blurRadius: 15,
//                                      ),
//                                    ],
//                                  ),
//                                  child: Image.asset(
//                                    "assets/images/s-well-vbuwd0zqcnu-unsplash-3.png",
//                                    fit: BoxFit.cover,
//                                  ),
//                                ),
//                              ),
//                              Positioned(
//                                child: FlatButton(
//                                  onPressed: () => this.onTiffinPressed(context),
//                                  color: Color.fromARGB(255, 253, 200, 48),
//                                  shape: RoundedRectangleBorder(
//                                    borderRadius: BorderRadius.all(Radius.circular(9)),
//                                  ),
//                                  textColor: Color.fromARGB(255, 255, 255, 255),
//                                  padding: EdgeInsets.all(0),
//                                  child: Text(
//                                    "Tiffin",
//                                    textAlign: TextAlign.center,
//                                    style: TextStyle(
//                                      color: Color.fromARGB(255, 255, 255, 255),
//                                      fontFamily: "Jost",
//                                      fontWeight: FontWeight.w400,
//                                      fontSize: 16,
//                                    ),
//                                  ),
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),
    );
  }
}