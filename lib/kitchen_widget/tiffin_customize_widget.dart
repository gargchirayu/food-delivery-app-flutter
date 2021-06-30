/*
*  tiffin_customize_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/values/values.dart';


class TiffinCustomizeWidget extends StatefulWidget {
  
  @override
  _TiffinCustomizeWidgetState createState() => _TiffinCustomizeWidgetState();
}

class _TiffinCustomizeWidgetState extends State<TiffinCustomizeWidget> {

  void onOrderButtonPressed(BuildContext context) {
    Navigator.pop(context);
  }

//  void onMonPressed(BuildContext context) {
//
//  }
//
//  void onTuePressed(BuildContext context) {
//
//  }
//
//  void onWedPressed(BuildContext context) {
//
//  }
//
//  void onThuPressed(BuildContext context) {
//
//  }
//
//  void onFriPressed(BuildContext context) {
//
//  }
//
//  void onSatPressed(BuildContext context) {
//
//  }
//
//  void onSunPressed(BuildContext context) {
//
//  }
  
  var days = ["Mon, ", "Tue, ", "Wed, ", "Thu, ", "Fri, ", "Sat, ", "Sun"];

  var monColor = Color.fromARGB(255, 253, 200, 48);
  var tueColor = Color.fromARGB(255, 253, 200, 48);
  var wedColor = Color.fromARGB(255, 253, 200, 48);
  var thuColor = Color.fromARGB(255, 253, 200, 48);
  var friColor = Color.fromARGB(255, 253, 200, 48);
  var satColor = Color.fromARGB(255, 253, 200, 48);
  var sunColor = Color.fromARGB(255, 253, 200, 48);
  
//  void onDayPressed(context, String day){
//
//  }

  bool breakfastStatus = true;
  bool lunchStatus = true;
  bool dinnerStatus = true;

  int duration = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 40,
              height: 2,
              margin: EdgeInsets.only(left: 140, right: 140),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                days[0]+days[1]+days[2]+days[3]+days[4]+days[5]+days[6],
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromARGB(255, 20, 33, 61),
                  fontFamily: "Jost",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 24,
                  height: 24,
                  child: FlatButton(
                    onPressed: () {
                      //this.onDayPressed(context, "mon");
                      if(monColor == Color.fromARGB(255, 253, 200, 48)){
                        setState(() {
                          monColor = Color.fromARGB(255, 112, 112, 112);
                          days[0]="";
                        });
                      }
                      else{
                        setState(() {
                          monColor = Color.fromARGB(255, 253, 200, 48);
                          days[0]="Mon, ";
                        });
                      }
                    },
                    color: Color.fromARGB(0, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: monColor,
                        width: 0.5,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    textColor: monColor,
                    padding: EdgeInsets.all(0),
                    child: Text(
                      "M",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: monColor,
                        fontFamily: "Jost",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: FlatButton(
                    onPressed: () {
                      //this.onDayPressed(context, "tue");
                      if(tueColor == Color.fromARGB(255, 253, 200, 48)){
                        setState(() {
                          tueColor = Color.fromARGB(255, 112, 112, 112);
                          days[1]="";
                        });
                      }
                      else{
                        setState(() {
                          tueColor = Color.fromARGB(255, 253, 200, 48);
                          days[1]="Tue, ";
                        });
                      }
                    },
                    color: Color.fromARGB(0, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: tueColor,
                        width: 0.5,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    textColor: tueColor,
                    padding: EdgeInsets.all(0),
                    child: Text(
                      "T",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: tueColor,
                        fontFamily: "Jost",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: FlatButton(
                    onPressed: () {
                     // this.onDayPressed(context, "wed");
                      if(wedColor == Color.fromARGB(255, 253, 200, 48)){
                        setState(() {
                          wedColor = Color.fromARGB(255, 112, 112, 112);
                          days[2]="";
                        });
                      }
                      else{
                        setState(() {
                          wedColor = Color.fromARGB(255, 253, 200, 48);
                          days[2]="Wed, ";
                        });
                      }
                      },
                    color: Color.fromARGB(0, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: wedColor,
                        width: 0.5,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    textColor: wedColor,
                    padding: EdgeInsets.all(0),
                    child: Text(
                      "W",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: wedColor,
                        fontFamily: "Jost",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: FlatButton(
                    onPressed: (){
                      //this.onDayPressed(context, "thu");
                      if(thuColor == Color.fromARGB(255, 253, 200, 48)){
                        setState(() {
                          thuColor = Color.fromARGB(255, 112, 112, 112);
                          days[3]="";
                        });
                      }
                      else{
                        setState(() {
                          thuColor = Color.fromARGB(255, 253, 200, 48);
                          days[3]="Thu, ";
                        });
                      }
                      },
                    color: Color.fromARGB(0, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: thuColor,
                        width: 0.5,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    textColor: thuColor,
                    padding: EdgeInsets.all(0),
                    child: Text(
                      "T",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: thuColor,
                        fontFamily: "Jost",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: FlatButton(
                    onPressed: () {
                      //this.onDayPressed(context, "fri");
                      if(friColor == Color.fromARGB(255, 253, 200, 48)){
                        setState(() {
                          friColor = Color.fromARGB(255, 112, 112, 112);
                          days[4]="";
                        });
                      }
                      else{
                        setState(() {
                          friColor = Color.fromARGB(255, 253, 200, 48);
                          days[4]="Fri, ";
                        });
                      }
                    },
                    color: Color.fromARGB(0, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: friColor,
                        width: 0.5,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    textColor: friColor,
                    padding: EdgeInsets.all(0),
                    child: Text(
                      "F",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: friColor,
                        fontFamily: "Jost",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: FlatButton(
                    onPressed: () {
                      //this.onDayPressed(context, "sat");
                      if(satColor == Color.fromARGB(255, 253, 200, 48)){
                        setState(() {
                          satColor = Color.fromARGB(255, 112, 112, 112);
                          days[5]="";
                        });
                      }
                      else{
                        setState(() {
                          satColor = Color.fromARGB(255, 253, 200, 48);
                          days[5]="Sat, ";
                        });
                      }
                    },
                    color: Color.fromARGB(0, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: satColor,
                        width: 0.5,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    textColor: satColor,
                    padding: EdgeInsets.all(0),
                    child: Text(
                      "S",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: satColor,
                        fontFamily: "Jost",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: FlatButton(
                    onPressed: () {
                      //this.onDayPressed(context, "sun");
                      if(sunColor == Color.fromARGB(255, 253, 200, 48)){
                        setState(() {
                          sunColor = Color.fromARGB(255, 112, 112, 112);
                          days[6]="";
                        });
                      }
                      else{
                        setState(() {
                          sunColor = Color.fromARGB(255, 253, 200, 48);
                          days[6]="Sun";
                        });
                      }
                    },
                    color: Color.fromARGB(0, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: sunColor,
                        width: 0.5,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    textColor: sunColor,
                    padding: EdgeInsets.all(0),
                    child: Text(
                      "S",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: sunColor,
                        fontFamily: "Jost",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Breakfast",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 20, 33, 61),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                Container(
                  width: 45,
                  height: 25,
                  child: Transform.scale(
                    scale: 0.70,
                    child: Switch.adaptive(
                      value: breakfastStatus,
                      inactiveTrackColor: Color.fromARGB(60, 0, 0, 0),
                      onChanged: (value) {
                        setState(() {
                          breakfastStatus = value;
                        });
                      },
                      activeColor: AppColors.secondaryElement,
                      activeTrackColor: AppColors.primaryText,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Lunch",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 20, 33, 61),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                Container(
                  width: 45,
                  height: 25,
                  child: Transform.scale(
                    scale: 0.70,
                    child: Switch.adaptive(
                      value: lunchStatus,
                      inactiveTrackColor: Color.fromARGB(60, 0, 0, 0),
                      onChanged: (value) {
                        setState(() {
                          lunchStatus = value;
                        });
                      },
                      activeColor: AppColors.secondaryElement,
                      activeTrackColor: AppColors.primaryText,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Dinner",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 20, 33, 61),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                Container(
                  width: 45,
                  height: 25,
                  child: Transform.scale(
                    scale: 0.70,
                    child: Switch.adaptive(
                      value: dinnerStatus,
                      inactiveTrackColor: Color.fromARGB(60, 0, 0, 0),
                      onChanged: (value) {
                        setState(() {
                          dinnerStatus = value;
                        });
                      },
                      activeColor: AppColors.secondaryElement,
                      activeTrackColor: AppColors.primaryText,
                    ),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Duration (in weeks)",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 20, 33, 61),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
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
                            onPressed: duration==1 ? null :
                                () {
                              setState(() {
                                --duration;
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
                            duration.toString(),
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
                                ++duration;
                              });
                            },

                            color: Color.fromARGB(0, 0, 0, 0),
                            textColor: Color.fromARGB(255, 0, 0, 0),
                            padding: EdgeInsets.all(0),
                            child:
                              Icon(
                                Icons.add,
                                color: Color.fromARGB(255, 253, 200, 48),
                                size: 16,
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
              margin: EdgeInsets.symmetric(vertical: 20),
              child: FlatButton(
                onPressed: (days[0]==""&&days[1]==""&&days[2]==""&&days[3]==""&&days[4]==""&&days[5]==""&&days[6]=="") || (!breakfastStatus && !lunchStatus && ! dinnerStatus) ? null : () => this.onOrderButtonPressed(context),
                color: Color.fromARGB(255, 253, 200, 48),
                disabledColor: Color.fromARGB(255, 234, 234, 234),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                textColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.all(0),
                child: Text(
                  "CONFIRM",
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
//              height: 323,
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
//                      margin: EdgeInsets.only(top: 10),
//                      child: Image.asset(
//                        "assets/images/bar.png",
//                        fit: BoxFit.none,
//                      ),
//                    ),
//                  ),
//                  Align(
//                    alignment: Alignment.topLeft,
//                    child: Container(
//                      margin: EdgeInsets.only(left: 16, top: 10),
//                      child: Text(
//                        "Mon, Tue, Wed, Thu, Fri, Sat",
//                        textAlign: TextAlign.left,
//                        style: TextStyle(
//                          color: Color.fromARGB(255, 20, 33, 61),
//                          fontFamily: "Jost",
//                          fontWeight: FontWeight.w400,
//                          fontSize: 14,
//                        ),
//                      ),
//                    ),
//                  ),
//                  Container(
//                    height: 24,
//                    margin: EdgeInsets.only(left: 16, top: 10, right: 16),
//                    child: Row(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: [
//                        Container(
//                          width: 24,
//                          height: 24,
//                          child: FlatButton(
//                            onPressed: () => this.onMonPressed(context),
//                            color: Color.fromARGB(0, 0, 0, 0),
//                            shape: RoundedRectangleBorder(
//                              side: BorderSide(
//                                color: Color.fromARGB(255, 253, 200, 48),
//                                width: 0.5,
//                                style: BorderStyle.solid,
//                              ),
//                              borderRadius: BorderRadius.all(Radius.circular(12)),
//                            ),
//                            textColor: Color.fromARGB(255, 253, 200, 48),
//                            padding: EdgeInsets.all(0),
//                            child: Text(
//                              "M",
//                              textAlign: TextAlign.center,
//                              style: TextStyle(
//                                color: Color.fromARGB(255, 253, 200, 48),
//                                fontFamily: "Jost",
//                                fontWeight: FontWeight.w400,
//                                fontSize: 14,
//                              ),
//                            ),
//                          ),
//                        ),
//                        Container(
//                          width: 25,
//                          height: 24,
//                          child: FlatButton(
//                            onPressed: () => this.onTuePressed(context),
//                            color: Color.fromARGB(0, 0, 0, 0),
//                            shape: RoundedRectangleBorder(
//                              side: BorderSide(
//                                color: Color.fromARGB(255, 253, 200, 48),
//                                width: 0.5,
//                                style: BorderStyle.solid,
//                              ),
//                              borderRadius: BorderRadius.all(Radius.circular(12)),
//                            ),
//                            textColor: Color.fromARGB(255, 253, 200, 48),
//                            padding: EdgeInsets.all(0),
//                            child: Text(
//                              "T",
//                              textAlign: TextAlign.center,
//                              style: TextStyle(
//                                color: Color.fromARGB(255, 253, 200, 48),
//                                fontFamily: "Jost",
//                                fontWeight: FontWeight.w400,
//                                fontSize: 14,
//                              ),
//                            ),
//                          ),
//                        ),
//                        Container(
//                          width: 25,
//                          height: 24,
//                          child: FlatButton(
//                            onPressed: () => this.onWedPressed(context),
//                            color: Color.fromARGB(0, 0, 0, 0),
//                            shape: RoundedRectangleBorder(
//                              side: BorderSide(
//                                color: Color.fromARGB(255, 253, 200, 48),
//                                width: 0.5,
//                                style: BorderStyle.solid,
//                              ),
//                              borderRadius: BorderRadius.all(Radius.circular(12)),
//                            ),
//                            textColor: Color.fromARGB(255, 253, 200, 48),
//                            padding: EdgeInsets.all(0),
//                            child: Text(
//                              "W",
//                              textAlign: TextAlign.left,
//                              style: TextStyle(
//                                color: Color.fromARGB(255, 253, 200, 48),
//                                fontFamily: "Jost",
//                                fontWeight: FontWeight.w400,
//                                fontSize: 14,
//                              ),
//                            ),
//                          ),
//                        ),
//                        Container(
//                          width: 25,
//                          height: 24,
//                          child: FlatButton(
//                            onPressed: () => this.onThuPressed(context),
//                            color: Color.fromARGB(0, 0, 0, 0),
//                            shape: RoundedRectangleBorder(
//                              side: BorderSide(
//                                color: Color.fromARGB(255, 253, 200, 48),
//                                width: 0.5,
//                                style: BorderStyle.solid,
//                              ),
//                              borderRadius: BorderRadius.all(Radius.circular(12)),
//                            ),
//                            textColor: Color.fromARGB(255, 253, 200, 48),
//                            padding: EdgeInsets.all(0),
//                            child: Text(
//                              "T",
//                              textAlign: TextAlign.center,
//                              style: TextStyle(
//                                color: Color.fromARGB(255, 253, 200, 48),
//                                fontFamily: "Jost",
//                                fontWeight: FontWeight.w400,
//                                fontSize: 14,
//                              ),
//                            ),
//                          ),
//                        ),
//                        Container(
//                          width: 25,
//                          height: 24,
//                          child: FlatButton(
//                            onPressed: () => this.onFriPressed(context),
//                            color: Color.fromARGB(0, 0, 0, 0),
//                            shape: RoundedRectangleBorder(
//                              side: BorderSide(
//                                color: Color.fromARGB(255, 253, 200, 48),
//                                width: 0.5,
//                                style: BorderStyle.solid,
//                              ),
//                              borderRadius: BorderRadius.all(Radius.circular(12)),
//                            ),
//                            textColor: Color.fromARGB(255, 253, 200, 48),
//                            padding: EdgeInsets.all(0),
//                            child: Text(
//                              "F",
//                              textAlign: TextAlign.center,
//                              style: TextStyle(
//                                color: Color.fromARGB(255, 253, 200, 48),
//                                fontFamily: "Jost",
//                                fontWeight: FontWeight.w400,
//                                fontSize: 14,
//                              ),
//                            ),
//                          ),
//                        ),
//                        Container(
//                          width: 25,
//                          height: 24,
//                          child: FlatButton(
//                            onPressed: () => this.onSatPressed(context),
//                            color: Color.fromARGB(0, 0, 0, 0),
//                            shape: RoundedRectangleBorder(
//                              side: BorderSide(
//                                color: Color.fromARGB(255, 253, 200, 48),
//                                width: 0.5,
//                                style: BorderStyle.solid,
//                              ),
//                              borderRadius: BorderRadius.all(Radius.circular(12)),
//                            ),
//                            textColor: Color.fromARGB(255, 253, 200, 48),
//                            padding: EdgeInsets.all(0),
//                            child: Text(
//                              "S",
//                              textAlign: TextAlign.center,
//                              style: TextStyle(
//                                color: Color.fromARGB(255, 253, 200, 48),
//                                fontFamily: "Jost",
//                                fontWeight: FontWeight.w400,
//                                fontSize: 14,
//                              ),
//                            ),
//                          ),
//                        ),
//                        Spacer(),
//                        Container(
//                          width: 25,
//                          height: 24,
//                          child: FlatButton(
//                            onPressed: () => this.onSunPressed(context),
//                            color: Color.fromARGB(0, 0, 0, 0),
//                            shape: RoundedRectangleBorder(
//                              side: BorderSide(
//                                color: Color.fromARGB(255, 112, 112, 112),
//                                width: 0.5,
//                                style: BorderStyle.solid,
//                              ),
//                              borderRadius: BorderRadius.all(Radius.circular(12)),
//                            ),
//                            textColor: Color.fromARGB(255, 112, 112, 112),
//                            padding: EdgeInsets.all(0),
//                            child: Text(
//                              "S",
//                              textAlign: TextAlign.center,
//                              style: TextStyle(
//                                color: Color.fromARGB(255, 112, 112, 112),
//                                fontFamily: "Jost",
//                                fontWeight: FontWeight.w400,
//                                fontSize: 14,
//                              ),
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Container(
//                    height: 2,
//                    margin: EdgeInsets.only(left: 15, top: 15, right: 15),
//                    decoration: BoxDecoration(
//                      color: Color.fromARGB(255, 234, 234, 234),
//                    ),
//                    child: Container(),
//                  ),
//                  Spacer(),
//                  Container(
//                    height: 32,
//                    margin: EdgeInsets.symmetric(horizontal: 16),
//                    child: Row(
//                      crossAxisAlignment: CrossAxisAlignment.stretch,
//                      children: [
//                        Align(
//                          alignment: Alignment.bottomLeft,
//                          child: Container(
//                            margin: EdgeInsets.only(bottom: 5),
//                            child: Text(
//                              "Breakfast",
//                              textAlign: TextAlign.left,
//                              style: TextStyle(
//                                color: Color.fromARGB(255, 20, 33, 61),
//                                fontFamily: "Jost",
//                                fontWeight: FontWeight.w400,
//                                fontSize: 14,
//                              ),
//                            ),
//                          ),
//                        ),
//                        Spacer(),
//                        Align(
//                          alignment: Alignment.bottomLeft,
//                          child: Container(
//                            width: 52,
//                            height: 32,
//                            decoration: BoxDecoration(
//                              color: Color.fromARGB(255, 112, 112, 112),
//                              borderRadius: BorderRadius.all(Radius.circular(16)),
//                            ),
//                            child: Switch.adaptive(
//                              value: false,
//                              inactiveTrackColor: Color.fromARGB(60, 0, 0, 0),
//                              onChanged: (value) {
//
//                              },
//                              activeColor: AppColors.secondaryElement,
//                              activeTrackColor: AppColors.primaryText,
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Container(
//                    height: 63,
//                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 3),
//                    child: Row(
//                      crossAxisAlignment: CrossAxisAlignment.stretch,
//                      children: [
//                        Align(
//                          alignment: Alignment.bottomLeft,
//                          child: Container(
//                            width: 40,
//                            height: 50,
//                            margin: EdgeInsets.only(bottom: 8),
//                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.end,
//                              crossAxisAlignment: CrossAxisAlignment.stretch,
//                              children: [
//                                Align(
//                                  alignment: Alignment.topLeft,
//                                  child: Container(
//                                    margin: EdgeInsets.only(bottom: 10),
//                                    child: Text(
//                                      "Lunch",
//                                      textAlign: TextAlign.left,
//                                      style: TextStyle(
//                                        color: Color.fromARGB(255, 20, 33, 61),
//                                        fontFamily: "Jost",
//                                        fontWeight: FontWeight.w400,
//                                        fontSize: 14,
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                Align(
//                                  alignment: Alignment.topLeft,
//                                  child: Text(
//                                    "Dinner",
//                                    textAlign: TextAlign.left,
//                                    style: TextStyle(
//                                      color: Color.fromARGB(255, 20, 33, 61),
//                                      fontFamily: "Jost",
//                                      fontWeight: FontWeight.w400,
//                                      fontSize: 14,
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                        ),
//                        Spacer(),
//                        Align(
//                          alignment: Alignment.bottomLeft,
//                          child: Container(
//                            width: 52,
//                            height: 63,
//                            child: Stack(
//                              alignment: Alignment.center,
//                              children: [
//                                Positioned(
//                                  right: 0,
//                                  bottom: 31,
//                                  child: Container(
//                                    width: 52,
//                                    height: 32,
//                                    decoration: BoxDecoration(
//                                      color: AppColors.primaryText,
//                                      borderRadius: BorderRadius.all(Radius.circular(16)),
//                                    ),
//                                    child: Switch.adaptive(
//                                      value: false,
//                                      inactiveTrackColor: Color.fromARGB(60, 0, 0, 0),
//                                      onChanged: (value) {
//
//                                      },
//                                      activeColor: AppColors.secondaryElement,
//                                      activeTrackColor: AppColors.primaryText,
//                                    ),
//                                  ),
//                                ),
//                                Positioned(
//                                  right: 0,
//                                  bottom: 0,
//                                  child: Container(
//                                    width: 52,
//                                    height: 32,
//                                    decoration: BoxDecoration(
//                                      color: AppColors.primaryText,
//                                      borderRadius: BorderRadius.all(Radius.circular(16)),
//                                    ),
//                                    child: Switch.adaptive(
//                                      value: false,
//                                      inactiveTrackColor: Color.fromARGB(60, 0, 0, 0),
//                                      onChanged: (value) {
//
//                                      },
//                                      activeColor: AppColors.secondaryElement,
//                                      activeTrackColor: AppColors.primaryText,
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Container(
//                    height: 2,
//                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
//                    decoration: BoxDecoration(
//                      color: Color.fromARGB(255, 234, 234, 234),
//                    ),
//                    child: Container(),
//                  ),
//                  Expanded(
//                    flex: 1,
//                    child: Align(
//                      alignment: Alignment.topLeft,
//                      child: Container(
//                        width: 345,
//                        margin: EdgeInsets.only(left: 16, top: 20, bottom: 25),
//                        child: Row(
//                          crossAxisAlignment: CrossAxisAlignment.stretch,
//                          children: [
//                            Align(
//                              alignment: Alignment.bottomLeft,
//                              child: Text(
//                                "Duration (weeks)",
//                                textAlign: TextAlign.left,
//                                style: TextStyle(
//                                  color: Color.fromARGB(255, 20, 33, 61),
//                                  fontFamily: "Jost",
//                                  fontWeight: FontWeight.w400,
//                                  fontSize: 14,
//                                ),
//                              ),
//                            ),
//                            Align(
//                              alignment: Alignment.topLeft,
//                              child: Container(
//                                width: 60,
//                                height: 20,
//                                child: Stack(
//                                  alignment: Alignment.centerRight,
//                                  children: [
//                                    Positioned(
//                                      left: 0,
//                                      child: FlatButton(
//                                        onPressed: () => this.onLessPressed(context),
//                                        color: Color.fromARGB(0, 0, 0, 0),
//                                        shape: RoundedRectangleBorder(
//                                          borderRadius: BorderRadius.all(Radius.circular(0)),
//                                        ),
//                                        textColor: Color.fromARGB(255, 0, 0, 0),
//                                        padding: EdgeInsets.all(0),
//                                        child: Row(
//                                          mainAxisAlignment: MainAxisAlignment.center,
//                                          children: [
//                                            Image.asset("assets/images/sub-button.png",),
//                                            SizedBox(
//                                              width: 10,
//                                            ),
//                                            Text(
//                                              "",
//                                              textAlign: TextAlign.left,
//                                              style: TextStyle(
//                                                color: Color.fromARGB(255, 0, 0, 0),
//                                                fontWeight: FontWeight.w400,
//                                                fontSize: 12,
//                                              ),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//                                    ),
//                                    Positioned(
//                                      right: 2,
//                                      child: Row(
//                                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                                        children: [
//                                          Align(
//                                            alignment: Alignment.centerLeft,
//                                            child: Text(
//                                              "1",
//                                              textAlign: TextAlign.center,
//                                              style: TextStyle(
//                                                color: Color.fromARGB(255, 20, 33, 61),
//                                                fontFamily: "Jost",
//                                                fontWeight: FontWeight.w400,
//                                                fontSize: 14,
//                                              ),
//                                            ),
//                                          ),
//                                          Spacer(),
//                                          Align(
//                                            alignment: Alignment.centerLeft,
//                                            child: Container(
//                                              width: 25,
//                                              height: 20,
//                                              child: FlatButton(
//                                                onPressed: () => this.onAddPressed(context),
//                                                color: Color.fromARGB(0, 0, 0, 0),
//                                                shape: RoundedRectangleBorder(
//                                                  borderRadius: BorderRadius.all(Radius.circular(0)),
//                                                ),
//                                                textColor: Color.fromARGB(255, 0, 0, 0),
//                                                padding: EdgeInsets.all(0),
//                                                child: Row(
//                                                  mainAxisAlignment: MainAxisAlignment.center,
//                                                  children: [
//                                                    Image.asset("assets/images/add-button.png",),
//                                                    SizedBox(
//                                                      width: 10,
//                                                    ),
//                                                    Text(
//                                                      "",
//                                                      textAlign: TextAlign.left,
//                                                      style: TextStyle(
//                                                        color: Color.fromARGB(255, 0, 0, 0),
//                                                        fontWeight: FontWeight.w400,
//                                                        fontSize: 12,
//                                                      ),
//                                                    ),
//                                                  ],
//                                                ),
//                                              ),
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ),
//                  ),
//                  Container(
//                    height: 37,
//                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
//                    child: FlatButton(
//                      onPressed: () => this.onOrderButtonPressed(context),
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