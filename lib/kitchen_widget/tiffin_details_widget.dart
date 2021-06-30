/*
*  tiffin_details_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fudito/kitchen_widget/tiffin_customize_widget.dart';
import 'package:fudito/values/values.dart';


class TiffinDetailsWidget extends StatefulWidget {
  
  @override
  _TiffinDetailsWidgetState createState() => _TiffinDetailsWidgetState();
}

class _TiffinDetailsWidgetState extends State<TiffinDetailsWidget> {

  int sharedValue=0;

  final Map<int, Widget> mealPanels = const <int, Widget>{
    0: Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        'BREAKFAST',
        style: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 14,
        ),
      ),
    ),
    1: Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        'LUNCH',
        style: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 14,
        ),
      ),
    ),
    2: Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        'DINNER',
        style: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 14,
        ),
      ),
    ),
  };

  void onProceedButtonPressed(BuildContext context) {
  Navigator.pop(context);
  showModalBottomSheet(context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      padding: EdgeInsets.only(left: 20, right: 20, top:8),
      height: MediaQuery.of(context).size.height * 0.51,
      decoration: new BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(10.0),
          topRight: const Radius.circular(10.0),
        ),
      ),
      child: TiffinCustomizeWidget(),
    ),
  );
  }

  @override
  Widget build(BuildContext context) {

    final Map<int, Widget> content = <int, Widget>{
      0: Container(
        height: 271,
        margin: EdgeInsets.symmetric(vertical:24.0),
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(26, 253, 200, 48),
              offset: Offset(0, 7),
              blurRadius: 15,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Monday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Tuesday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Wednesday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Thursday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Friday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Saturday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Sunday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
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
      1: Container(
        height: 271,
        margin: EdgeInsets.symmetric(vertical:24.0),
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(26, 253, 200, 48),
              offset: Offset(0, 7),
              blurRadius: 15,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Monday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Tuesday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Wednesday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Thursday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Friday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Saturday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Sunday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
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
      2: Container(
        height: 271,
        margin: EdgeInsets.symmetric(vertical:24.0),
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(26, 253, 200, 48),
              offset: Offset(0, 7),
              blurRadius: 15,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Monday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Tuesday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Wednesday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Thursday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Friday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Saturday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Sunday",
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 33, 61),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "3 Roti, 1 Dal, Curd, Salad",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.primaryText,
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
    };

    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 250, 250, 250),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 40,
              height: 2,
              margin: EdgeInsets.only(left: 140, right: 140, bottom: 16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            CupertinoSegmentedControl<int>(
              padding: EdgeInsets.zero,
              selectedColor: Color.fromARGB(255, 253, 200, 48),
              borderColor: Color.fromARGB(255, 253, 200, 48),
              unselectedColor: Color.fromARGB(255, 255, 255, 255),
              pressedColor: Color.fromARGB(51, 253, 200, 48),
              children: mealPanels,
              onValueChanged: (int val) {
                setState(() {
                  sharedValue = val;
                });
              },
              groupValue: sharedValue,
            ),
            Container(
              child: content[sharedValue],
            ),
            Container(
              height: 37,
              margin: EdgeInsets.only(bottom: 16),
              child: FlatButton(
                onPressed: () => this.onProceedButtonPressed(context),
                color: Color.fromARGB(255, 253, 200, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                textColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.all(0),
                child: Text(
                  "PROCEED",
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
//              height: 414,
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
//                      margin: EdgeInsets.only(top: 9),
//                      child: Image.asset(
//                        "assets/images/bar.png",
//                        fit: BoxFit.none,
//                      ),
//                    ),
//                  ),
//                  Container(
//                    height: 39,
//                    margin: EdgeInsets.only(left: 16, top: 12, right: 18),
//                    child: Container(),
//                  ),
//                  Spacer(),
//                  Container(
//                    height: 252,
//                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 24),
//                    decoration: BoxDecoration(
//                      color: Color.fromARGB(255, 255, 255, 255),
//                      boxShadow: [
//                        BoxShadow(
//                          color: Color.fromARGB(26, 253, 185, 0),
//                          offset: Offset(0, 7),
//                          blurRadius: 20,
//                        ),
//                      ],
//                      borderRadius: BorderRadius.all(Radius.circular(10)),
//                    ),
//                    child: Column(
//                      crossAxisAlignment: CrossAxisAlignment.stretch,
//                      children: [
//                        Container(
//                          height: 29,
//                          margin: EdgeInsets.only(left: 9, top: 8, right: 9),
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                            children: [
//                              Container(
//                                height: 20,
//                                margin: EdgeInsets.only(left: 8, right: 6),
//                                child: Row(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Align(
//                                      alignment: Alignment.topLeft,
//                                      child: Text(
//                                        "Monday",
//                                        textAlign: TextAlign.left,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 20, 33, 61),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 14,
//                                        ),
//                                      ),
//                                    ),
//                                    Spacer(),
//                                    Align(
//                                      alignment: Alignment.topLeft,
//                                      child: Container(
//                                        width: 212,
//                                        margin: EdgeInsets.only(top: 1),
//                                        child: Text(
//                                          "3 Roti, 1 Dal, Curd, Salad",
//                                          textAlign: TextAlign.right,
//                                          style: TextStyle(
//                                            color: AppColors.primaryText,
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                              Spacer(),
//                              Container(
//                                height: 2,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 234, 234, 234),
//                                ),
//                                child: Container(),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Container(
//                          height: 29,
//                          margin: EdgeInsets.only(left: 9, top: 7, right: 9),
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                            children: [
//                              Container(
//                                height: 20,
//                                margin: EdgeInsets.only(left: 8, right: 6),
//                                child: Row(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Align(
//                                      alignment: Alignment.topLeft,
//                                      child: Text(
//                                        "Tuesday",
//                                        textAlign: TextAlign.left,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 20, 33, 61),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 14,
//                                        ),
//                                      ),
//                                    ),
//                                    Spacer(),
//                                    Align(
//                                      alignment: Alignment.topLeft,
//                                      child: Container(
//                                        width: 212,
//                                        margin: EdgeInsets.only(top: 1),
//                                        child: Text(
//                                          "3 Roti, 1 Dal, Curd, Salad",
//                                          textAlign: TextAlign.right,
//                                          style: TextStyle(
//                                            color: AppColors.primaryText,
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                              Spacer(),
//                              Container(
//                                height: 2,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 234, 234, 234),
//                                ),
//                                child: Container(),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Container(
//                          height: 29,
//                          margin: EdgeInsets.only(left: 9, top: 7, right: 9),
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                            children: [
//                              Container(
//                                height: 20,
//                                margin: EdgeInsets.only(left: 9, right: 6),
//                                child: Row(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Align(
//                                      alignment: Alignment.topLeft,
//                                      child: Text(
//                                        "Wednesday",
//                                        textAlign: TextAlign.left,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 20, 33, 61),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 14,
//                                        ),
//                                      ),
//                                    ),
//                                    Spacer(),
//                                    Align(
//                                      alignment: Alignment.topLeft,
//                                      child: Container(
//                                        width: 212,
//                                        margin: EdgeInsets.only(top: 1),
//                                        child: Text(
//                                          "3 Roti, 1 Dal, Curd, Salad",
//                                          textAlign: TextAlign.right,
//                                          style: TextStyle(
//                                            color: AppColors.primaryText,
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                              Spacer(),
//                              Container(
//                                height: 2,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 234, 234, 234),
//                                ),
//                                child: Container(),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Container(
//                          height: 29,
//                          margin: EdgeInsets.only(left: 9, top: 7, right: 9),
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                            children: [
//                              Container(
//                                height: 20,
//                                margin: EdgeInsets.only(left: 9, right: 6),
//                                child: Row(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Align(
//                                      alignment: Alignment.topLeft,
//                                      child: Text(
//                                        "Thursday",
//                                        textAlign: TextAlign.left,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 20, 33, 61),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 14,
//                                        ),
//                                      ),
//                                    ),
//                                    Spacer(),
//                                    Align(
//                                      alignment: Alignment.topLeft,
//                                      child: Container(
//                                        width: 212,
//                                        margin: EdgeInsets.only(top: 1),
//                                        child: Text(
//                                          "3 Roti, 1 Dal, Curd, Salad",
//                                          textAlign: TextAlign.right,
//                                          style: TextStyle(
//                                            color: AppColors.primaryText,
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                              Spacer(),
//                              Container(
//                                height: 2,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 234, 234, 234),
//                                ),
//                                child: Container(),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Container(
//                          height: 29,
//                          margin: EdgeInsets.only(left: 9, top: 7, right: 9),
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                            children: [
//                              Container(
//                                height: 20,
//                                margin: EdgeInsets.only(left: 9, right: 6),
//                                child: Row(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Align(
//                                      alignment: Alignment.topLeft,
//                                      child: Text(
//                                        "Friday",
//                                        textAlign: TextAlign.left,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 20, 33, 61),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 14,
//                                        ),
//                                      ),
//                                    ),
//                                    Spacer(),
//                                    Align(
//                                      alignment: Alignment.topLeft,
//                                      child: Container(
//                                        width: 212,
//                                        margin: EdgeInsets.only(top: 1),
//                                        child: Text(
//                                          "3 Roti, 1 Dal, Curd, Salad",
//                                          textAlign: TextAlign.right,
//                                          style: TextStyle(
//                                            color: AppColors.primaryText,
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                              Spacer(),
//                              Container(
//                                height: 2,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 234, 234, 234),
//                                ),
//                                child: Container(),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Spacer(),
//                        Container(
//                          height: 29,
//                          margin: EdgeInsets.only(left: 9, right: 9, bottom: 7),
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                            children: [
//                              Container(
//                                height: 20,
//                                margin: EdgeInsets.only(left: 9, right: 6),
//                                child: Row(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  children: [
//                                    Align(
//                                      alignment: Alignment.topLeft,
//                                      child: Text(
//                                        "Saturday",
//                                        textAlign: TextAlign.left,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 20, 33, 61),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 14,
//                                        ),
//                                      ),
//                                    ),
//                                    Spacer(),
//                                    Align(
//                                      alignment: Alignment.topLeft,
//                                      child: Container(
//                                        width: 212,
//                                        margin: EdgeInsets.only(top: 1),
//                                        child: Text(
//                                          "3 Roti, 1 Dal, Curd, Salad",
//                                          textAlign: TextAlign.right,
//                                          style: TextStyle(
//                                            color: AppColors.primaryText,
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                              Spacer(),
//                              Container(
//                                height: 2,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 234, 234, 234),
//                                ),
//                                child: Container(),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Container(
//                          height: 22,
//                          margin: EdgeInsets.only(left: 17, right: 15, bottom: 6),
//                          child: Row(
//                            children: [
//                              Text(
//                                "Sunday",
//                                textAlign: TextAlign.left,
//                                style: TextStyle(
//                                  color: Color.fromARGB(255, 20, 33, 61),
//                                  fontFamily: "Jost",
//                                  fontWeight: FontWeight.w400,
//                                  fontSize: 14,
//                                ),
//                              ),
//                              Spacer(),
//                              Container(
//                                width: 212,
//                                child: Text(
//                                  "3 Roti, 1 Dal, Curd, Salad",
//                                  textAlign: TextAlign.right,
//                                  style: TextStyle(
//                                    color: AppColors.primaryText,
//                                    fontFamily: "Jost",
//                                    fontWeight: FontWeight.w400,
//                                    fontSize: 12,
//                                  ),
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Container(
//                    height: 37,
//                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
//                    child: FlatButton(
//                      onPressed: () => this.onProceedButtonPressed(context),
//                      color: Color.fromARGB(255, 253, 200, 48),
//                      shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.all(Radius.circular(5)),
//                      ),
//                      textColor: Color.fromARGB(255, 255, 255, 255),
//                      padding: EdgeInsets.all(0),
//                      child: Text(
//                        "PROCEED",
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