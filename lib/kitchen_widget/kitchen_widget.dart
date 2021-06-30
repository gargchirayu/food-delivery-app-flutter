/*
*  kitchen_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/home_widget/home_widget.dart';
import 'package:fudito/item_search_widget/item_search_widget.dart';
import 'package:fudito/kitchen_widget/add_to_tiffin_widget.dart';
import 'package:fudito/kitchen_widget/kitchen_info_widget.dart';
import 'package:fudito/kitchen_widget/tiffin_details_widget.dart';
import 'package:fudito/shared/cart_item.dart';
import 'package:fudito/values/values.dart';


class KitchenWidget extends StatefulWidget {
  
  @override
  _KitchenWidgetState createState() => _KitchenWidgetState();
}

class _KitchenWidgetState extends State<KitchenWidget> {

  bool fav = false;
  var favicon = Icons.favorite_border;

  void onSearchBarPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ItemSearchWidget()));

  void onSavePressed(BuildContext context) {

  }

  void onKitchenCardPressed(BuildContext context) {
    showModalBottomSheet(context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: EdgeInsets.only(left: 20, right: 20, top:8),
        height: MediaQuery.of(context).size.height * 0.49,
        decoration: new BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(10.0),
            topRight: const Radius.circular(10.0),
          ),
        ),
        child: KitchenInfoWidget(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      extendBodyBehindAppBar: true,
//      appBar: AppBar(
//        brightness: Brightness.light,
//        leading: Container(
//          margin: EdgeInsets.all(8),
//          //padding: EdgeInsets.zero,
//          decoration: BoxDecoration(
//              borderRadius: BorderRadius.all(Radius.circular(28)),
//              color: Colors.white,
//              boxShadow: [
//                BoxShadow(
//                  color: Color.fromARGB(80, 112, 112, 112),
//                  offset: Offset(0, 1),
//                  blurRadius: 10,
//                ),
//              ]
//          ),
//          child: IconButton(
//            padding: EdgeInsets.only(right: 3),
//            onPressed: () => Navigator.pop(context),
//            icon: Center(
//              child: Icon(
//                  Icons.arrow_back_ios,
//                  color: Color.fromARGB(255, 20, 33, 61),
//                  size: 22
//              ),
//            ),
//            //Image.asset("assets/images/back.png",),
//          ),
//        ),
//        actions: [
//          Container(
//            margin: EdgeInsets.only(top: 8, right: 8, bottom:8),
//            //padding: EdgeInsets.zero,
//            decoration: BoxDecoration(
//                shape: BoxShape.circle,
//                //borderRadius: BorderRadius.all(Radius.circular(35)),
//                color: Colors.white,
//                boxShadow: [
//                  BoxShadow(
//                    color: Color.fromARGB(80, 112, 112, 112),
//                    offset: Offset(0, 1),
//                    blurRadius: 10,
//                  ),
//                ]
//            ),
//            child: IconButton(
//              onPressed: () => setState(() {
//                fav=!fav;
//                if(fav == true){
//                  favicon = Icons.favorite;
//                  //stuff
//                }
//                else{
//                  favicon = Icons.favorite_border;
//                }
//              }
//              ),
//              icon: Center(
//                child: Icon(
//                    favicon,
//                    color: Color.fromARGB(255, 255, 51, 51),
//                    size: 26
//                ),
//              ),
//            ),
//          ),
////          IconButton(
////            onPressed: () => this.onSavePressed(context),
////            icon: Image.asset("assets/images/like-button.png",),
////          ),
//        ],
//        backgroundColor: Colors.transparent,
//        elevation: 0,
//      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: CustomScrollView(
          slivers: <Widget>[
//            SliverAppBar(
//              elevation: 0,
//              backgroundColor: Colors.transparent,
//              leading: Container(
//                margin: EdgeInsets.all(8),
//                //padding: EdgeInsets.zero,
//                decoration: BoxDecoration(
//                    borderRadius: BorderRadius.all(Radius.circular(28)),
//                    color: Colors.white,
//                    boxShadow: [
//                      BoxShadow(
//                        color: Color.fromARGB(80, 112, 112, 112),
//                        offset: Offset(0, 1),
//                        blurRadius: 10,
//                      ),
//                    ]
//                ),
//                child: IconButton(
//                  padding: EdgeInsets.only(right: 3),
//                  onPressed: () => Navigator.pop(context),
//                  icon: Center(
//                    child: Icon(
//                        Icons.arrow_back_ios,
//                        color: Color.fromARGB(255, 20, 33, 61),
//                        size: 22
//                    ),
//                  ),
//                  //Image.asset("assets/images/back.png",),
//                ),
//              ),
//              actions: <Widget>[
//                Container(
//                  margin: EdgeInsets.only(top: 8, right: 8, bottom:8),
//                  //padding: EdgeInsets.zero,
//                  decoration: BoxDecoration(
//                      shape: BoxShape.circle,
//                      //borderRadius: BorderRadius.all(Radius.circular(35)),
//                      color: Colors.white,
//                      boxShadow: [
//                        BoxShadow(
//                          color: Color.fromARGB(80, 112, 112, 112),
//                          offset: Offset(0, 1),
//                          blurRadius: 10,
//                        ),
//                      ]
//                  ),
//                  child: IconButton(
//                    onPressed: () => setState(() {
//                      fav=!fav;
//                      if(fav == true){
//                        favicon = Icons.favorite;
//                        //stuff
//                      }
//                      else{
//                        favicon = Icons.favorite_border;
//                      }
//                    }
//                    ),
//                    icon: Center(
//                      child: Icon(
//                          favicon,
//                          color: Color.fromARGB(255, 255, 51, 51),
//                          size: 26
//                      ),
//                    ),
//                  ),
//                ),
//              ],
//            ),
            SliverToBoxAdapter(
              child: Container(
                height: 255,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      right: 0,
                      child: Image.asset(
                        "assets/images/photo-1414235077428-338989a2e8c0-9.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(8),
                            //padding: EdgeInsets.zero,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(28)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(80, 112, 112, 112),
                                    offset: Offset(0, 1),
                                    blurRadius: 10,
                                  ),
                                ]
                            ),
                            child: IconButton(
                              padding: EdgeInsets.only(right: 3),
                              onPressed: () => Navigator.pop(context),
                              icon: Center(
                                child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Color.fromARGB(255, 20, 33, 61),
                                    size: 26
                                ),
                              ),
                              //Image.asset("assets/images/back.png",),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8, right: 8, bottom:8),
                            //padding: EdgeInsets.zero,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                //borderRadius: BorderRadius.all(Radius.circular(35)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(80, 112, 112, 112),
                                    offset: Offset(0, 1),
                                    blurRadius: 10,
                                  ),
                                ]
                            ),
                            child: IconButton(
                              padding: EdgeInsets.only(top: 3),
                              onPressed: () => setState(() {
                                fav=!fav;
                                if(fav == true){
                                  favicon = Icons.favorite;
                                  //stuff
                                }
                                else{
                                  favicon = Icons.favorite_border;
                                }
                              }
                              ),
                              icon: Center(
                                child: Icon(
                                    favicon,
                                    color: Color.fromARGB(255, 255, 51, 51),
                                    size: 26
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 111,
                      right: 20,
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () => this.onKitchenCardPressed(context),
                        child: Container(
                          height: 140,
                          padding: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(26, 253, 185, 0),
                                offset: Offset(0, 7),
                                blurRadius: 20,
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                        child: Text(
                                          "Mama’s Little Bakery",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 20, 33, 61),
                                            fontFamily: "Proxima Nova",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                        child: Text(
                                          "North Indian",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 112, 112, 112),
                                            fontFamily: "Jost",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 20.0),
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
                                height: 2,
                                margin: EdgeInsets.only(top: 8, left: 20, right: 20),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 234, 234, 234),
                                ),
                                child: Container(),
                              ),
                              SizedBox(
                                height: 2.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
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
                              ),
                              Container(
                                height: 20,
                                margin: EdgeInsets.only(top: 8),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 250, 250, 250),
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color.fromARGB(255, 159, 159, 159),
                                  ),
                                  //Image.asset("assets/images/union-7.png")
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
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 37,
                margin: EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 10),
                child: FlatButton(
                  onPressed: () => this.onSearchBarPressed(context),
                  color: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  textColor: Color.fromARGB(255, 112, 112, 112),
                  padding: EdgeInsets.only(left: 13),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/search-icon.png",),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Find food items",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 112, 112, 112),
                          fontFamily: "Proxima Nova",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
//                          mainAxisSpacing: 20.0,
//                          crossAxisSpacing: 20.0,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return KitchenItemCard();
                  },
                ),
              ),
            ),
          ],
        ),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          mainAxisAlignment: MainAxisAlignment.start,
//          children: <Widget>[
//            Expanded(
//              flex: 1,
//              child: SingleChildScrollView(
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: <Widget>[
//                    SliverToBoxAdapter(
//                      child: Container(
//                        height: 255,
//                        child: Stack(
//                          alignment: Alignment.center,
//                          children: [
//                            Positioned(
//                              left: 0,
//                              top: 0,
//                              right: 0,
//                              child: Image.asset(
//                                "assets/images/photo-1414235077428-338989a2e8c0-9.png",
//                                fit: BoxFit.fill,
//                              ),
//                            ),
//                            Positioned(
//                              left: 20,
//                              top: 111,
//                              right: 20,
//                              child: GestureDetector(
//                                behavior: HitTestBehavior.translucent,
//                                onTap: () => this.onKitchenCardPressed(context),
//                                child: Container(
//                                  height: 140,
//                                  padding: EdgeInsets.only(top: 16),
//                                  decoration: BoxDecoration(
//                                    color: Color.fromARGB(255, 255, 255, 255),
//                                    boxShadow: [
//                                      BoxShadow(
//                                        color: Color.fromARGB(26, 253, 185, 0),
//                                        offset: Offset(0, 7),
//                                        blurRadius: 20,
//                                      ),
//                                    ],
//                                    borderRadius: BorderRadius.all(Radius.circular(8)),
//                                  ),
//                                  child: Column(
//                                    crossAxisAlignment: CrossAxisAlignment.stretch,
//                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                    children: <Widget>[
//                                      Row(
//                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                        children: <Widget>[
//                                          Column(
//                                            mainAxisAlignment: MainAxisAlignment.start,
//                                            crossAxisAlignment: CrossAxisAlignment.start,
//                                            children: <Widget>[
//                                              Padding(
//                                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                                                child: Text(
//                                                  "Mama’s Little Bakery",
//                                                  style: TextStyle(
//                                                    color: Color.fromARGB(255, 20, 33, 61),
//                                                    fontFamily: "Proxima Nova",
//                                                    fontWeight: FontWeight.w700,
//                                                    fontSize: 20,
//                                                  ),
//                                                ),
//                                              ),
//                                              SizedBox(
//                                                height: 2.0,
//                                              ),
//                                              Padding(
//                                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                                                child: Text(
//                                                  "North Indian",
//                                                  style: TextStyle(
//                                                    color: Color.fromARGB(255, 112, 112, 112),
//                                                    fontFamily: "Jost",
//                                                    fontWeight: FontWeight.w400,
//                                                    fontSize: 14,
//                                                  ),
//                                                ),
//                                              ),
//                                            ],
//                                          ),
//                                          Container(
//                                            margin: EdgeInsets.symmetric(horizontal: 20.0),
//                                            width: 44,
//                                            height: 44,
//                                            child: Image.asset(
//                                              "assets/images/logo-icon-14.png",
//                                              fit: BoxFit.none,
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                      Container(
//                                        height: 2,
//                                        margin: EdgeInsets.only(top: 8, left: 20, right: 20),
//                                        decoration: BoxDecoration(
//                                          color: Color.fromARGB(255, 234, 234, 234),
//                                        ),
//                                        child: Container(),
//                                      ),
//                                      SizedBox(
//                                        height: 2.0,
//                                      ),
//                                      Padding(
//                                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                                        child: Row(
//                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                          children: <Widget>[
//                                            Row(
//                                              children: <Widget>[
//                                                Container(
//                                                  width: 16,
//                                                  height: 16,
//                                                  child: Image.asset(
//                                                    "assets/images/path-13.png",
//                                                    fit: BoxFit.none,
//                                                  ),
//                                                ),
//                                                Padding(
//                                                  padding: const EdgeInsets.only(left: 2.0),
//                                                  child: Text(
//                                                    "4.9 (200)",
//                                                    textAlign: TextAlign.center,
//                                                    style: TextStyle(
//                                                      color: Color.fromARGB(255, 112, 112, 112),
//                                                      fontFamily: "Jost",
//                                                      fontWeight: FontWeight.w400,
//                                                      fontSize: 12,
//                                                    ),
//                                                  ),
//                                                ),
//                                              ],
//                                            ),
//                                            Row(
//                                              children: <Widget>[
//                                                Container(
//                                                  width: 16,
//                                                  height: 16,
//                                                  child: Image.asset(
//                                                    "assets/images/icon.png",
//                                                    fit: BoxFit.none,
//                                                  ),
//                                                ),
//                                                Padding(
//                                                  padding: const EdgeInsets.only(left: 2.0),
//                                                  child: Text(
//                                                    "8 - 12 AM",
//                                                    textAlign: TextAlign.center,
//                                                    style: TextStyle(
//                                                      color: Color.fromARGB(255, 112, 112, 112),
//                                                      fontFamily: "Jost",
//                                                      fontWeight: FontWeight.w400,
//                                                      fontSize: 12,
//                                                    ),
//                                                  ),
//                                                ),
//                                              ],
//                                            ),
//                                            Row(
//                                              children: <Widget>[
//                                                Container(
//                                                  width: 16,
//                                                  height: 16,
//                                                  child: Image.asset(
//                                                    "assets/images/rupee-price-11.png",
//                                                    fit: BoxFit.none,
//                                                  ),
//                                                ),
//                                                Padding(
//                                                  padding: const EdgeInsets.only(left: 2.0),
//                                                  child: Text(
//                                                    "100 for two",
//                                                    textAlign: TextAlign.center,
//                                                    style: TextStyle(
//                                                      color: Color.fromARGB(255, 112, 112, 112),
//                                                      fontFamily: "Jost",
//                                                      fontWeight: FontWeight.w400,
//                                                      fontSize: 12,
//                                                    ),
//                                                  ),
//                                                ),
//                                              ],
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//                                      Container(
//                                        height: 20,
//                                        margin: EdgeInsets.only(top: 8),
//                                        decoration: BoxDecoration(
//                                          color: Color.fromARGB(255, 250, 250, 250),
//                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
//                                        ),
//                                        child: Center(
//                                            child: Icon(
//                                                Icons.keyboard_arrow_down,
//                                                color: Color.fromARGB(255, 159, 159, 159),
//                                              ),
//                                            //Image.asset("assets/images/union-7.png")
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ),
//                    SliverToBoxAdapter(
//                      child: Container(
//                        height: 37,
//                        margin: EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 10),
//                        child: FlatButton(
//                          onPressed: () => this.onSearchBarPressed(context),
//                          color: Color.fromARGB(255, 255, 255, 255),
//                          shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.all(Radius.circular(7)),
//                          ),
//                          textColor: Color.fromARGB(255, 112, 112, 112),
//                          padding: EdgeInsets.only(left: 13),
//                          child: Row(
//                            //mainAxisAlignment: MainAxisAlignment.start,
//                            children: [
//                              Image.asset("assets/images/search-icon.png",),
//                              SizedBox(
//                                width: 10,
//                              ),
//                              Text(
//                                "Find food items",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(
//                                  color: Color.fromARGB(255, 112, 112, 112),
//                                  fontFamily: "Proxima Nova",
//                                  fontWeight: FontWeight.w400,
//                                  fontSize: 16,
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ),
//                    ),
//                    SliverToBoxAdapter(
//                      child: Container(
//                        margin: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
//                        child: GridView.builder(
//                          padding: EdgeInsets.zero,
//                          physics: NeverScrollableScrollPhysics(),
//                          shrinkWrap: true,
//                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                            crossAxisCount: 2,
//                            childAspectRatio: 0.75,
////                          mainAxisSpacing: 20.0,
////                          crossAxisSpacing: 20.0,
//                          ),
//                          itemCount: 6,
//                          itemBuilder: (context, index) {
//                            return GestureDetector(
//                              onTap: () => this.onItemPressed(context),
//                              behavior: HitTestBehavior.translucent,
//                              child: Container(
//                                margin: EdgeInsets.all(10),
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 255, 255, 255),
//                                  boxShadow: [
//                                    BoxShadow(
//                                      color: Color.fromARGB(41, 253, 200, 48),
//                                      offset: Offset(0, 5),
//                                      blurRadius: 10,
//                                    ),
//                                  ],
//                                  borderRadius: BorderRadius.all(Radius.circular(10)),
//                                ),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  children: <Widget>[
//                                    Container(
//                                      decoration: BoxDecoration(
//                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
//                                      ),
//                                      child: Image.asset(
//                                        "assets/images/photo-3.png",
//                                        fit: BoxFit.cover,
//                                      ),
//                                    ),
//                                    Padding(
//                                      padding: EdgeInsets.all(8),
//                                      child: Text(
//                                        "Rajma Rice",
//                                        textAlign: TextAlign.left,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 20, 33, 61),
//                                          fontFamily: "Proxima Nova",
//                                          fontWeight: FontWeight.w700,
//                                          fontSize: 14,
//                                        ),
//                                      ),
//                                    ),
//                                    Padding(
//                                      padding: EdgeInsets.symmetric(horizontal: 8),
//                                      child: Text(
//                                        "Rs. 100.00",
//                                        textAlign: TextAlign.left,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 20, 33, 61),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 10,
//                                        ),
//                                      ),
//                                    )
//                                  ],
//                                ),
//                              ),
//                            );
//                          },
//                        ),
//                      ),
//                    ),
//
////                      Container(
////                        height: 200,
////                        child: GridView.count(
////                            crossAxisCount: 2,
////                            childAspectRatio: 1.0,
////                            padding: const EdgeInsets.all(4.0),
////                            mainAxisSpacing: 4.0,
////                            crossAxisSpacing: 4.0,
////                            children: <String>[
////                              'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',
////                              'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',
////                              'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',
////                              'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',
////                              'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',
////                              'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',
////                              'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',
////                              'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',
////                            ].map((String url) {
////                              return GridTile(
////                                  child: Image.network(url, fit: BoxFit.cover));
////                            }).toList()),
////                      )
//
//
////                      GridView.count(
////                        crossAxisCount: 2,
////                        crossAxisSpacing: 20,
////                        children: <Widget>[
////                          Container(
////                            width: 158,
////                            height: 206,
////                            decoration: BoxDecoration(
////                              color: Color.fromARGB(255, 128, 128, 128),
////                              boxShadow: [
////                                BoxShadow(
////                                  color: Color.fromARGB(41, 253, 200, 48),
////                                  offset: Offset(0, 5),
////                                  blurRadius: 10,
////                                ),
////                              ],
////                              borderRadius: BorderRadius.all(Radius.circular(10)),
////                            ),
////                            child: Column(
////                              crossAxisAlignment: CrossAxisAlignment.stretch,
////                              children: [
////                                Container(
////                                  height: 158,
////                                  child: Image.asset(
////                                    "assets/images/photo-3.png",
////                                    fit: BoxFit.cover,
////                                  ),
////                                ),
////                                Spacer(),
////                                Container(
////                                  height: 48,
////                                  decoration: BoxDecoration(
////                                    color: Color.fromARGB(255, 255, 255, 255),
////                                  ),
////                                  child: Column(
////                                    crossAxisAlignment: CrossAxisAlignment.start,
////                                    children: [
////                                      Container(
////                                        margin: EdgeInsets.only(left: 8, top: 5),
////                                        child: Text(
////                                          "Rajma Rice",
////                                          textAlign: TextAlign.center,
////                                          style: TextStyle(
////                                            color: Color.fromARGB(255, 20, 33, 61),
////                                            fontFamily: "Proxima Nova",
////                                            fontWeight: FontWeight.w700,
////                                            fontSize: 14,
////                                          ),
////                                        ),
////                                      ),
////                                      Container(
////                                        margin: EdgeInsets.only(left: 8, top: 6),
////                                        child: Text(
////                                          "Rs. 100.00",
////                                          textAlign: TextAlign.center,
////                                          style: TextStyle(
////                                            color: Color.fromARGB(255, 20, 33, 61),
////                                            fontFamily: "Jost",
////                                            fontWeight: FontWeight.w400,
////                                            fontSize: 10,
////                                          ),
////                                        ),
////                                      ),
////                                    ],
////                                  ),
////                                ),
////                              ],
////                            ),
////                          ),
////                          Container(
////                            width: 158,
////                            height: 206,
////                            decoration: BoxDecoration(
////                              color: Color.fromARGB(255, 128, 128, 128),
////                              boxShadow: [
////                                BoxShadow(
////                                  color: Color.fromARGB(41, 253, 200, 48),
////                                  offset: Offset(0, 5),
////                                  blurRadius: 10,
////                                ),
////                              ],
////                              borderRadius: BorderRadius.all(Radius.circular(10)),
////                            ),
////                            child: Column(
////                              crossAxisAlignment: CrossAxisAlignment.stretch,
////                              children: [
////                                Container(
////                                  height: 158,
////                                  child: Image.asset(
////                                    "assets/images/photo-3.png",
////                                    fit: BoxFit.cover,
////                                  ),
////                                ),
////                                Spacer(),
////                                Container(
////                                  height: 48,
////                                  decoration: BoxDecoration(
////                                    color: Color.fromARGB(255, 255, 255, 255),
////                                  ),
////                                  child: Column(
////                                    crossAxisAlignment: CrossAxisAlignment.start,
////                                    children: [
////                                      Container(
////                                        margin: EdgeInsets.only(left: 8, top: 5),
////                                        child: Text(
////                                          "Rajma Rice",
////                                          textAlign: TextAlign.center,
////                                          style: TextStyle(
////                                            color: Color.fromARGB(255, 20, 33, 61),
////                                            fontFamily: "Proxima Nova",
////                                            fontWeight: FontWeight.w700,
////                                            fontSize: 14,
////                                          ),
////                                        ),
////                                      ),
////                                      Container(
////                                        margin: EdgeInsets.only(left: 8, top: 6),
////                                        child: Text(
////                                          "Rs. 100.00",
////                                          textAlign: TextAlign.center,
////                                          style: TextStyle(
////                                            color: Color.fromARGB(255, 20, 33, 61),
////                                            fontFamily: "Jost",
////                                            fontWeight: FontWeight.w400,
////                                            fontSize: 10,
////                                          ),
////                                        ),
////                                      ),
////                                    ],
////                                  ),
////                                ),
////                              ],
////                            ),
////                          ),
////                          Container(
////                            width: 158,
////                            height: 206,
////                            decoration: BoxDecoration(
////                              color: Color.fromARGB(255, 128, 128, 128),
////                              boxShadow: [
////                                BoxShadow(
////                                  color: Color.fromARGB(41, 253, 200, 48),
////                                  offset: Offset(0, 5),
////                                  blurRadius: 10,
////                                ),
////                              ],
////                              borderRadius: BorderRadius.all(Radius.circular(10)),
////                            ),
////                            child: Column(
////                              crossAxisAlignment: CrossAxisAlignment.stretch,
////                              children: [
////                                Container(
////                                  height: 158,
////                                  child: Image.asset(
////                                    "assets/images/photo-3.png",
////                                    fit: BoxFit.cover,
////                                  ),
////                                ),
////                                Spacer(),
////                                Container(
////                                  height: 48,
////                                  decoration: BoxDecoration(
////                                    color: Color.fromARGB(255, 255, 255, 255),
////                                  ),
////                                  child: Column(
////                                    crossAxisAlignment: CrossAxisAlignment.start,
////                                    children: [
////                                      Container(
////                                        margin: EdgeInsets.only(left: 8, top: 5),
////                                        child: Text(
////                                          "Rajma Rice",
////                                          textAlign: TextAlign.center,
////                                          style: TextStyle(
////                                            color: Color.fromARGB(255, 20, 33, 61),
////                                            fontFamily: "Proxima Nova",
////                                            fontWeight: FontWeight.w700,
////                                            fontSize: 14,
////                                          ),
////                                        ),
////                                      ),
////                                      Container(
////                                        margin: EdgeInsets.only(left: 8, top: 6),
////                                        child: Text(
////                                          "Rs. 100.00",
////                                          textAlign: TextAlign.center,
////                                          style: TextStyle(
////                                            color: Color.fromARGB(255, 20, 33, 61),
////                                            fontFamily: "Jost",
////                                            fontWeight: FontWeight.w400,
////                                            fontSize: 10,
////                                          ),
////                                        ),
////                                      ),
////                                    ],
////                                  ),
////                                ),
////                              ],
////                            ),
////                          ),
////                        ],
////                      ),
//
//                  ],
//                ),
//              ),
//            ),
//          ],
//        ),
      ),
    );
//      Scaffold(
//      backgroundColor: Color.fromARGB(255, 250, 250, 250),
//      extendBodyBehindAppBar: true,
//      appBar: AppBar(
//        leading: IconButton(
//          onPressed: () => this.onBackPressed(context),
//          icon: Image.asset("assets/images/back.png",),
//        ),
//        actions: [
//          IconButton(
//            onPressed: () => this.onSavePressed(context),
//            icon: Image.asset("assets/images/like-button.png",),
//          ),
//        ],
//        backgroundColor: Colors.transparent,
//        elevation: 0,
//      ),
//      body: Container(
//        constraints: BoxConstraints.expand(),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: [
//            Expanded(
//              flex: 1,
//              child: SingleChildScrollView(
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                  children: [
//                    Container(
//                      height: 255,
//                      child: Stack(
//                        alignment: Alignment.center,
//                        children: [
//                          Positioned(
//                            left: 0,
//                            top: 0,
//                            right: 0,
//                            child: Image.asset(
//                              "assets/images/photo-1414235077428-338989a2e8c0-9.png",
//                              fit: BoxFit.fill,
//                            ),
//                          ),
//                          Positioned(
//                            left: 20,
//                            top: 111,
//                            right: 20,
//                            child: Container(
//                              height: 140,
//                              padding: EdgeInsets.only(top: 16),
//                              decoration: BoxDecoration(
//                                color: Color.fromARGB(255, 255, 255, 255),
//                                boxShadow: [
//                                  BoxShadow(
//                                    color: Color.fromARGB(26, 253, 185, 0),
//                                    offset: Offset(0, 7),
//                                    blurRadius: 20,
//                                  ),
//                                ],
//                                borderRadius: BorderRadius.all(Radius.circular(8)),
//                              ),
//                              child: Column(
//                                crossAxisAlignment: CrossAxisAlignment.stretch,
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Row(
//                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                    children: <Widget>[
//                                      Column(
//                                        mainAxisAlignment: MainAxisAlignment.start,
//                                        crossAxisAlignment: CrossAxisAlignment.start,
//                                        children: <Widget>[
//                                          Padding(
//                                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                                            child: Text(
//                                              "Mama’s Little Bakery",
//                                              style: TextStyle(
//                                                color: Color.fromARGB(255, 20, 33, 61),
//                                                fontFamily: "Proxima Nova",
//                                                fontWeight: FontWeight.w700,
//                                                fontSize: 20,
//                                              ),
//                                            ),
//                                          ),
//                                          SizedBox(
//                                            height: 2.0,
//                                          ),
//                                          Padding(
//                                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                                            child: Text(
//                                              "North Indian",
//                                              style: TextStyle(
//                                                color: Color.fromARGB(255, 112, 112, 112),
//                                                fontFamily: "Jost",
//                                                fontWeight: FontWeight.w400,
//                                                fontSize: 14,
//                                              ),
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                      Container(
//                                        margin: EdgeInsets.symmetric(horizontal: 20.0),
//                                        width: 44,
//                                        height: 44,
//                                        child: Image.asset(
//                                          "assets/images/logo-icon-14.png",
//                                          fit: BoxFit.none,
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                  Container(
//                                    height: 2,
//                                    margin: EdgeInsets.only(top: 8, left: 20, right: 20),
//                                    decoration: BoxDecoration(
//                                      color: Color.fromARGB(255, 234, 234, 234),
//                                    ),
//                                    child: Container(),
//                                  ),
//                                  SizedBox(
//                                    height: 2.0,
//                                  ),
//                                  Padding(
//                                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                                    child: Row(
//                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                      children: <Widget>[
//                                        Row(
//                                          children: <Widget>[
//                                            Container(
//                                              width: 16,
//                                              height: 16,
//                                              child: Image.asset(
//                                                "assets/images/path-13.png",
//                                                fit: BoxFit.none,
//                                              ),
//                                            ),
//                                            Padding(
//                                              padding: const EdgeInsets.only(left: 2.0),
//                                              child: Text(
//                                                "4.9 (200)",
//                                                textAlign: TextAlign.center,
//                                                style: TextStyle(
//                                                  color: Color.fromARGB(255, 112, 112, 112),
//                                                  fontFamily: "Jost",
//                                                  fontWeight: FontWeight.w400,
//                                                  fontSize: 12,
//                                                ),
//                                              ),
//                                            ),
//                                          ],
//                                        ),
//                                        Row(
//                                          children: <Widget>[
//                                            Container(
//                                              width: 16,
//                                              height: 16,
//                                              child: Image.asset(
//                                                "assets/images/icon.png",
//                                                fit: BoxFit.none,
//                                              ),
//                                            ),
//                                            Padding(
//                                              padding: const EdgeInsets.only(left: 2.0),
//                                              child: Text(
//                                                "8 - 12 AM",
//                                                textAlign: TextAlign.center,
//                                                style: TextStyle(
//                                                  color: Color.fromARGB(255, 112, 112, 112),
//                                                  fontFamily: "Jost",
//                                                  fontWeight: FontWeight.w400,
//                                                  fontSize: 12,
//                                                ),
//                                              ),
//                                            ),
//                                          ],
//                                        ),
//                                        Row(
//                                          children: <Widget>[
//                                            Container(
//                                              width: 16,
//                                              height: 16,
//                                              child: Image.asset(
//                                                "assets/images/rupee-price-11.png",
//                                                fit: BoxFit.none,
//                                              ),
//                                            ),
//                                            Padding(
//                                              padding: const EdgeInsets.only(left: 2.0),
//                                              child: Text(
//                                                "100 for two",
//                                                textAlign: TextAlign.center,
//                                                style: TextStyle(
//                                                  color: Color.fromARGB(255, 112, 112, 112),
//                                                  fontFamily: "Jost",
//                                                  fontWeight: FontWeight.w400,
//                                                  fontSize: 12,
//                                                ),
//                                              ),
//                                            ),
//                                          ],
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Container(
//                                    height: 20,
//                                    margin: EdgeInsets.only(top: 8),
//                                    decoration: BoxDecoration(
//                                      color: Color.fromARGB(255, 250, 250, 250),
//                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
//                                    ),
//                                    child: Center(
//                                        child: Image.asset("assets/images/union-7.png")
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          ),
//                        ],
//                      ),
//                    ),
//                    Container(
//                      height: 37,
//                      decoration: BoxDecoration(
//                        boxShadow: [
//                          BoxShadow(
//                            color: Color.fromARGB(41, 253, 200, 48),
//                            offset: Offset(0, 7),
//                            blurRadius: 20,
//                          ),
//                        ],
//                      ),
//                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//                      child: FlatButton(
//                        onPressed: () => this.onSearchBarPressed(context),
//                        color: Color.fromARGB(255, 255, 255, 255),
//                        shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.all(Radius.circular(7)),
//                        ),
//                        textColor: Color.fromARGB(255, 112, 112, 112),
//                        padding: EdgeInsets.only(left: 13),
//                        child: Row(
//                          //mainAxisAlignment: MainAxisAlignment.start,
//                          children: [
//                            Image.asset("assets/images/search-icon.png",),
//                            SizedBox(
//                              width: 10,
//                            ),
//                            Text(
//                              "Find food items",
//                              textAlign: TextAlign.center,
//                              style: TextStyle(
//                                color: Color.fromARGB(255, 112, 112, 112),
//                                fontFamily: "Proxima Nova",
//                                fontWeight: FontWeight.w400,
//                                fontSize: 16,
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ),
//                    Container(
//                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                      child: GridView.builder(
//                        physics: NeverScrollableScrollPhysics(),
//                        shrinkWrap: true,
//                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                          crossAxisCount: 2,
//                          childAspectRatio: 0.75,
////                          mainAxisSpacing: 20.0,
////                          crossAxisSpacing: 20.0,
//                        ),
//                        itemCount: 6,
//                        itemBuilder: (context, index) {
//                          return Container(
//                            margin: EdgeInsets.all(10),
//                            decoration: BoxDecoration(
//                              color: Color.fromARGB(255, 255, 255, 255),
//                              boxShadow: [
//                                BoxShadow(
//                                  color: Color.fromARGB(41, 253, 200, 48),
//                                  offset: Offset(0, 5),
//                                  blurRadius: 10,
//                                ),
//                              ],
//                              borderRadius: BorderRadius.all(Radius.circular(10)),
//                            ),
//                            child: Column(
//                              crossAxisAlignment: CrossAxisAlignment.stretch,
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              children: <Widget>[
//                                Container(
//                                  child: Image.asset(
//                                    "assets/images/photo-3.png",
//                                    fit: BoxFit.cover,
//                                  ),
//                                ),
//                                Padding(
//                                  padding: EdgeInsets.all(8),
//                                  child: Text(
//                                    "Rajma Rice",
//                                    textAlign: TextAlign.left,
//                                    style: TextStyle(
//                                      color: Color.fromARGB(255, 20, 33, 61),
//                                      fontFamily: "Proxima Nova",
//                                      fontWeight: FontWeight.w700,
//                                      fontSize: 14,
//                                    ),
//                                  ),
//                                ),
//                                Padding(
//                                  padding: EdgeInsets.symmetric(horizontal: 8),
//                                  child: Text(
//                                    "Rs. 100.00",
//                                    textAlign: TextAlign.left,
//                                    style: TextStyle(
//                                      color: Color.fromARGB(255, 20, 33, 61),
//                                      fontFamily: "Jost",
//                                      fontWeight: FontWeight.w400,
//                                      fontSize: 10,
//                                    ),
//                                  ),
//                                )
//                              ],
//                            ),
//                          );
//                        },
//                      ),
//                    ),
////                    Container(
////                      height: 255,
////                      child: Stack(
////                        alignment: Alignment.center,
////                        children: [
////                          Positioned(
////                            left: 0,
////                            top: 0,
////                            right: 0,
////                            child: Image.asset(
////                              "assets/images/photo-1414235077428-338989a2e8c0-9.png",
////                              fit: BoxFit.fill,
////                            ),
////                          ),
////                          Positioned(
////                            left: 20,
////                            top: 111,
////                            right: 20,
////                            child: Container(
////                              height: 140,
////                              padding: EdgeInsets.only(top: 16),
////                              decoration: BoxDecoration(
////                                color: Color.fromARGB(255, 255, 255, 255),
////                                boxShadow: [
////                                  BoxShadow(
////                                    color: Color.fromARGB(26, 253, 185, 0),
////                                    offset: Offset(0, 7),
////                                    blurRadius: 20,
////                                  ),
////                                ],
////                                borderRadius: BorderRadius.all(Radius.circular(8)),
////                              ),
////                              child: Column(
////                                crossAxisAlignment: CrossAxisAlignment.stretch,
////                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
////                                children: <Widget>[
////                                  Row(
////                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
////                                    children: <Widget>[
////                                      Column(
////                                        mainAxisAlignment: MainAxisAlignment.start,
////                                        crossAxisAlignment: CrossAxisAlignment.start,
////                                        children: <Widget>[
////                                          Padding(
////                                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
////                                            child: Text(
////                                              "Mama’s Little Bakery",
////                                              style: TextStyle(
////                                                color: Color.fromARGB(255, 20, 33, 61),
////                                                fontFamily: "Proxima Nova",
////                                                fontWeight: FontWeight.w700,
////                                                fontSize: 20,
////                                              ),
////                                            ),
////                                          ),
////                                          SizedBox(
////                                            height: 2.0,
////                                          ),
////                                          Padding(
////                                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
////                                            child: Text(
////                                              "North Indian",
////                                              style: TextStyle(
////                                                color: Color.fromARGB(255, 112, 112, 112),
////                                                fontFamily: "Jost",
////                                                fontWeight: FontWeight.w400,
////                                                fontSize: 14,
////                                              ),
////                                            ),
////                                          ),
////                                        ],
////                                      ),
////                                      Container(
////                                        margin: EdgeInsets.symmetric(horizontal: 20.0),
////                                        width: 44,
////                                        height: 44,
////                                        child: Image.asset(
////                                          "assets/images/logo-icon-14.png",
////                                          fit: BoxFit.none,
////                                        ),
////                                      ),
////                                    ],
////                                  ),
////                                  Container(
////                                    height: 2,
////                                    margin: EdgeInsets.only(top: 8, left: 20, right: 20),
////                                    decoration: BoxDecoration(
////                                      color: Color.fromARGB(255, 234, 234, 234),
////                                    ),
////                                    child: Container(),
////                                  ),
////                                  SizedBox(
////                                    height: 2.0,
////                                  ),
////                                  Padding(
////                                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
////                                    child: Row(
////                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
////                                      children: <Widget>[
////                                        Row(
////                                          children: <Widget>[
////                                            Container(
////                                              width: 16,
////                                              height: 16,
////                                              child: Image.asset(
////                                                "assets/images/path-13.png",
////                                                fit: BoxFit.none,
////                                              ),
////                                            ),
////                                            Padding(
////                                              padding: const EdgeInsets.only(left: 2.0),
////                                              child: Text(
////                                                "4.9 (200)",
////                                                textAlign: TextAlign.center,
////                                                style: TextStyle(
////                                                  color: Color.fromARGB(255, 112, 112, 112),
////                                                  fontFamily: "Jost",
////                                                  fontWeight: FontWeight.w400,
////                                                  fontSize: 12,
////                                                ),
////                                              ),
////                                            ),
////                                          ],
////                                        ),
////                                        Row(
////                                          children: <Widget>[
////                                            Container(
////                                              width: 16,
////                                              height: 16,
////                                              child: Image.asset(
////                                                "assets/images/icon.png",
////                                                fit: BoxFit.none,
////                                              ),
////                                            ),
////                                            Padding(
////                                              padding: const EdgeInsets.only(left: 2.0),
////                                              child: Text(
////                                                "8 - 12 AM",
////                                                textAlign: TextAlign.center,
////                                                style: TextStyle(
////                                                  color: Color.fromARGB(255, 112, 112, 112),
////                                                  fontFamily: "Jost",
////                                                  fontWeight: FontWeight.w400,
////                                                  fontSize: 12,
////                                                ),
////                                              ),
////                                            ),
////                                          ],
////                                        ),
////                                        Row(
////                                          children: <Widget>[
////                                            Container(
////                                              width: 16,
////                                              height: 16,
////                                              child: Image.asset(
////                                                "assets/images/rupee-price-11.png",
////                                                fit: BoxFit.none,
////                                              ),
////                                            ),
////                                            Padding(
////                                              padding: const EdgeInsets.only(left: 2.0),
////                                              child: Text(
////                                                "100 for two",
////                                                textAlign: TextAlign.center,
////                                                style: TextStyle(
////                                                  color: Color.fromARGB(255, 112, 112, 112),
////                                                  fontFamily: "Jost",
////                                                  fontWeight: FontWeight.w400,
////                                                  fontSize: 12,
////                                                ),
////                                              ),
////                                            ),
////                                          ],
////                                        ),
////                                      ],
////                                    ),
////                                  ),
////                                  Container(
////                                    height: 20,
////                                    margin: EdgeInsets.only(top: 8),
////                                    decoration: BoxDecoration(
////                                      color: Color.fromARGB(255, 250, 250, 250),
////                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
////                                    ),
////                                    child: Center(
////                                      child: Image.asset("assets/images/union-7.png")
////                                    ),
////                                  ),
////                                ],
////                              ),
////                            ),
////                          ),
////                        ],
////                      ),
////                    ),
////                    Container(
////                      height: 37,
////                      margin: EdgeInsets.only(left: 16, top: 20, right: 16),
////                      child: FlatButton(
////                        onPressed: () => this.onSearchBarPressed(context),
////                        color: Color.fromARGB(255, 255, 255, 255),
////                        shape: RoundedRectangleBorder(
////                          borderRadius: BorderRadius.all(Radius.circular(7)),
////                        ),
////                        textColor: Color.fromARGB(255, 112, 112, 112),
////                        padding: EdgeInsets.only(left: 13),
////                        child: Row(
////                          //mainAxisAlignment: MainAxisAlignment.start,
////                          children: [
////                            Image.asset("assets/images/search-icon.png",),
////                            SizedBox(
////                              width: 10,
////                            ),
////                            Text(
////                              "Find food items",
////                              textAlign: TextAlign.center,
////                              style: TextStyle(
////                                color: Color.fromARGB(255, 112, 112, 112),
////                                fontFamily: "Proxima Nova",
////                                fontWeight: FontWeight.w400,
////                                fontSize: 16,
////                              ),
////                            ),
////                          ],
////                        ),
////                      ),
////                    ),
////                    Container(
////                            height: 206,
////                            child: Row(
////                              crossAxisAlignment: CrossAxisAlignment.stretch,
////                              children: [
////                                Align(
////                                  alignment: Alignment.topLeft,
////                                  child: Container(
////                                    width: 158,
////                                    height: 206,
////                                    decoration: BoxDecoration(
////                                      color: Color.fromARGB(255, 128, 128, 128),
////                                      boxShadow: [
////                                        BoxShadow(
////                                          color: Color.fromARGB(41, 253, 200, 48),
////                                          offset: Offset(0, 5),
////                                          blurRadius: 10,
////                                        ),
////                                      ],
////                                      borderRadius: BorderRadius.all(Radius.circular(10)),
////                                    ),
////                                    child: Column(
////                                      crossAxisAlignment: CrossAxisAlignment.stretch,
////                                      children: [
////                                        Container(
////                                          height: 158,
////                                          child: Image.asset(
////                                            "assets/images/photo-3.png",
////                                            fit: BoxFit.cover,
////                                          ),
////                                        ),
////                                        Spacer(),
////                                        Container(
////                                          height: 48,
////                                          decoration: BoxDecoration(
////                                            color: Color.fromARGB(255, 255, 255, 255),
////                                          ),
////                                          child: Column(
////                                            crossAxisAlignment: CrossAxisAlignment.start,
////                                            children: [
////                                              Container(
////                                                margin: EdgeInsets.only(left: 8, top: 5),
////                                                child: Text(
////                                                  "Rajma Rice",
////                                                  textAlign: TextAlign.center,
////                                                  style: TextStyle(
////                                                    color: Color.fromARGB(255, 20, 33, 61),
////                                                    fontFamily: "Proxima Nova",
////                                                    fontWeight: FontWeight.w700,
////                                                    fontSize: 14,
////                                                  ),
////                                                ),
////                                              ),
////                                              Container(
////                                                margin: EdgeInsets.only(left: 8, top: 6),
////                                                child: Text(
////                                                  "Rs. 100.00",
////                                                  textAlign: TextAlign.center,
////                                                  style: TextStyle(
////                                                    color: Color.fromARGB(255, 20, 33, 61),
////                                                    fontFamily: "Jost",
////                                                    fontWeight: FontWeight.w400,
////                                                    fontSize: 10,
////                                                  ),
////                                                ),
////                                              ),
////                                            ],
////                                          ),
////                                        ),
////                                      ],
////                                    ),
////                                  ),
////                                ),
////                                Spacer(),
////                                Align(
////                                  alignment: Alignment.topLeft,
////                                  child: Container(
////                                    width: 158,
////                                    height: 206,
////                                    decoration: BoxDecoration(
////                                      color: Color.fromARGB(255, 128, 128, 128),
////                                      boxShadow: [
////                                        BoxShadow(
////                                          color: Color.fromARGB(41, 253, 200, 48),
////                                          offset: Offset(0, 5),
////                                          blurRadius: 10,
////                                        ),
////                                      ],
////                                      borderRadius: BorderRadius.all(Radius.circular(10)),
////                                    ),
////                                    child: Column(
////                                      crossAxisAlignment: CrossAxisAlignment.stretch,
////                                      children: [
////                                        Container(
////                                          height: 158,
////                                          child: Image.asset(
////                                            "assets/images/photo-3.png",
////                                            fit: BoxFit.cover,
////                                          ),
////                                        ),
////                                        Spacer(),
////                                        Container(
////                                          height: 48,
////                                          decoration: BoxDecoration(
////                                            color: Color.fromARGB(255, 255, 255, 255),
////                                          ),
////                                          child: Column(
////                                            crossAxisAlignment: CrossAxisAlignment.start,
////                                            children: [
////                                              Container(
////                                                margin: EdgeInsets.only(left: 8, top: 5),
////                                                child: Text(
////                                                  "Rajma Rice",
////                                                  textAlign: TextAlign.center,
////                                                  style: TextStyle(
////                                                    color: Color.fromARGB(255, 20, 33, 61),
////                                                    fontFamily: "Proxima Nova",
////                                                    fontWeight: FontWeight.w700,
////                                                    fontSize: 14,
////                                                  ),
////                                                ),
////                                              ),
////                                              Container(
////                                                margin: EdgeInsets.only(left: 8, top: 6),
////                                                child: Text(
////                                                  "Rs. 100.00",
////                                                  textAlign: TextAlign.center,
////                                                  style: TextStyle(
////                                                    color: Color.fromARGB(255, 20, 33, 61),
////                                                    fontFamily: "Jost",
////                                                    fontWeight: FontWeight.w400,
////                                                    fontSize: 10,
////                                                  ),
////                                                ),
////                                              ),
////                                            ],
////                                          ),
////                                        ),
////                                      ],
////                                    ),
////                                  ),
////                                ),
////                              ],
////                            ),
////                          ),
////                    Container(
////                            height: 206,
////                            margin: EdgeInsets.only(top: 20),
////                            child: Row(
////                              crossAxisAlignment: CrossAxisAlignment.stretch,
////                              children: [
////                                Align(
////                                  alignment: Alignment.topLeft,
////                                  child: Container(
////                                    width: 158,
////                                    height: 206,
////                                    decoration: BoxDecoration(
////                                      color: Color.fromARGB(255, 128, 128, 128),
////                                      boxShadow: [
////                                        BoxShadow(
////                                          color: Color.fromARGB(41, 253, 200, 48),
////                                          offset: Offset(0, 5),
////                                          blurRadius: 10,
////                                        ),
////                                      ],
////                                      borderRadius: BorderRadius.all(Radius.circular(10)),
////                                    ),
////                                    child: Column(
////                                      crossAxisAlignment: CrossAxisAlignment.stretch,
////                                      children: [
////                                        Container(
////                                          height: 158,
////                                          child: Image.asset(
////                                            "assets/images/photo-3.png",
////                                            fit: BoxFit.cover,
////                                          ),
////                                        ),
////                                        Spacer(),
////                                        Container(
////                                          height: 48,
////                                          decoration: BoxDecoration(
////                                            color: Color.fromARGB(255, 255, 255, 255),
////                                          ),
////                                          child: Column(
////                                            crossAxisAlignment: CrossAxisAlignment.start,
////                                            children: [
////                                              Container(
////                                                margin: EdgeInsets.only(left: 8, top: 5),
////                                                child: Text(
////                                                  "Rajma Rice",
////                                                  textAlign: TextAlign.center,
////                                                  style: TextStyle(
////                                                    color: Color.fromARGB(255, 20, 33, 61),
////                                                    fontFamily: "Proxima Nova",
////                                                    fontWeight: FontWeight.w700,
////                                                    fontSize: 14,
////                                                  ),
////                                                ),
////                                              ),
////                                              Container(
////                                                margin: EdgeInsets.only(left: 8, top: 6),
////                                                child: Text(
////                                                  "Rs. 100.00",
////                                                  textAlign: TextAlign.center,
////                                                  style: TextStyle(
////                                                    color: Color.fromARGB(255, 20, 33, 61),
////                                                    fontFamily: "Jost",
////                                                    fontWeight: FontWeight.w400,
////                                                    fontSize: 10,
////                                                  ),
////                                                ),
////                                              ),
////                                            ],
////                                          ),
////                                        ),
////                                      ],
////                                    ),
////                                  ),
////                                ),
////                                Spacer(),
////                                Align(
////                                  alignment: Alignment.topLeft,
////                                  child: Container(
////                                    width: 158,
////                                    height: 206,
////                                    decoration: BoxDecoration(
////                                      color: Color.fromARGB(255, 128, 128, 128),
////                                      boxShadow: [
////                                        BoxShadow(
////                                          color: Color.fromARGB(41, 253, 200, 48),
////                                          offset: Offset(0, 5),
////                                          blurRadius: 10,
////                                        ),
////                                      ],
////                                      borderRadius: BorderRadius.all(Radius.circular(10)),
////                                    ),
////                                    child: Column(
////                                      crossAxisAlignment: CrossAxisAlignment.stretch,
////                                      children: [
////                                        Container(
////                                          height: 158,
////                                          child: Image.asset(
////                                            "assets/images/photo-3.png",
////                                            fit: BoxFit.cover,
////                                          ),
////                                        ),
////                                        Spacer(),
////                                        Container(
////                                          height: 48,
////                                          decoration: BoxDecoration(
////                                            color: Color.fromARGB(255, 255, 255, 255),
////                                          ),
////                                          child: Column(
////                                            crossAxisAlignment: CrossAxisAlignment.start,
////                                            children: [
////                                              Container(
////                                                margin: EdgeInsets.only(left: 8, top: 5),
////                                                child: Text(
////                                                  "Rajma Rice",
////                                                  textAlign: TextAlign.center,
////                                                  style: TextStyle(
////                                                    color: Color.fromARGB(255, 20, 33, 61),
////                                                    fontFamily: "Proxima Nova",
////                                                    fontWeight: FontWeight.w700,
////                                                    fontSize: 14,
////                                                  ),
////                                                ),
////                                              ),
////                                              Container(
////                                                margin: EdgeInsets.only(left: 8, top: 6),
////                                                child: Text(
////                                                  "Rs. 100.00",
////                                                  textAlign: TextAlign.center,
////                                                  style: TextStyle(
////                                                    color: Color.fromARGB(255, 20, 33, 61),
////                                                    fontFamily: "Jost",
////                                                    fontWeight: FontWeight.w400,
////                                                    fontSize: 10,
////                                                  ),
////                                                ),
////                                              ),
////                                            ],
////                                          ),
////                                        ),
////                                      ],
////                                    ),
////                                  ),
////                                ),
////                              ],
////                            ),
////                          ),
////                    Container(
////                            height: 206,
////                            child: Row(
////                              crossAxisAlignment: CrossAxisAlignment.stretch,
////                              children: [
////                                Align(
////                                  alignment: Alignment.bottomLeft,
////                                  child: Container(
////                                    width: 158,
////                                    height: 206,
////                                    decoration: BoxDecoration(
////                                      color: Color.fromARGB(255, 128, 128, 128),
////                                      boxShadow: [
////                                        BoxShadow(
////                                          color: Color.fromARGB(41, 253, 200, 48),
////                                          offset: Offset(0, 5),
////                                          blurRadius: 10,
////                                        ),
////                                      ],
////                                      borderRadius: BorderRadius.all(Radius.circular(10)),
////                                    ),
////                                    child: Column(
////                                      crossAxisAlignment: CrossAxisAlignment.stretch,
////                                      children: [
////                                        Container(
////                                          height: 158,
////                                          child: Image.asset(
////                                            "assets/images/photo-3.png",
////                                            fit: BoxFit.cover,
////                                          ),
////                                        ),
////                                        Spacer(),
////                                        Container(
////                                          height: 48,
////                                          decoration: BoxDecoration(
////                                            color: Color.fromARGB(255, 255, 255, 255),
////                                          ),
////                                          child: Column(
////                                            crossAxisAlignment: CrossAxisAlignment.start,
////                                            children: [
////                                              Container(
////                                                margin: EdgeInsets.only(left: 8, top: 5),
////                                                child: Text(
////                                                  "Rajma Rice",
////                                                  textAlign: TextAlign.center,
////                                                  style: TextStyle(
////                                                    color: Color.fromARGB(255, 20, 33, 61),
////                                                    fontFamily: "Proxima Nova",
////                                                    fontWeight: FontWeight.w700,
////                                                    fontSize: 14,
////                                                  ),
////                                                ),
////                                              ),
////                                              Container(
////                                                margin: EdgeInsets.only(left: 8, top: 6),
////                                                child: Text(
////                                                  "Rs. 100.00",
////                                                  textAlign: TextAlign.center,
////                                                  style: TextStyle(
////                                                    color: Color.fromARGB(255, 20, 33, 61),
////                                                    fontFamily: "Jost",
////                                                    fontWeight: FontWeight.w400,
////                                                    fontSize: 10,
////                                                  ),
////                                                ),
////                                              ),
////                                            ],
////                                          ),
////                                        ),
////                                      ],
////                                    ),
////                                  ),
////                                ),
////                                Spacer(),
////                                Align(
////                                  alignment: Alignment.bottomLeft,
////                                  child: Container(
////                                    width: 158,
////                                    height: 206,
////                                    decoration: BoxDecoration(
////                                      color: Color.fromARGB(255, 128, 128, 128),
////                                      boxShadow: [
////                                        BoxShadow(
////                                          color: Color.fromARGB(41, 253, 200, 48),
////                                          offset: Offset(0, 5),
////                                          blurRadius: 10,
////                                        ),
////                                      ],
////                                      borderRadius: BorderRadius.all(Radius.circular(10)),
////                                    ),
////                                    child: Column(
////                                      crossAxisAlignment: CrossAxisAlignment.stretch,
////                                      children: [
////                                        Container(
////                                          height: 158,
////                                          child: Image.asset(
////                                            "assets/images/photo-3.png",
////                                            fit: BoxFit.cover,
////                                          ),
////                                        ),
////                                        Spacer(),
////                                        Container(
////                                          height: 48,
////                                          decoration: BoxDecoration(
////                                            color: Color.fromARGB(255, 255, 255, 255),
////                                          ),
////                                          child: Column(
////                                            crossAxisAlignment: CrossAxisAlignment.start,
////                                            children: [
////                                              Container(
////                                                margin: EdgeInsets.only(left: 8, top: 5),
////                                                child: Text(
////                                                  "Rajma Rice",
////                                                  textAlign: TextAlign.center,
////                                                  style: TextStyle(
////                                                    color: Color.fromARGB(255, 20, 33, 61),
////                                                    fontFamily: "Proxima Nova",
////                                                    fontWeight: FontWeight.w700,
////                                                    fontSize: 14,
////                                                  ),
////                                                ),
////                                              ),
////                                              Container(
////                                                margin: EdgeInsets.only(left: 8, top: 6),
////                                                child: Text(
////                                                  "Rs. 100.00",
////                                                  textAlign: TextAlign.center,
////                                                  style: TextStyle(
////                                                    color: Color.fromARGB(255, 20, 33, 61),
////                                                    fontFamily: "Jost",
////                                                    fontWeight: FontWeight.w400,
////                                                    fontSize: 10,
////                                                  ),
////                                                ),
////                                              ),
////                                            ],
////                                          ),
////                                        ),
////                                      ],
////                                    ),
////                                  ),
////                                ),
////                              ],
////                            ),
////                          ),
//                  ],
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
  }
}