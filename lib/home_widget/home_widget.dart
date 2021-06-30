/*
*  home_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/all_kitchens_widget/all_kitchens_widget.dart';
import 'package:fudito/categories_widget/categories_widget.dart';
import 'package:fudito/choose_location_widget/choose_location_widget.dart';
import 'package:getflutter/getflutter.dart';
import 'carousel_item.dart';
import 'package:fudito/shared/kitchen_card.dart';
import 'package:fudito/values/values.dart';


class HomeWidget extends StatefulWidget {
  
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  void onAllKitchensButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => AllKitchensWidget()));

  void onEditLocationPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseLocationWidget()));

  void onMealPreferencePressed(BuildContext context) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CategoriesWidget()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      body:
      Container(
        constraints: BoxConstraints.expand(),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                height: 25,
                color: Color.fromARGB(255, 253, 200, 48),
              ),
            ),
            SliverAppBar(
              pinned: true,
              floating: true,
              elevation: 0,
              brightness: Brightness.light,
              backgroundColor: Color.fromARGB(255, 253, 200, 48),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => this.onEditLocationPressed(context),
                    padding: EdgeInsets.zero,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Delivery Address",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 111, 88, 21),
                            fontFamily: "Jost",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Rohini, Sector - 8",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 20, 33, 61),
                                fontFamily: "Proxima Nova",
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Center(
                                child: Icon(
                                  Icons.edit,
                                  color: Color.fromARGB(255, 20, 33, 61),
                                  size: 15,
                                )
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
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
                            offset: Offset(0, 1),
                            blurRadius: 8,
                          ),
                        ]
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () => this.onMealPreferencePressed(context),
                        icon: Icon(
                            Icons.menu,
                            size: 30,
                            color: Color.fromARGB(255, 20, 33, 61)
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ),
            SliverToBoxAdapter(
              child: Container(
                height: 376,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      left: 0,
                      top: 0,
                      right: 0,
                      child: Image.asset(
                        "assets/images/bg-header.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: GFCarousel(
                        height: 350,
                        //aspectRatio: 1.2,
                        autoPlay: true,
                        pauseAutoPlayOnTouch: Duration(),
                        enlargeMainPage: true,
                        pagination: true,
                        passiveIndicator: Color.fromARGB(125, 221, 221, 221),
                        viewportFraction: 0.92,
                        onPageChanged: (index) {
                          setState(() {
                            index;
                          });
                        },
                        items: [
                          CarouselItem(),
                          CarouselItem(),
                          CarouselItem(),
                          CarouselItem(),
                        ],

//                                imageList.map(
//                                      (url) {
//                                    return Container(
//                                      margin: EdgeInsets.all(5.0),
//                                      child: ClipRRect(
//                                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
//                                        child: Image.network(
//                                          url,
//                                          fit: BoxFit.cover,
//                                          width: 1000.0,
//                                        ),
//                                      ),
//                                    );
//                                  },
//                                ).toList(),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 16),
                child: Text(
                  "Kitchens Near You",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 20, 33, 61),
                    fontFamily: "Proxima Nova",
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 4, left: 16, bottom: 8),
                child: Text(
                  "Tiffin Services/Home Kitchens in your area",
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
            SliverToBoxAdapter(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 3,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index){
                  return KitchenCard();
                },

              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 37,
                margin: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 20),
                child: FlatButton(
                  onPressed: () => this.onAllKitchensButtonPressed(context),
                  color: Color.fromARGB(255, 253, 200, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "SEE ALL KITCHENS",
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
            ),
          ],
        ),
      ),




//      Container(
//        constraints: BoxConstraints.expand(),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          mainAxisAlignment: MainAxisAlignment.start,
//          children: [
//            Expanded(
//              flex: 1,
//              child: SingleChildScrollView(
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.stretch,
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: [
//                      Container(
//                        height: 466,
//                        child: Stack(
//                          alignment: Alignment.center,
//                          children: <Widget>[
//                            Positioned(
//                              left: 0,
//                              top: 0,
//                              right: 0,
//                              child: Image.asset(
//                                "assets/images/bg-header-4.png",
//                                fit: BoxFit.fill,
//                              ),
//                            ),
//                            Positioned(
//                              left: 16,
//                              right: 16,
//                              top: 60,
//                              child: Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  FlatButton(
//                                    onPressed: () => this.onEditLocationPressed(context),
//                                    padding: EdgeInsets.zero,
//                                    child: Column(
//                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                      crossAxisAlignment: CrossAxisAlignment.start,
//                                      children: <Widget>[
//                                        Text(
//                                          "Delivery Address",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 111, 88, 21),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 14,
//                                          ),
//                                        ),
//                                        Row(
//                                          crossAxisAlignment: CrossAxisAlignment.center,
//                                          children: <Widget>[
//                                            Text(
//                                              "Rohini, Sector - 8",
//                                              textAlign: TextAlign.center,
//                                              style: TextStyle(
//                                                color: Color.fromARGB(255, 20, 33, 61),
//                                                fontFamily: "Proxima Nova",
//                                                fontWeight: FontWeight.w400,
//                                                fontSize: 24,
//                                              ),
//                                            ),
//                                            SizedBox(
//                                              width: 10,
//                                            ),
//                                            Center(
//                                              child: Icon(
//                                                Icons.edit,
//                                                color: Color.fromARGB(255, 20, 33, 61),
//                                                size: 15,
//                                              )
//                                            ),
//                                            SizedBox(
//                                              width: 10,
//                                            ),
//                                          ],
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Container(
//                                    height: 44,
//                                    width: 44,
//                                    decoration: BoxDecoration(
//                                        borderRadius: BorderRadius.all(Radius.circular(22)),
//                                        color: Colors.white,
//                                        boxShadow: [
//                                          BoxShadow(
//                                            color: Color.fromARGB(80, 112, 112, 112),
//                                            offset: Offset(0, 5),
//                                            blurRadius: 10,
//                                          ),
//                                        ]
//                                    ),
//                                    child: Center(
//                                      child: IconButton(
//                                        onPressed: () => this.onMealPreferencePressed(context),
//                                        icon: Icon(
//                                            Icons.menu,
//                                            size: 30,
//                                            color: Color.fromARGB(255, 20, 33, 61)
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Padding(
//                              padding: EdgeInsets.only(top: 120),
//                              child: GFCarousel(
//                                height: 350,
//                                //aspectRatio: 1.2,
//                                autoPlay: true,
//                                pauseAutoPlayOnTouch: Duration(),
//                                enlargeMainPage: true,
//                                pagination: true,
//                                passiveIndicator: Color.fromARGB(125, 221, 221, 221),
//                                viewportFraction: 0.92,
//                                onPageChanged: (index) {
//                                  setState(() {
//                                    index;
//                                  });
//                                },
//                                items: [
//                                  Container(
//                                    margin: EdgeInsets.all(5.0),
//                                    decoration: BoxDecoration(
//                                      color: Color.fromARGB(255, 255, 255, 255),
//                                      borderRadius: BorderRadius.all(Radius.circular(16)),
//                                      image: DecorationImage(
//                                        image: AssetImage(
//                                          "assets/images/bg-kitchen-2.png",
//                                        ),
//                                        fit: BoxFit.cover,
//                                      ),
//                                    ),
//                                    child: Column(
//                                      mainAxisAlignment: MainAxisAlignment.end,
//                                      children: <Widget>[
//                                        Container(
//                                          height: 120,
//                                          margin: EdgeInsets.all(20.0),
//                                          padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 13),
//                                          decoration: BoxDecoration(
//                                            color: Color.fromARGB(255, 255, 255, 255),
//                                            boxShadow: [
//                                              BoxShadow(
//                                                color: Color.fromARGB(26, 253, 185, 0),
//                                                offset: Offset(0, 7),
//                                                blurRadius: 20,
//                                              ),
//                                            ],
//                                            borderRadius: BorderRadius.all(Radius.circular(8)),
//                                          ),
//                                          child: Column(
//                                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                            children: <Widget>[
//                                              Row(
//                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                children: <Widget>[
//                                                  Column(
//                                                    mainAxisAlignment: MainAxisAlignment.start,
//                                                    crossAxisAlignment: CrossAxisAlignment.start,
//                                                    children: <Widget>[
//                                                      Text(
//                                                        "Mama’s Little Bakery",
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 20, 33, 61),
//                                                          fontFamily: "Proxima Nova",
//                                                          fontWeight: FontWeight.w700,
//                                                          fontSize: 20,
//                                                        ),
//                                                      ),
//                                                      SizedBox(
//                                                        height: 2.0,
//                                                      ),
//                                                      Text(
//                                                        "North Indian",
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 112, 112, 112),
//                                                          fontFamily: "Jost",
//                                                          fontWeight: FontWeight.w400,
//                                                          fontSize: 14,
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                  Container(
//                                                    width: 44,
//                                                    height: 44,
//                                                    child: Image.asset(
//                                                      "assets/images/logo-icon-14.png",
//                                                      fit: BoxFit.none,
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                              Container(
//                                                height: 2,
//                                                margin: EdgeInsets.only(top: 8),
//                                                decoration: BoxDecoration(
//                                                  color: Color.fromARGB(255, 234, 234, 234),
//                                                ),
//                                                child: Container(),
//                                              ),
//                                              SizedBox(
//                                                height: 2.0,
//                                              ),
//                                              Row(
//                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                children: <Widget>[
//                                                  Row(
//                                                    children: <Widget>[
//                                                      Container(
//                                                        width: 16,
//                                                        height: 16,
//                                                        child: Image.asset(
//                                                          "assets/images/path-13.png",
//                                                          fit: BoxFit.none,
//                                                        ),
//                                                      ),
//                                                      Padding(
//                                                        padding: const EdgeInsets.only(left: 2.0),
//                                                        child: Text(
//                                                          "4.9 (200)",
//                                                          textAlign: TextAlign.center,
//                                                          style: TextStyle(
//                                                            color: Color.fromARGB(255, 112, 112, 112),
//                                                            fontFamily: "Jost",
//                                                            fontWeight: FontWeight.w400,
//                                                            fontSize: 12,
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                  Row(
//                                                    children: <Widget>[
//                                                      Container(
//                                                        width: 16,
//                                                        height: 16,
//                                                        child: Image.asset(
//                                                          "assets/images/icon.png",
//                                                          fit: BoxFit.none,
//                                                        ),
//                                                      ),
//                                                      Padding(
//                                                        padding: const EdgeInsets.only(left: 2.0),
//                                                        child: Text(
//                                                          "8 - 12 AM",
//                                                          textAlign: TextAlign.center,
//                                                          style: TextStyle(
//                                                            color: Color.fromARGB(255, 112, 112, 112),
//                                                            fontFamily: "Jost",
//                                                            fontWeight: FontWeight.w400,
//                                                            fontSize: 12,
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                  Row(
//                                                    children: <Widget>[
//                                                      Container(
//                                                        width: 16,
//                                                        height: 16,
//                                                        child: Image.asset(
//                                                          "assets/images/rupee-price-11.png",
//                                                          fit: BoxFit.none,
//                                                        ),
//                                                      ),
//                                                      Padding(
//                                                        padding: const EdgeInsets.only(left: 2.0),
//                                                        child: Text(
//                                                          "100 for two",
//                                                          textAlign: TextAlign.center,
//                                                          style: TextStyle(
//                                                            color: Color.fromARGB(255, 112, 112, 112),
//                                                            fontFamily: "Jost",
//                                                            fontWeight: FontWeight.w400,
//                                                            fontSize: 12,
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                ],
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Container(
//                                    margin: EdgeInsets.all(5.0),
//                                    decoration: BoxDecoration(
//                                      color: Color.fromARGB(255, 255, 255, 255),
//                                      borderRadius: BorderRadius.all(Radius.circular(16)),
//                                      image: DecorationImage(
//                                        image: AssetImage(
//                                          "assets/images/bg-kitchen-2.png",
//                                        ),
//                                        fit: BoxFit.cover,
//                                      ),
//                                    ),
//                                    child: Column(
//                                      mainAxisAlignment: MainAxisAlignment.end,
//                                      children: <Widget>[
//                                        Container(
//                                          height: 120,
//                                          margin: EdgeInsets.all(20.0),
//                                          padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 13),
//                                          decoration: BoxDecoration(
//                                            color: Color.fromARGB(255, 255, 255, 255),
//                                            boxShadow: [
//                                              BoxShadow(
//                                                color: Color.fromARGB(26, 253, 185, 0),
//                                                offset: Offset(0, 7),
//                                                blurRadius: 20,
//                                              ),
//                                            ],
//                                            borderRadius: BorderRadius.all(Radius.circular(8)),
//                                          ),
//                                          child: Column(
//                                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                            children: <Widget>[
//                                              Row(
//                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                children: <Widget>[
//                                                  Column(
//                                                    mainAxisAlignment: MainAxisAlignment.start,
//                                                    crossAxisAlignment: CrossAxisAlignment.start,
//                                                    children: <Widget>[
//                                                      Text(
//                                                        "Mama’s Little Bakery",
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 20, 33, 61),
//                                                          fontFamily: "Proxima Nova",
//                                                          fontWeight: FontWeight.w700,
//                                                          fontSize: 20,
//                                                        ),
//                                                      ),
//                                                      SizedBox(
//                                                        height: 2.0,
//                                                      ),
//                                                      Text(
//                                                        "North Indian",
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 112, 112, 112),
//                                                          fontFamily: "Jost",
//                                                          fontWeight: FontWeight.w400,
//                                                          fontSize: 14,
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                  Container(
//                                                    width: 44,
//                                                    height: 44,
//                                                    child: Image.asset(
//                                                      "assets/images/logo-icon-14.png",
//                                                      fit: BoxFit.none,
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                              Container(
//                                                height: 2,
//                                                margin: EdgeInsets.only(top: 8),
//                                                decoration: BoxDecoration(
//                                                  color: Color.fromARGB(255, 234, 234, 234),
//                                                ),
//                                                child: Container(),
//                                              ),
//                                              SizedBox(
//                                                height: 2.0,
//                                              ),
//                                              Row(
//                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                children: <Widget>[
//                                                  Row(
//                                                    children: <Widget>[
//                                                      Container(
//                                                        width: 16,
//                                                        height: 16,
//                                                        child: Image.asset(
//                                                          "assets/images/path-13.png",
//                                                          fit: BoxFit.none,
//                                                        ),
//                                                      ),
//                                                      Padding(
//                                                        padding: const EdgeInsets.only(left: 2.0),
//                                                        child: Text(
//                                                          "4.9 (200)",
//                                                          textAlign: TextAlign.center,
//                                                          style: TextStyle(
//                                                            color: Color.fromARGB(255, 112, 112, 112),
//                                                            fontFamily: "Jost",
//                                                            fontWeight: FontWeight.w400,
//                                                            fontSize: 12,
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                  Row(
//                                                    children: <Widget>[
//                                                      Container(
//                                                        width: 16,
//                                                        height: 16,
//                                                        child: Image.asset(
//                                                          "assets/images/icon.png",
//                                                          fit: BoxFit.none,
//                                                        ),
//                                                      ),
//                                                      Padding(
//                                                        padding: const EdgeInsets.only(left: 2.0),
//                                                        child: Text(
//                                                          "8 - 12 AM",
//                                                          textAlign: TextAlign.center,
//                                                          style: TextStyle(
//                                                            color: Color.fromARGB(255, 112, 112, 112),
//                                                            fontFamily: "Jost",
//                                                            fontWeight: FontWeight.w400,
//                                                            fontSize: 12,
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                  Row(
//                                                    children: <Widget>[
//                                                      Container(
//                                                        width: 16,
//                                                        height: 16,
//                                                        child: Image.asset(
//                                                          "assets/images/rupee-price-11.png",
//                                                          fit: BoxFit.none,
//                                                        ),
//                                                      ),
//                                                      Padding(
//                                                        padding: const EdgeInsets.only(left: 2.0),
//                                                        child: Text(
//                                                          "100 for two",
//                                                          textAlign: TextAlign.center,
//                                                          style: TextStyle(
//                                                            color: Color.fromARGB(255, 112, 112, 112),
//                                                            fontFamily: "Jost",
//                                                            fontWeight: FontWeight.w400,
//                                                            fontSize: 12,
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                ],
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Container(
//                                    margin: EdgeInsets.all(5.0),
//                                    decoration: BoxDecoration(
//                                      color: Color.fromARGB(255, 255, 255, 255),
//                                      borderRadius: BorderRadius.all(Radius.circular(16)),
//                                      image: DecorationImage(
//                                        image: AssetImage(
//                                          "assets/images/bg-kitchen-2.png",
//                                        ),
//                                        fit: BoxFit.cover,
//                                      ),
//                                    ),
//                                    child: Column(
//                                      mainAxisAlignment: MainAxisAlignment.end,
//                                      children: <Widget>[
//                                        Container(
//                                          height: 120,
//                                          margin: EdgeInsets.all(20.0),
//                                          padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 13),
//                                          decoration: BoxDecoration(
//                                            color: Color.fromARGB(255, 255, 255, 255),
//                                            boxShadow: [
//                                              BoxShadow(
//                                                color: Color.fromARGB(26, 253, 185, 0),
//                                                offset: Offset(0, 7),
//                                                blurRadius: 20,
//                                              ),
//                                            ],
//                                            borderRadius: BorderRadius.all(Radius.circular(8)),
//                                          ),
//                                          child: Column(
//                                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                            children: <Widget>[
//                                              Row(
//                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                children: <Widget>[
//                                                  Column(
//                                                    mainAxisAlignment: MainAxisAlignment.start,
//                                                    crossAxisAlignment: CrossAxisAlignment.start,
//                                                    children: <Widget>[
//                                                      Text(
//                                                        "Mama’s Little Bakery",
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 20, 33, 61),
//                                                          fontFamily: "Proxima Nova",
//                                                          fontWeight: FontWeight.w700,
//                                                          fontSize: 20,
//                                                        ),
//                                                      ),
//                                                      SizedBox(
//                                                        height: 2.0,
//                                                      ),
//                                                      Text(
//                                                        "North Indian",
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 112, 112, 112),
//                                                          fontFamily: "Jost",
//                                                          fontWeight: FontWeight.w400,
//                                                          fontSize: 14,
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                  Container(
//                                                    width: 44,
//                                                    height: 44,
//                                                    child: Image.asset(
//                                                      "assets/images/logo-icon-14.png",
//                                                      fit: BoxFit.none,
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                              Container(
//                                                height: 2,
//                                                margin: EdgeInsets.only(top: 8),
//                                                decoration: BoxDecoration(
//                                                  color: Color.fromARGB(255, 234, 234, 234),
//                                                ),
//                                                child: Container(),
//                                              ),
//                                              SizedBox(
//                                                height: 2.0,
//                                              ),
//                                              Row(
//                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                children: <Widget>[
//                                                  Row(
//                                                    children: <Widget>[
//                                                      Container(
//                                                        width: 16,
//                                                        height: 16,
//                                                        child: Image.asset(
//                                                          "assets/images/path-13.png",
//                                                          fit: BoxFit.none,
//                                                        ),
//                                                      ),
//                                                      Padding(
//                                                        padding: const EdgeInsets.only(left: 2.0),
//                                                        child: Text(
//                                                          "4.9 (200)",
//                                                          textAlign: TextAlign.center,
//                                                          style: TextStyle(
//                                                            color: Color.fromARGB(255, 112, 112, 112),
//                                                            fontFamily: "Jost",
//                                                            fontWeight: FontWeight.w400,
//                                                            fontSize: 12,
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                  Row(
//                                                    children: <Widget>[
//                                                      Container(
//                                                        width: 16,
//                                                        height: 16,
//                                                        child: Image.asset(
//                                                          "assets/images/icon.png",
//                                                          fit: BoxFit.none,
//                                                        ),
//                                                      ),
//                                                      Padding(
//                                                        padding: const EdgeInsets.only(left: 2.0),
//                                                        child: Text(
//                                                          "8 - 12 AM",
//                                                          textAlign: TextAlign.center,
//                                                          style: TextStyle(
//                                                            color: Color.fromARGB(255, 112, 112, 112),
//                                                            fontFamily: "Jost",
//                                                            fontWeight: FontWeight.w400,
//                                                            fontSize: 12,
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                  Row(
//                                                    children: <Widget>[
//                                                      Container(
//                                                        width: 16,
//                                                        height: 16,
//                                                        child: Image.asset(
//                                                          "assets/images/rupee-price-11.png",
//                                                          fit: BoxFit.none,
//                                                        ),
//                                                      ),
//                                                      Padding(
//                                                        padding: const EdgeInsets.only(left: 2.0),
//                                                        child: Text(
//                                                          "100 for two",
//                                                          textAlign: TextAlign.center,
//                                                          style: TextStyle(
//                                                            color: Color.fromARGB(255, 112, 112, 112),
//                                                            fontFamily: "Jost",
//                                                            fontWeight: FontWeight.w400,
//                                                            fontSize: 12,
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                ],
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Container(
//                                    margin: EdgeInsets.all(5.0),
//                                    decoration: BoxDecoration(
//                                      color: Color.fromARGB(255, 255, 255, 255),
//                                      borderRadius: BorderRadius.all(Radius.circular(16)),
//                                      image: DecorationImage(
//                                        image: AssetImage(
//                                          "assets/images/bg-kitchen-2.png",
//                                        ),
//                                        fit: BoxFit.cover,
//                                      ),
//                                    ),
//                                    child: Column(
//                                      mainAxisAlignment: MainAxisAlignment.end,
//                                      children: <Widget>[
//                                        Container(
//                                          height: 120,
//                                          margin: EdgeInsets.all(20.0),
//                                          padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 13),
//                                          decoration: BoxDecoration(
//                                            color: Color.fromARGB(255, 255, 255, 255),
//                                            boxShadow: [
//                                              BoxShadow(
//                                                color: Color.fromARGB(26, 253, 185, 0),
//                                                offset: Offset(0, 7),
//                                                blurRadius: 20,
//                                              ),
//                                            ],
//                                            borderRadius: BorderRadius.all(Radius.circular(8)),
//                                          ),
//                                          child: Column(
//                                            crossAxisAlignment: CrossAxisAlignment.stretch,
//                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                            children: <Widget>[
//                                              Row(
//                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                children: <Widget>[
//                                                  Column(
//                                                    mainAxisAlignment: MainAxisAlignment.start,
//                                                    crossAxisAlignment: CrossAxisAlignment.start,
//                                                    children: <Widget>[
//                                                      Text(
//                                                        "Mama’s Little Bakery",
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 20, 33, 61),
//                                                          fontFamily: "Proxima Nova",
//                                                          fontWeight: FontWeight.w700,
//                                                          fontSize: 20,
//                                                        ),
//                                                      ),
//                                                      SizedBox(
//                                                        height: 2.0,
//                                                      ),
//                                                      Text(
//                                                        "North Indian",
//                                                        style: TextStyle(
//                                                          color: Color.fromARGB(255, 112, 112, 112),
//                                                          fontFamily: "Jost",
//                                                          fontWeight: FontWeight.w400,
//                                                          fontSize: 14,
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                  Container(
//                                                    width: 44,
//                                                    height: 44,
//                                                    child: Image.asset(
//                                                      "assets/images/logo-icon-14.png",
//                                                      fit: BoxFit.none,
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                              Container(
//                                                height: 2,
//                                                margin: EdgeInsets.only(top: 8),
//                                                decoration: BoxDecoration(
//                                                  color: Color.fromARGB(255, 234, 234, 234),
//                                                ),
//                                                child: Container(),
//                                              ),
//                                              SizedBox(
//                                                height: 2.0,
//                                              ),
//                                              Row(
//                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                children: <Widget>[
//                                                  Row(
//                                                    children: <Widget>[
//                                                      Container(
//                                                        width: 16,
//                                                        height: 16,
//                                                        child: Image.asset(
//                                                          "assets/images/path-13.png",
//                                                          fit: BoxFit.none,
//                                                        ),
//                                                      ),
//                                                      Padding(
//                                                        padding: const EdgeInsets.only(left: 2.0),
//                                                        child: Text(
//                                                          "4.9 (200)",
//                                                          textAlign: TextAlign.center,
//                                                          style: TextStyle(
//                                                            color: Color.fromARGB(255, 112, 112, 112),
//                                                            fontFamily: "Jost",
//                                                            fontWeight: FontWeight.w400,
//                                                            fontSize: 12,
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                  Row(
//                                                    children: <Widget>[
//                                                      Container(
//                                                        width: 16,
//                                                        height: 16,
//                                                        child: Image.asset(
//                                                          "assets/images/icon.png",
//                                                          fit: BoxFit.none,
//                                                        ),
//                                                      ),
//                                                      Padding(
//                                                        padding: const EdgeInsets.only(left: 2.0),
//                                                        child: Text(
//                                                          "8 - 12 AM",
//                                                          textAlign: TextAlign.center,
//                                                          style: TextStyle(
//                                                            color: Color.fromARGB(255, 112, 112, 112),
//                                                            fontFamily: "Jost",
//                                                            fontWeight: FontWeight.w400,
//                                                            fontSize: 12,
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                  Row(
//                                                    children: <Widget>[
//                                                      Container(
//                                                        width: 16,
//                                                        height: 16,
//                                                        child: Image.asset(
//                                                          "assets/images/rupee-price-11.png",
//                                                          fit: BoxFit.none,
//                                                        ),
//                                                      ),
//                                                      Padding(
//                                                        padding: const EdgeInsets.only(left: 2.0),
//                                                        child: Text(
//                                                          "100 for two",
//                                                          textAlign: TextAlign.center,
//                                                          style: TextStyle(
//                                                            color: Color.fromARGB(255, 112, 112, 112),
//                                                            fontFamily: "Jost",
//                                                            fontWeight: FontWeight.w400,
//                                                            fontSize: 12,
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                ],
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ],
//
////                                imageList.map(
////                                      (url) {
////                                    return Container(
////                                      margin: EdgeInsets.all(5.0),
////                                      child: ClipRRect(
////                                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
////                                        child: Image.network(
////                                          url,
////                                          fit: BoxFit.cover,
////                                          width: 1000.0,
////                                        ),
////                                      ),
////                                    );
////                                  },
////                                ).toList(),
//                              ),
//                            ),
//
//                          ],
//                        ),
//                      ),
////                      Container(
////                        height: 416,
////                        child: Stack(
////                          alignment: Alignment.center,
////                          children: [
////                            Positioned(
////                              left: 0,
////                              top: 0,
////                              right: 0,
////                              child: Image.asset(
////                                "assets/images/bg-header-4.png",
////                                fit: BoxFit.fill,
////                              ),
////                            ),
////                            Positioned(
////                              left: 0,
////                              top: 20,
////                              right: 0,
////                              child: Column(
////                                crossAxisAlignment: CrossAxisAlignment.stretch,
////                                children: [
////                                  Container(
////                                    height: 77,
////                                    decoration: BoxDecoration(
////                                      color: Color.fromARGB(255, 253, 200, 48),
////                                    ),
////                                    child: Row(
////                                      children: [
////                                        Container(
////                                          width: 201,
////                                          height: 46,
////                                          margin: EdgeInsets.only(left: 15),
////                                          child: Stack(
////                                            children: [
////                                              Positioned(
////                                                left: 0,
////                                                top: 0,
////                                                child: Text(
////                                                  "Delivery Address",
////                                                  textAlign: TextAlign.center,
////                                                  style: TextStyle(
////                                                    color: Color.fromARGB(255, 112, 112, 112),
////                                                    fontFamily: "Jost",
////                                                    fontWeight: FontWeight.w400,
////                                                    fontSize: 14,
////                                                  ),
////                                                ),
////                                              ),
////                                              Positioned(
////                                                left: 0,
////                                                top: 17,
////                                                right: 0,
////                                                child: FlatButton(
////                                                  onPressed: () => this.onEditLocationPressed(context),
////                                                  color: Color.fromARGB(0, 0, 0, 0),
////                                                  shape: RoundedRectangleBorder(
////                                                    borderRadius: BorderRadius.all(Radius.circular(0)),
////                                                  ),
////                                                  textColor: Color.fromARGB(255, 20, 33, 61),
////                                                  padding: EdgeInsets.all(0),
////                                                  child: Row(
////                                                    mainAxisAlignment: MainAxisAlignment.center,
////                                                    children: [
////                                                      Image.asset("assets/images/edit-icon.png",),
////                                                      SizedBox(
////                                                        width: 10,
////                                                      ),
////                                                      Text(
////                                                        "Rohini, Sector - 8",
////                                                        textAlign: TextAlign.center,
////                                                        style: TextStyle(
////                                                          color: Color.fromARGB(255, 20, 33, 61),
////                                                          fontFamily: "Proxima Nova",
////                                                          fontWeight: FontWeight.w400,
////                                                          fontSize: 24,
////                                                        ),
////                                                      ),
////                                                    ],
////                                                  ),
////                                                ),
////                                              ),
////                                            ],
////                                          ),
////                                        ),
////                                        Spacer(),
////                                        Container(
////                                          width: 44,
////                                          height: 44,
////                                          margin: EdgeInsets.only(right: 16),
////                                          child: FlatButton(
////                                            onPressed: () => this.onMealPreferencePressed(context),
////                                            color: Color.fromARGB(0, 0, 0, 0),
////                                            shape: RoundedRectangleBorder(
////                                              borderRadius: BorderRadius.all(Radius.circular(0)),
////                                            ),
////                                            textColor: Color.fromARGB(255, 0, 0, 0),
////                                            padding: EdgeInsets.all(0),
////                                            child: Row(
////                                              mainAxisAlignment: MainAxisAlignment.center,
////                                              children: [
////                                                Image.asset("assets/images/meal-preference-icon.png",),
////                                                SizedBox(
////                                                  width: 10,
////                                                ),
////                                                Text(
////                                                  "",
////                                                  textAlign: TextAlign.left,
////                                                  style: TextStyle(
////                                                    color: Color.fromARGB(255, 0, 0, 0),
////                                                    fontWeight: FontWeight.w400,
////                                                    fontSize: 12,
////                                                  ),
////                                                ),
////                                              ],
////                                            ),
////                                          ),
////                                        ),
////                                      ],
////                                    ),
////                                  ),
////                                  Container(
////                                    height: 300,
////                                    margin: EdgeInsets.only(top: 19),
////                                    child: GridView.builder(
////                                      scrollDirection: Axis.horizontal,
////                                      padding: EdgeInsets.symmetric(horizontal: 20),
////                                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
////                                        maxCrossAxisExtent: 300,
////                                        childAspectRatio: 0.89552,
////                                        mainAxisSpacing: 10,
////                                      ),
////                                      itemBuilder: (context, index) => CarouselItemWidget(),
////                                    ),
////                                  ),
////                                ],
////                              ),
////                            ),
////                          ],
////                        ),
////                      ),
//                      Padding(
//                        padding: EdgeInsets.only(top: 24, left: 16),
//                        child: Text(
//                          "Kitchens Near You",
//                          textAlign: TextAlign.left,
//                          style: TextStyle(
//                            color: Color.fromARGB(255, 20, 33, 61),
//                            fontFamily: "Proxima Nova",
//                            fontWeight: FontWeight.w400,
//                            fontSize: 24,
//                          ),
//                        ),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.only(top: 4, left: 16, bottom: 8),
//                        child: Text(
//                          "Tiffin Services/Home Kitchens in your area",
//                          textAlign: TextAlign.left,
//                          style: TextStyle(
//                            color: Color.fromARGB(255, 112, 112, 112),
//                            fontFamily: "Jost",
//                            fontWeight: FontWeight.w400,
//                            fontSize: 14,
//                          ),
//                        ),
//                      ),
//                      Container(
//                        height: 120,
//                        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
//                        padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 13),
//                        decoration: BoxDecoration(
//                          color: Color.fromARGB(255, 255, 255, 255),
//                          boxShadow: [
//                            BoxShadow(
//                              color: Color.fromARGB(26, 253, 185, 0),
//                              offset: Offset(0, 7),
//                              blurRadius: 20,
//                            ),
//                          ],
//                          borderRadius: BorderRadius.all(Radius.circular(8)),
//                        ),
//                        child: Column(
//                          crossAxisAlignment: CrossAxisAlignment.stretch,
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Column(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text(
//                                      "Mama’s Little Bakery",
//                                      style: TextStyle(
//                                        color: Color.fromARGB(255, 20, 33, 61),
//                                        fontFamily: "Proxima Nova",
//                                        fontWeight: FontWeight.w700,
//                                        fontSize: 20,
//                                      ),
//                                    ),
//                                    SizedBox(
//                                      height: 2.0,
//                                    ),
//                                    Text(
//                                      "North Indian",
//                                      style: TextStyle(
//                                        color: Color.fromARGB(255, 112, 112, 112),
//                                        fontFamily: "Jost",
//                                        fontWeight: FontWeight.w400,
//                                        fontSize: 14,
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                                Container(
//                                  width: 44,
//                                  height: 44,
//                                  child: Image.asset(
//                                    "assets/images/logo-icon-14.png",
//                                    fit: BoxFit.none,
//                                  ),
//                                ),
//                              ],
//                            ),
//                            Container(
//                              height: 2,
//                              margin: EdgeInsets.only(top: 8),
//                              decoration: BoxDecoration(
//                                color: Color.fromARGB(255, 234, 234, 234),
//                              ),
//                              child: Container(),
//                            ),
//                            SizedBox(
//                              height: 2.0,
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Row(
//                                  children: <Widget>[
//                                    Container(
//                                      width: 16,
//                                      height: 16,
//                                      child: Image.asset(
//                                        "assets/images/path-13.png",
//                                        fit: BoxFit.none,
//                                      ),
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.only(left: 2.0),
//                                      child: Text(
//                                        "4.9 (200)",
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 112, 112, 112),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 12,
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                                Row(
//                                  children: <Widget>[
//                                    Container(
//                                      width: 16,
//                                      height: 16,
//                                      child: Image.asset(
//                                        "assets/images/icon.png",
//                                        fit: BoxFit.none,
//                                      ),
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.only(left: 2.0),
//                                      child: Text(
//                                        "8 - 12 AM",
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 112, 112, 112),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 12,
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                                Row(
//                                  children: <Widget>[
//                                    Container(
//                                      width: 16,
//                                      height: 16,
//                                      child: Image.asset(
//                                        "assets/images/rupee-price-11.png",
//                                        fit: BoxFit.none,
//                                      ),
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.only(left: 2.0),
//                                      child: Text(
//                                        "100 for two",
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 112, 112, 112),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 12,
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                      ),
//                      Container(
//                        height: 120,
//                        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
//                        padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 13),
//                        decoration: BoxDecoration(
//                          color: Color.fromARGB(255, 255, 255, 255),
//                          boxShadow: [
//                            BoxShadow(
//                              color: Color.fromARGB(26, 253, 185, 0),
//                              offset: Offset(0, 7),
//                              blurRadius: 20,
//                            ),
//                          ],
//                          borderRadius: BorderRadius.all(Radius.circular(8)),
//                        ),
//                        child: Column(
//                          crossAxisAlignment: CrossAxisAlignment.stretch,
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Column(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text(
//                                      "Mama’s Little Bakery",
//                                      style: TextStyle(
//                                        color: Color.fromARGB(255, 20, 33, 61),
//                                        fontFamily: "Proxima Nova",
//                                        fontWeight: FontWeight.w700,
//                                        fontSize: 20,
//                                      ),
//                                    ),
//                                    SizedBox(
//                                      height: 2.0,
//                                    ),
//                                    Text(
//                                      "North Indian",
//                                      style: TextStyle(
//                                        color: Color.fromARGB(255, 112, 112, 112),
//                                        fontFamily: "Jost",
//                                        fontWeight: FontWeight.w400,
//                                        fontSize: 14,
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                                Container(
//                                  width: 44,
//                                  height: 44,
//                                  child: Image.asset(
//                                    "assets/images/logo-icon-14.png",
//                                    fit: BoxFit.none,
//                                  ),
//                                ),
//                              ],
//                            ),
//                            Container(
//                              height: 2,
//                              margin: EdgeInsets.only(top: 8),
//                              decoration: BoxDecoration(
//                                color: Color.fromARGB(255, 234, 234, 234),
//                              ),
//                              child: Container(),
//                            ),
//                            SizedBox(
//                              height: 2.0,
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Row(
//                                  children: <Widget>[
//                                    Container(
//                                      width: 16,
//                                      height: 16,
//                                      child: Image.asset(
//                                        "assets/images/path-13.png",
//                                        fit: BoxFit.none,
//                                      ),
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.only(left: 2.0),
//                                      child: Text(
//                                        "4.9 (200)",
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 112, 112, 112),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 12,
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                                Row(
//                                  children: <Widget>[
//                                    Container(
//                                      width: 16,
//                                      height: 16,
//                                      child: Image.asset(
//                                        "assets/images/icon.png",
//                                        fit: BoxFit.none,
//                                      ),
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.only(left: 2.0),
//                                      child: Text(
//                                        "8 - 12 AM",
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 112, 112, 112),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 12,
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                                Row(
//                                  children: <Widget>[
//                                    Container(
//                                      width: 16,
//                                      height: 16,
//                                      child: Image.asset(
//                                        "assets/images/rupee-price-11.png",
//                                        fit: BoxFit.none,
//                                      ),
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.only(left: 2.0),
//                                      child: Text(
//                                        "100 for two",
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 112, 112, 112),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 12,
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                      ),
//                      Container(
//                        height: 120,
//                        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
//                        padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 13),
//                        decoration: BoxDecoration(
//                          color: Color.fromARGB(255, 255, 255, 255),
//                          boxShadow: [
//                            BoxShadow(
//                              color: Color.fromARGB(26, 253, 185, 0),
//                              offset: Offset(0, 7),
//                              blurRadius: 20,
//                            ),
//                          ],
//                          borderRadius: BorderRadius.all(Radius.circular(8)),
//                        ),
//                        child: Column(
//                          crossAxisAlignment: CrossAxisAlignment.stretch,
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Column(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text(
//                                      "Mama’s Little Bakery",
//                                      style: TextStyle(
//                                        color: Color.fromARGB(255, 20, 33, 61),
//                                        fontFamily: "Proxima Nova",
//                                        fontWeight: FontWeight.w700,
//                                        fontSize: 20,
//                                      ),
//                                    ),
//                                    SizedBox(
//                                      height: 2.0,
//                                    ),
//                                    Text(
//                                      "North Indian",
//                                      style: TextStyle(
//                                        color: Color.fromARGB(255, 112, 112, 112),
//                                        fontFamily: "Jost",
//                                        fontWeight: FontWeight.w400,
//                                        fontSize: 14,
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                                Container(
//                                  width: 44,
//                                  height: 44,
//                                  child: Image.asset(
//                                    "assets/images/logo-icon-14.png",
//                                    fit: BoxFit.none,
//                                  ),
//                                ),
//                              ],
//                            ),
//                            Container(
//                              height: 2,
//                              margin: EdgeInsets.only(top: 8),
//                              decoration: BoxDecoration(
//                                color: Color.fromARGB(255, 234, 234, 234),
//                              ),
//                              child: Container(),
//                            ),
//                            SizedBox(
//                              height: 2.0,
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Row(
//                                  children: <Widget>[
//                                    Container(
//                                      width: 16,
//                                      height: 16,
//                                      child: Image.asset(
//                                        "assets/images/path-13.png",
//                                        fit: BoxFit.none,
//                                      ),
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.only(left: 2.0),
//                                      child: Text(
//                                        "4.9 (200)",
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 112, 112, 112),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 12,
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                                Row(
//                                  children: <Widget>[
//                                    Container(
//                                      width: 16,
//                                      height: 16,
//                                      child: Image.asset(
//                                        "assets/images/icon.png",
//                                        fit: BoxFit.none,
//                                      ),
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.only(left: 2.0),
//                                      child: Text(
//                                        "8 - 12 AM",
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 112, 112, 112),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 12,
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                                Row(
//                                  children: <Widget>[
//                                    Container(
//                                      width: 16,
//                                      height: 16,
//                                      child: Image.asset(
//                                        "assets/images/rupee-price-11.png",
//                                        fit: BoxFit.none,
//                                      ),
//                                    ),
//                                    Padding(
//                                      padding: const EdgeInsets.only(left: 2.0),
//                                      child: Text(
//                                        "100 for two",
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 112, 112, 112),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 12,
//                                        ),
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                      ),
//                      Container(
//                        height: 37,
//                        margin: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 20),
//                        child: FlatButton(
//                          onPressed: () => this.onAllKitchensButtonPressed(context),
//                          color: Color.fromARGB(255, 253, 200, 48),
//                          shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.all(Radius.circular(5)),
//                          ),
//                          textColor: Color.fromARGB(255, 255, 255, 255),
//                          padding: EdgeInsets.all(0),
//                          child: Text(
//                            "SEE ALL KITCHENS",
//                            textAlign: TextAlign.center,
//                            style: TextStyle(
//                              color: Color.fromARGB(255, 255, 255, 255),
//                              fontFamily: "Jost",
//                              fontWeight: FontWeight.w400,
//                              fontSize: 16,
//                            ),
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//            ),
//          ],
//        ),
//      ),
    );
  }
}