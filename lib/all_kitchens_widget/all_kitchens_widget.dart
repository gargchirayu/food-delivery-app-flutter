/*
*  all_kitchens_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/home_widget/home_widget.dart';
import 'package:fudito/kitchen_widget/kitchen_widget.dart';
import 'package:fudito/shared/kitchen_card.dart';
import 'package:fudito/values/values.dart';
import 'kitchen_sort.dart';


class AllKitchensWidget extends StatefulWidget {
  
  @override
  _AllKitchensWidgetState createState() => _AllKitchensWidgetState();
}

class _AllKitchensWidgetState extends State<AllKitchensWidget> {

  void linkKitchen(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => KitchenWidget()));

  void onSortPressed(BuildContext context) {
    showModalBottomSheet(context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: EdgeInsets.only(left: 16, right: 16, top:8),
        height: MediaQuery.of(context).size.height * 0.45,
        decoration: new BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(10.0),
            topRight: const Radius.circular(10.0),
          ),
        ),
        child: KitchenSort(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 200, 33),
        brightness: Brightness.light,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: "All Kitchens",
                  style: TextStyle(
                    color: AppColors.secondaryText,
                    fontFamily: "Proxima Nova",
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              TextSpan(text: '\n'),
              TextSpan(
                text: "Sorted by Nearest",
                //textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 111, 88, 21),
                  fontFamily: "Jost",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 20, 33, 61),
          ),
//          Image.asset("assets/images/back-button.png",),
        ),
        actions: [
          IconButton(
            onPressed: () => this.onSortPressed(context),
            icon: Icon(
              Icons.filter_list,
              size: 30,
              color: Color.fromARGB(255, 20, 33, 61)
            ),
//            Image.asset("assets/images/filter-button.png",),
          ),
        ],
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
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: 5,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index){
                            return KitchenCard();
                          },

                        ),
//                        GestureDetector(
//                          behavior: HitTestBehavior.translucent,
//                          onTap: () => this.linkKitchen(context),
//                          child: Container(
//                            height: 120,
//                            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                            padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 13),
//                            decoration: BoxDecoration(
//                              color: Color.fromARGB(255, 255, 255, 255),
//                              boxShadow: [
//                                BoxShadow(
//                                  color: Color.fromARGB(26, 253, 185, 0),
//                                  offset: Offset(0, 7),
//                                  blurRadius: 20,
//                                ),
//                              ],
//                              borderRadius: BorderRadius.all(Radius.circular(8)),
//                            ),
//                            child: Column(
//                              crossAxisAlignment: CrossAxisAlignment.stretch,
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                  children: <Widget>[
//                                    Column(
//                                      mainAxisAlignment: MainAxisAlignment.start,
//                                      crossAxisAlignment: CrossAxisAlignment.start,
//                                      children: <Widget>[
//                                        Text(
//                                          "Mama’s Little Bakery",
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 20, 33, 61),
//                                            fontFamily: "Proxima Nova",
//                                            fontWeight: FontWeight.w700,
//                                            fontSize: 20,
//                                          ),
//                                        ),
//                                        SizedBox(
//                                          height: 2.0,
//                                        ),
//                                        Text(
//                                          "North Indian",
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 112, 112, 112),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 14,
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                    Container(
//                                      width: 44,
//                                      height: 44,
//                                      child: Image.asset(
//                                        "assets/images/logo-icon-14.png",
//                                        fit: BoxFit.none,
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                                Container(
//                                  height: 2,
//                                  margin: EdgeInsets.only(top: 8),
//                                  decoration: BoxDecoration(
//                                    color: Color.fromARGB(255, 234, 234, 234),
//                                  ),
//                                  child: Container(),
//                                ),
//                                SizedBox(
//                                  height: 2.0,
//                                ),
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                  children: <Widget>[
//                                    Row(
//                                      children: <Widget>[
//                                        Container(
//                                          width: 16,
//                                          height: 16,
//                                          child: Image.asset(
//                                            "assets/images/path-13.png",
//                                            fit: BoxFit.none,
//                                          ),
//                                        ),
//                                        Padding(
//                                          padding: const EdgeInsets.only(left: 2.0),
//                                          child: Text(
//                                            "4.9 (200)",
//                                            textAlign: TextAlign.center,
//                                            style: TextStyle(
//                                              color: Color.fromARGB(255, 112, 112, 112),
//                                              fontFamily: "Jost",
//                                              fontWeight: FontWeight.w400,
//                                              fontSize: 12,
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                    Row(
//                                      children: <Widget>[
//                                        Container(
//                                          width: 16,
//                                          height: 16,
//                                          child: Image.asset(
//                                            "assets/images/icon.png",
//                                            fit: BoxFit.none,
//                                          ),
//                                        ),
//                                        Padding(
//                                          padding: const EdgeInsets.only(left: 2.0),
//                                          child: Text(
//                                            "8 - 12 AM",
//                                            textAlign: TextAlign.center,
//                                            style: TextStyle(
//                                              color: Color.fromARGB(255, 112, 112, 112),
//                                              fontFamily: "Jost",
//                                              fontWeight: FontWeight.w400,
//                                              fontSize: 12,
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                    Row(
//                                      children: <Widget>[
//                                        Container(
//                                          width: 16,
//                                          height: 16,
//                                          child: Image.asset(
//                                            "assets/images/rupee-price-11.png",
//                                            fit: BoxFit.none,
//                                          ),
//                                        ),
//                                        Padding(
//                                          padding: const EdgeInsets.only(left: 2.0),
//                                          child: Text(
//                                            "100 for two",
//                                            textAlign: TextAlign.center,
//                                            style: TextStyle(
//                                              color: Color.fromARGB(255, 112, 112, 112),
//                                              fontFamily: "Jost",
//                                              fontWeight: FontWeight.w400,
//                                              fontSize: 12,
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ],
//                                ),
//                              ],
//                            ),
//                          ),
//                        ),
//                        Container(
//                          height: 120,
//                          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                          padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 13),
//                          decoration: BoxDecoration(
//                            color: Color.fromARGB(255, 255, 255, 255),
//                            boxShadow: [
//                              BoxShadow(
//                                color: Color.fromARGB(26, 253, 185, 0),
//                                offset: Offset(0, 7),
//                                blurRadius: 20,
//                              ),
//                            ],
//                            borderRadius: BorderRadius.all(Radius.circular(8)),
//                          ),
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            children: <Widget>[
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Column(
//                                    mainAxisAlignment: MainAxisAlignment.start,
//                                    crossAxisAlignment: CrossAxisAlignment.start,
//                                    children: <Widget>[
//                                      Text(
//                                        "Mama’s Little Bakery",
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 20, 33, 61),
//                                          fontFamily: "Proxima Nova",
//                                          fontWeight: FontWeight.w700,
//                                          fontSize: 20,
//                                        ),
//                                      ),
//                                      SizedBox(
//                                        height: 2.0,
//                                      ),
//                                      Text(
//                                        "North Indian",
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 112, 112, 112),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 14,
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                  Container(
//                                    width: 44,
//                                    height: 44,
//                                    child: Image.asset(
//                                      "assets/images/logo-icon-14.png",
//                                      fit: BoxFit.none,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                              Container(
//                                height: 2,
//                                margin: EdgeInsets.only(top: 8),
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 234, 234, 234),
//                                ),
//                                child: Container(),
//                              ),
//                              SizedBox(
//                                height: 2.0,
//                              ),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Row(
//                                    children: <Widget>[
//                                      Container(
//                                        width: 16,
//                                        height: 16,
//                                        child: Image.asset(
//                                          "assets/images/path-13.png",
//                                          fit: BoxFit.none,
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 2.0),
//                                        child: Text(
//                                          "4.9 (200)",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 112, 112, 112),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                  Row(
//                                    children: <Widget>[
//                                      Container(
//                                        width: 16,
//                                        height: 16,
//                                        child: Image.asset(
//                                          "assets/images/icon.png",
//                                          fit: BoxFit.none,
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 2.0),
//                                        child: Text(
//                                          "8 - 12 AM",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 112, 112, 112),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                  Row(
//                                    children: <Widget>[
//                                      Container(
//                                        width: 16,
//                                        height: 16,
//                                        child: Image.asset(
//                                          "assets/images/rupee-price-11.png",
//                                          fit: BoxFit.none,
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 2.0),
//                                        child: Text(
//                                          "100 for two",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 112, 112, 112),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ),
//                        Container(
//                          height: 120,
//                          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                          padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 13),
//                          decoration: BoxDecoration(
//                            color: Color.fromARGB(255, 255, 255, 255),
//                            boxShadow: [
//                              BoxShadow(
//                                color: Color.fromARGB(26, 253, 185, 0),
//                                offset: Offset(0, 7),
//                                blurRadius: 20,
//                              ),
//                            ],
//                            borderRadius: BorderRadius.all(Radius.circular(8)),
//                          ),
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            children: <Widget>[
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Column(
//                                    mainAxisAlignment: MainAxisAlignment.start,
//                                    crossAxisAlignment: CrossAxisAlignment.start,
//                                    children: <Widget>[
//                                      Text(
//                                        "Mama’s Little Bakery",
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 20, 33, 61),
//                                          fontFamily: "Proxima Nova",
//                                          fontWeight: FontWeight.w700,
//                                          fontSize: 20,
//                                        ),
//                                      ),
//                                      SizedBox(
//                                        height: 2.0,
//                                      ),
//                                      Text(
//                                        "North Indian",
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 112, 112, 112),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 14,
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                  Container(
//                                    width: 44,
//                                    height: 44,
//                                    child: Image.asset(
//                                      "assets/images/logo-icon-14.png",
//                                      fit: BoxFit.none,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                              Container(
//                                height: 2,
//                                margin: EdgeInsets.only(top: 8),
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 234, 234, 234),
//                                ),
//                                child: Container(),
//                              ),
//                              SizedBox(
//                                height: 2.0,
//                              ),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Row(
//                                    children: <Widget>[
//                                      Container(
//                                        width: 16,
//                                        height: 16,
//                                        child: Image.asset(
//                                          "assets/images/path-13.png",
//                                          fit: BoxFit.none,
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 2.0),
//                                        child: Text(
//                                          "4.9 (200)",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 112, 112, 112),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                  Row(
//                                    children: <Widget>[
//                                      Container(
//                                        width: 16,
//                                        height: 16,
//                                        child: Image.asset(
//                                          "assets/images/icon.png",
//                                          fit: BoxFit.none,
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 2.0),
//                                        child: Text(
//                                          "8 - 12 AM",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 112, 112, 112),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                  Row(
//                                    children: <Widget>[
//                                      Container(
//                                        width: 16,
//                                        height: 16,
//                                        child: Image.asset(
//                                          "assets/images/rupee-price-11.png",
//                                          fit: BoxFit.none,
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 2.0),
//                                        child: Text(
//                                          "100 for two",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 112, 112, 112),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ),
//                        Container(
//                          height: 120,
//                          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                          padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 13),
//                          decoration: BoxDecoration(
//                            color: Color.fromARGB(255, 255, 255, 255),
//                            boxShadow: [
//                              BoxShadow(
//                                color: Color.fromARGB(26, 253, 185, 0),
//                                offset: Offset(0, 7),
//                                blurRadius: 20,
//                              ),
//                            ],
//                            borderRadius: BorderRadius.all(Radius.circular(8)),
//                          ),
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            children: <Widget>[
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Column(
//                                    mainAxisAlignment: MainAxisAlignment.start,
//                                    crossAxisAlignment: CrossAxisAlignment.start,
//                                    children: <Widget>[
//                                      Text(
//                                        "Mama’s Little Bakery",
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 20, 33, 61),
//                                          fontFamily: "Proxima Nova",
//                                          fontWeight: FontWeight.w700,
//                                          fontSize: 20,
//                                        ),
//                                      ),
//                                      SizedBox(
//                                        height: 2.0,
//                                      ),
//                                      Text(
//                                        "North Indian",
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 112, 112, 112),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 14,
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                  Container(
//                                    width: 44,
//                                    height: 44,
//                                    child: Image.asset(
//                                      "assets/images/logo-icon-14.png",
//                                      fit: BoxFit.none,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                              Container(
//                                height: 2,
//                                margin: EdgeInsets.only(top: 8),
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 234, 234, 234),
//                                ),
//                                child: Container(),
//                              ),
//                              SizedBox(
//                                height: 2.0,
//                              ),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Row(
//                                    children: <Widget>[
//                                      Container(
//                                        width: 16,
//                                        height: 16,
//                                        child: Image.asset(
//                                          "assets/images/path-13.png",
//                                          fit: BoxFit.none,
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 2.0),
//                                        child: Text(
//                                          "4.9 (200)",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 112, 112, 112),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                  Row(
//                                    children: <Widget>[
//                                      Container(
//                                        width: 16,
//                                        height: 16,
//                                        child: Image.asset(
//                                          "assets/images/icon.png",
//                                          fit: BoxFit.none,
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 2.0),
//                                        child: Text(
//                                          "8 - 12 AM",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 112, 112, 112),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                  Row(
//                                    children: <Widget>[
//                                      Container(
//                                        width: 16,
//                                        height: 16,
//                                        child: Image.asset(
//                                          "assets/images/rupee-price-11.png",
//                                          fit: BoxFit.none,
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 2.0),
//                                        child: Text(
//                                          "100 for two",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 112, 112, 112),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ),
//                        Container(
//                          height: 120,
//                          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                          padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 13),
//                          decoration: BoxDecoration(
//                            color: Color.fromARGB(255, 255, 255, 255),
//                            boxShadow: [
//                              BoxShadow(
//                                color: Color.fromARGB(26, 253, 185, 0),
//                                offset: Offset(0, 7),
//                                blurRadius: 20,
//                              ),
//                            ],
//                            borderRadius: BorderRadius.all(Radius.circular(8)),
//                          ),
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            children: <Widget>[
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Column(
//                                    mainAxisAlignment: MainAxisAlignment.start,
//                                    crossAxisAlignment: CrossAxisAlignment.start,
//                                    children: <Widget>[
//                                      Text(
//                                        "Mama’s Little Bakery",
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 20, 33, 61),
//                                          fontFamily: "Proxima Nova",
//                                          fontWeight: FontWeight.w700,
//                                          fontSize: 20,
//                                        ),
//                                      ),
//                                      SizedBox(
//                                        height: 2.0,
//                                      ),
//                                      Text(
//                                        "North Indian",
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 112, 112, 112),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 14,
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                  Container(
//                                    width: 44,
//                                    height: 44,
//                                    child: Image.asset(
//                                      "assets/images/logo-icon-14.png",
//                                      fit: BoxFit.none,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                              Container(
//                                height: 2,
//                                margin: EdgeInsets.only(top: 8),
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 234, 234, 234),
//                                ),
//                                child: Container(),
//                              ),
//                              SizedBox(
//                                height: 2.0,
//                              ),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Row(
//                                    children: <Widget>[
//                                      Container(
//                                        width: 16,
//                                        height: 16,
//                                        child: Image.asset(
//                                          "assets/images/path-13.png",
//                                          fit: BoxFit.none,
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 2.0),
//                                        child: Text(
//                                          "4.9 (200)",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 112, 112, 112),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                  Row(
//                                    children: <Widget>[
//                                      Container(
//                                        width: 16,
//                                        height: 16,
//                                        child: Image.asset(
//                                          "assets/images/icon.png",
//                                          fit: BoxFit.none,
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 2.0),
//                                        child: Text(
//                                          "8 - 12 AM",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 112, 112, 112),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                  Row(
//                                    children: <Widget>[
//                                      Container(
//                                        width: 16,
//                                        height: 16,
//                                        child: Image.asset(
//                                          "assets/images/rupee-price-11.png",
//                                          fit: BoxFit.none,
//                                        ),
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.only(left: 2.0),
//                                        child: Text(
//                                          "100 for two",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 112, 112, 112),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 12,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ),
                      ],
                    ),
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