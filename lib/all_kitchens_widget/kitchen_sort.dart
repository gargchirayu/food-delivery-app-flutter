/*
*  edit_information_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';

class KitchenSort extends StatefulWidget {
  @override
  _KitchenSortState createState() => _KitchenSortState();
}

class _KitchenSortState extends State<KitchenSort> {

  int _radioValue=0;

  void _radioValueChange(int value) {
    setState(() {
      _radioValue = value;
    });
  }

  void _sortValueApply()  {
    setState(() {
      switch (_radioValue) {
        case 0:
          print("Nearest");
          break;
        case 1:
          print("Ratings");
          break;
        case 2:
          print("Price");
          break;
        case 3:
          print("Kuch aur");
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
            //child: Container(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: Text(
              "Sort kitchens based on:",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 20, 33, 61),
                fontFamily: "Proxima Nova",
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
          FlatButton(
            onPressed: () {setState(() {
              _radioValue = 0;
            });},
            color: Colors.transparent,
            padding: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Radio(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: Color.fromARGB(255, 253, 200, 48),
                  value: 0,
                  groupValue: _radioValue,
                  onChanged: _radioValueChange,
                ),
                Text(
                  "Nearest to you",
                  style: TextStyle(
                    color: Color.fromARGB(255, 112, 112, 112),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {setState(() {
              _radioValue = 1;
            });},
            color: Colors.transparent,
            padding: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Radio(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: Color.fromARGB(255, 253, 200, 48),
                  value: 1,
                  groupValue: _radioValue,
                  onChanged: _radioValueChange,
                ),
                Text(
                  "Popularity",
                  style: TextStyle(
                    color: Color.fromARGB(255, 112, 112, 112),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {setState(() {
              _radioValue = 2;
            });},
            color: Colors.transparent,
            padding: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Radio(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: Color.fromARGB(255, 253, 200, 48),
                  value: 2,
                  groupValue: _radioValue,
                  onChanged: _radioValueChange,
                ),
                Text(
                  "Cost for a meal",
                  style: TextStyle(
                    color: Color.fromARGB(255, 112, 112, 112),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {setState(() {
              _radioValue = 3;
            });},
            color: Colors.transparent,
            padding: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Radio(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: Color.fromARGB(255, 253, 200, 48),
                  value: 3,
                  groupValue: _radioValue,
                  onChanged: _radioValueChange,
                ),
                Text(
                  "Latest open",
                  style: TextStyle(
                    color: Color.fromARGB(255, 112, 112, 112),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 37,
            margin: EdgeInsets.only(top: 12, bottom: 0),
            child: FlatButton(
              onPressed: () {
                this._sortValueApply();
                Navigator.pop(context);
              },
              color: Color.fromARGB(255, 253, 200, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
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
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
