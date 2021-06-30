/*
*  tiffin_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/checkout_widget/checkout_widget.dart';
import 'package:fudito/coupons_widget/coupons_widget.dart';
import 'package:fudito/shared/cart_item.dart';
import 'package:fudito/shared/global_variables.dart';
import 'package:fudito/values/values.dart';


class TiffinWidget extends StatelessWidget {
  
  void onCouponPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CouponsWidget()));
  
  void onCheckoutPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        brightness: Brightness.light,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: "Mama's Little Bakery",
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontFamily: "Proxima Nova",
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              TextSpan(text: '\n'),
              TextSpan(
                text: "2 Items, Rs. 240.00",
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
        backgroundColor: AppColors.secondaryElement,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        height: MediaQuery.of(context).size.height,
        child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 28, left: 16, right: 16, bottom: 18),
                            child: Text(
                              "Your Food Items",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 20, 33, 61),
                                fontFamily: "Proxima Nova",
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: 2,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index){
                              if(category ==4 ){
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                  child: CartTiffinCard(),
                                );
                              }
                              else{
                                return CartItemCard();
                              }
                            },

                          ),
                          Container(
                            height: 37,
                            margin: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                            child: FlatButton(
                              onPressed: () => this.onCouponPressed(context),
                              color: Color.fromARGB(255, 253, 200, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              textColor: Color.fromARGB(255, 255, 255, 255),
                              padding: EdgeInsets.only(left: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/promo-icon.png",),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Apply Coupon",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontFamily: "Jost",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 154,
                            margin: EdgeInsets.symmetric(vertical:18.0, horizontal: 16),
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
                                        "Subtotal",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 20, 33, 61),
                                          fontFamily: "Jost",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        "Rs 200.00",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 20, 33, 61),
                                          fontFamily: "Jost",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
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
                                        "Delivery Fees",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 20, 33, 61),
                                          fontFamily: "Jost",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        "Rs 20.00",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 20, 33, 61),
                                          fontFamily: "Jost",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
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
                                        "Taxes and Charges",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 20, 33, 61),
                                          fontFamily: "Jost",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        "Rs 20.00",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 20, 33, 61),
                                          fontFamily: "Jost",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
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
                                        "Total",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 20, 33, 61),
                                          fontFamily: "Proxima Nova",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        "Rs 240.00",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 20, 33, 61),
                                          fontFamily: "Proxima Nova",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 37,
                  child: FlatButton(
                    onPressed: () => this.onCheckoutPressed(context),
                    color: Color.fromARGB(255, 253, 200, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                    ),
                    textColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.all(0),
                    child: Text(
                      "PROCEED TO CHECKOUT",
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
//        Stack(
//          alignment: Alignment.bottomCenter,
//          children: [
//            Positioned(
//              left: 0,
//              top: 20,
//              right: 0,
//              bottom: 1,
//              child: SingleChildScrollView(
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                  children: [
//                    Align(
//                      alignment: Alignment.topLeft,
//                      child: Container(
//                        margin: EdgeInsets.only(left: 16),
//                        child: Text(
//                          "Your Food Items",
//                          textAlign: TextAlign.center,
//                          style: TextStyle(
//                            color: Color.fromARGB(255, 20, 33, 61),
//                            fontFamily: "Proxima Nova",
//                            fontWeight: FontWeight.w400,
//                            fontSize: 24,
//                          ),
//                        ),
//                      ),
//                    ),
//                    Container(
//                      height: 118,
//                      margin: EdgeInsets.only(left: 20, top: 16, right: 20),
//                      decoration: BoxDecoration(
//                        color: Color.fromARGB(255, 255, 255, 255),
//                        boxShadow: [
//                          BoxShadow(
//                            color: Color.fromARGB(26, 253, 185, 0),
//                            offset: Offset(0, 7),
//                            blurRadius: 20,
//                          ),
//                        ],
//                        borderRadius: BorderRadius.all(Radius.circular(6)),
//                      ),
//                      child: Stack(
//                        alignment: Alignment.centerLeft,
//                        children: [
//                          Positioned(
//                            left: 0,
//                            top: 0,
//                            right: 9,
//                            bottom: 0,
//                            child: Row(
//                              crossAxisAlignment: CrossAxisAlignment.stretch,
//                              children: [
//                                Align(
//                                  alignment: Alignment.centerLeft,
//                                  child: Container(
//                                    width: 118,
//                                    height: 118,
//                                    child: Image.asset(
//                                      "assets/images/icon-3.png",
//                                      fit: BoxFit.none,
//                                    ),
//                                  ),
//                                ),
//                                Align(
//                                  alignment: Alignment.topLeft,
//                                  child: Container(
//                                    margin: EdgeInsets.only(left: 8, top: 25),
//                                    child: Text(
//                                      "Rajma Rice",
//                                      textAlign: TextAlign.center,
//                                      style: TextStyle(
//                                        color: Color.fromARGB(255, 20, 33, 61),
//                                        fontFamily: "Jost",
//                                        fontWeight: FontWeight.w400,
//                                        fontSize: 14,
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                Spacer(),
//                                Container(
//                                  width: 76,
//                                  margin: EdgeInsets.only(top: 23, bottom: 13),
//                                  child: Column(
//                                    crossAxisAlignment: CrossAxisAlignment.stretch,
//                                    children: [
//                                      Align(
//                                        alignment: Alignment.topRight,
//                                        child: Container(
//                                          width: 20,
//                                          height: 22,
//                                          child: FlatButton(
//                                            onPressed: () => this.onDeletePressed(context),
//                                            color: Color.fromARGB(0, 0, 0, 0),
//                                            shape: RoundedRectangleBorder(
//                                              borderRadius: BorderRadius.all(Radius.circular(0)),
//                                            ),
//                                            textColor: Color.fromARGB(255, 0, 0, 0),
//                                            padding: EdgeInsets.all(0),
//                                            child: Row(
//                                              mainAxisAlignment: MainAxisAlignment.center,
//                                              children: [
//                                                Image.asset("assets/images/delete-icon.png",),
//                                                SizedBox(
//                                                  width: 10,
//                                                ),
//                                                Text(
//                                                  "",
//                                                  textAlign: TextAlign.left,
//                                                  style: TextStyle(
//                                                    color: Color.fromARGB(255, 0, 0, 0),
//                                                    fontWeight: FontWeight.w400,
//                                                    fontSize: 12,
//                                                  ),
//                                                ),
//                                              ],
//                                            ),
//                                          ),
//                                        ),
//                                      ),
//                                      Spacer(),
//                                      Align(
//                                        alignment: Alignment.topRight,
//                                        child: Container(
//                                          width: 75,
//                                          height: 25,
//                                          margin: EdgeInsets.only(right: 1),
//                                          decoration: BoxDecoration(
//                                            color: Color.fromARGB(255, 253, 200, 48),
//                                            borderRadius: BorderRadius.all(Radius.circular(3)),
//                                          ),
//                                          child: Stack(
//                                            alignment: Alignment.center,
//                                            children: [
//                                              Positioned(
//                                                left: 0,
//                                                right: 0,
//                                                child: Row(
//                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                                  mainAxisSize: MainAxisSize.min,
//                                                  children: [
//                                                    Align(
//                                                      alignment: Alignment.centerLeft,
//                                                      child: Container(
//                                                        width: 25,
//                                                        height: 25,
//                                                        child: FlatButton(
//                                                          onPressed: () => this.onLessPressed(context),
//                                                          color: Color.fromARGB(0, 0, 0, 0),
//                                                          shape: RoundedRectangleBorder(
//                                                            borderRadius: BorderRadius.all(Radius.circular(0)),
//                                                          ),
//                                                          textColor: Color.fromARGB(255, 0, 0, 0),
//                                                          padding: EdgeInsets.all(0),
//                                                          child: Row(
//                                                            mainAxisAlignment: MainAxisAlignment.center,
//                                                            children: [
//                                                              Image.asset("assets/images/sub-icon.png",),
//                                                              SizedBox(
//                                                                width: 10,
//                                                              ),
//                                                              Text(
//                                                                "",
//                                                                textAlign: TextAlign.left,
//                                                                style: TextStyle(
//                                                                  color: Color.fromARGB(255, 0, 0, 0),
//                                                                  fontWeight: FontWeight.w400,
//                                                                  fontSize: 12,
//                                                                ),
//                                                              ),
//                                                            ],
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ),
//                                                    Spacer(),
//                                                    Align(
//                                                      alignment: Alignment.centerLeft,
//                                                      child: Container(
//                                                        width: 25,
//                                                        height: 25,
//                                                        child: FlatButton(
//                                                          onPressed: () => this.onAddPressed(context),
//                                                          color: Color.fromARGB(0, 0, 0, 0),
//                                                          shape: RoundedRectangleBorder(
//                                                            borderRadius: BorderRadius.all(Radius.circular(0)),
//                                                          ),
//                                                          textColor: Color.fromARGB(255, 0, 0, 0),
//                                                          padding: EdgeInsets.all(0),
//                                                          child: Row(
//                                                            mainAxisAlignment: MainAxisAlignment.center,
//                                                            children: [
//                                                              Image.asset("assets/images/add-icon.png",),
//                                                              SizedBox(
//                                                                width: 10,
//                                                              ),
//                                                              Text(
//                                                                "",
//                                                                textAlign: TextAlign.left,
//                                                                style: TextStyle(
//                                                                  color: Color.fromARGB(255, 0, 0, 0),
//                                                                  fontWeight: FontWeight.w400,
//                                                                  fontSize: 12,
//                                                                ),
//                                                              ),
//                                                            ],
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ),
//                                                  ],
//                                                ),
//                                              ),
//                                              Positioned(
//                                                child: Text(
//                                                  "1",
//                                                  textAlign: TextAlign.center,
//                                                  style: TextStyle(
//                                                    color: Color.fromARGB(255, 255, 255, 255),
//                                                    fontFamily: "Jost",
//                                                    fontWeight: FontWeight.w400,
//                                                    fontSize: 14,
//                                                  ),
//                                                ),
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Positioned(
//                            left: 127,
//                            child: Text(
//                              "Rs. 100.00",
//                              textAlign: TextAlign.center,
//                              style: TextStyle(
//                                color: Color.fromARGB(255, 20, 33, 61),
//                                fontFamily: "Jost",
//                                fontWeight: FontWeight.w400,
//                                fontSize: 10,
//                              ),
//                            ),
//                          ),
//                        ],
//                      ),
//                    ),
//                    Container(
//                      height: 118,
//                      margin: EdgeInsets.only(left: 20, top: 16, right: 20),
//                      decoration: BoxDecoration(
//                        color: Color.fromARGB(255, 255, 255, 255),
//                        boxShadow: [
//                          BoxShadow(
//                            color: Color.fromARGB(26, 253, 185, 0),
//                            offset: Offset(0, 7),
//                            blurRadius: 20,
//                          ),
//                        ],
//                        borderRadius: BorderRadius.all(Radius.circular(6)),
//                      ),
//                      child: Stack(
//                        alignment: Alignment.centerLeft,
//                        children: [
//                          Positioned(
//                            left: 0,
//                            top: 0,
//                            right: 9,
//                            bottom: 0,
//                            child: Row(
//                              crossAxisAlignment: CrossAxisAlignment.stretch,
//                              children: [
//                                Align(
//                                  alignment: Alignment.centerLeft,
//                                  child: Container(
//                                    width: 118,
//                                    height: 118,
//                                    child: Image.asset(
//                                      "assets/images/icon-3.png",
//                                      fit: BoxFit.none,
//                                    ),
//                                  ),
//                                ),
//                                Align(
//                                  alignment: Alignment.topLeft,
//                                  child: Container(
//                                    margin: EdgeInsets.only(left: 8, top: 25),
//                                    child: Text(
//                                      "Rajma Rice",
//                                      textAlign: TextAlign.center,
//                                      style: TextStyle(
//                                        color: Color.fromARGB(255, 20, 33, 61),
//                                        fontFamily: "Jost",
//                                        fontWeight: FontWeight.w400,
//                                        fontSize: 14,
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                Spacer(),
//                                Container(
//                                  width: 76,
//                                  margin: EdgeInsets.only(top: 23, bottom: 13),
//                                  child: Column(
//                                    crossAxisAlignment: CrossAxisAlignment.stretch,
//                                    children: [
//                                      Align(
//                                        alignment: Alignment.topRight,
//                                        child: Container(
//                                          width: 20,
//                                          height: 22,
//                                          child: FlatButton(
//                                            onPressed: () => this.onDeleteTwoPressed(context),
//                                            color: Color.fromARGB(0, 0, 0, 0),
//                                            shape: RoundedRectangleBorder(
//                                              borderRadius: BorderRadius.all(Radius.circular(0)),
//                                            ),
//                                            textColor: Color.fromARGB(255, 0, 0, 0),
//                                            padding: EdgeInsets.all(0),
//                                            child: Row(
//                                              mainAxisAlignment: MainAxisAlignment.center,
//                                              children: [
//                                                Image.asset("assets/images/delete-icon.png",),
//                                                SizedBox(
//                                                  width: 10,
//                                                ),
//                                                Text(
//                                                  "",
//                                                  textAlign: TextAlign.left,
//                                                  style: TextStyle(
//                                                    color: Color.fromARGB(255, 0, 0, 0),
//                                                    fontWeight: FontWeight.w400,
//                                                    fontSize: 12,
//                                                  ),
//                                                ),
//                                              ],
//                                            ),
//                                          ),
//                                        ),
//                                      ),
//                                      Spacer(),
//                                      Align(
//                                        alignment: Alignment.topRight,
//                                        child: Container(
//                                          width: 75,
//                                          height: 25,
//                                          margin: EdgeInsets.only(right: 1),
//                                          decoration: BoxDecoration(
//                                            color: Color.fromARGB(255, 253, 200, 48),
//                                            borderRadius: BorderRadius.all(Radius.circular(3)),
//                                          ),
//                                          child: Stack(
//                                            alignment: Alignment.center,
//                                            children: [
//                                              Positioned(
//                                                left: 0,
//                                                right: 0,
//                                                child: Row(
//                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                                                  children: [
//                                                    Align(
//                                                      alignment: Alignment.centerLeft,
//                                                      child: Container(
//                                                        width: 25,
//                                                        height: 25,
//                                                        child: FlatButton(
//                                                          onPressed: () => this.onLessTwoPressed(context),
//                                                          color: Color.fromARGB(0, 0, 0, 0),
//                                                          shape: RoundedRectangleBorder(
//                                                            borderRadius: BorderRadius.all(Radius.circular(0)),
//                                                          ),
//                                                          textColor: Color.fromARGB(255, 0, 0, 0),
//                                                          padding: EdgeInsets.all(0),
//                                                          child: Row(
//                                                            mainAxisAlignment: MainAxisAlignment.center,
//                                                            children: [
//                                                              Image.asset("assets/images/sub-icon.png",),
//                                                              SizedBox(
//                                                                width: 10,
//                                                              ),
//                                                              Text(
//                                                                "",
//                                                                textAlign: TextAlign.left,
//                                                                style: TextStyle(
//                                                                  color: Color.fromARGB(255, 0, 0, 0),
//                                                                  fontWeight: FontWeight.w400,
//                                                                  fontSize: 12,
//                                                                ),
//                                                              ),
//                                                            ],
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ),
//                                                    Spacer(),
//                                                    Align(
//                                                      alignment: Alignment.centerLeft,
//                                                      child: Container(
//                                                        width: 25,
//                                                        height: 25,
//                                                        child: FlatButton(
//                                                          onPressed: () => this.onAddTwoPressed(context),
//                                                          color: Color.fromARGB(0, 0, 0, 0),
//                                                          shape: RoundedRectangleBorder(
//                                                            borderRadius: BorderRadius.all(Radius.circular(0)),
//                                                          ),
//                                                          textColor: Color.fromARGB(255, 0, 0, 0),
//                                                          padding: EdgeInsets.all(0),
//                                                          child: Row(
//                                                            mainAxisAlignment: MainAxisAlignment.center,
//                                                            children: [
//                                                              Image.asset("assets/images/add-icon.png",),
//                                                              SizedBox(
//                                                                width: 10,
//                                                              ),
//                                                              Text(
//                                                                "",
//                                                                textAlign: TextAlign.left,
//                                                                style: TextStyle(
//                                                                  color: Color.fromARGB(255, 0, 0, 0),
//                                                                  fontWeight: FontWeight.w400,
//                                                                  fontSize: 12,
//                                                                ),
//                                                              ),
//                                                            ],
//                                                          ),
//                                                        ),
//                                                      ),
//                                                    ),
//                                                  ],
//                                                ),
//                                              ),
//                                              Positioned(
//                                                child: Text(
//                                                  "1",
//                                                  textAlign: TextAlign.center,
//                                                  style: TextStyle(
//                                                    color: Color.fromARGB(255, 255, 255, 255),
//                                                    fontFamily: "Jost",
//                                                    fontWeight: FontWeight.w400,
//                                                    fontSize: 14,
//                                                  ),
//                                                ),
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Positioned(
//                            left: 127,
//                            child: Text(
//                              "Rs. 100.00",
//                              textAlign: TextAlign.center,
//                              style: TextStyle(
//                                color: Color.fromARGB(255, 20, 33, 61),
//                                fontFamily: "Jost",
//                                fontWeight: FontWeight.w400,
//                                fontSize: 10,
//                              ),
//                            ),
//                          ),
//                        ],
//                      ),
//                    ),
//                    Container(
//                      height: 37,
//                      margin: EdgeInsets.only(left: 16, top: 20, right: 16),
//                      child: FlatButton(
//                        onPressed: () => this.onCouponPressed(context),
//                        color: Color.fromARGB(255, 253, 200, 48),
//                        shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.all(Radius.circular(5)),
//                        ),
//                        textColor: Color.fromARGB(255, 255, 255, 255),
//                        padding: EdgeInsets.all(0),
//                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: [
//                            Image.asset("assets/images/promo-icon.png",),
//                            SizedBox(
//                              width: 3,
//                            ),
//                            Text(
//                              "Apply Coupon",
//                              textAlign: TextAlign.center,
//                              style: TextStyle(
//                                color: Color.fromARGB(255, 255, 255, 255),
//                                fontFamily: "Jost",
//                                fontWeight: FontWeight.w400,
//                                fontSize: 16,
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ),
//                    Container(
//                      height: 144,
//                      margin: EdgeInsets.only(left: 16, top: 20, right: 16),
//                      decoration: BoxDecoration(
//                        color: Color.fromARGB(255, 255, 255, 255),
//                        boxShadow: [
//                          BoxShadow(
//                            color: Color.fromARGB(26, 253, 185, 0),
//                            offset: Offset(0, 7),
//                            blurRadius: 20,
//                          ),
//                        ],
//                        borderRadius: BorderRadius.all(Radius.circular(10)),
//                      ),
//                      child: Column(
//                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                        children: [
//                          Container(
//                            height: 28,
//                            margin: EdgeInsets.only(left: 9, top: 9, right: 9),
//                            child: Column(
//                              crossAxisAlignment: CrossAxisAlignment.stretch,
//                              children: [
//                                Container(
//                                  height: 20,
//                                  margin: EdgeInsets.only(left: 8),
//                                  child: Row(
//                                    crossAxisAlignment: CrossAxisAlignment.stretch,
//                                    children: [
//                                      Align(
//                                        alignment: Alignment.topLeft,
//                                        child: Text(
//                                          "Subtotal",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 20, 33, 61),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 14,
//                                          ),
//                                        ),
//                                      ),
//                                      Spacer(),
//                                      Align(
//                                        alignment: Alignment.topLeft,
//                                        child: Text(
//                                          "Rs. 200.00",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 20, 33, 61),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 14,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                                Spacer(),
//                                Container(
//                                  height: 2,
//                                  decoration: BoxDecoration(
//                                    color: Color.fromARGB(255, 234, 234, 234),
//                                  ),
//                                  child: Container(),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Container(
//                            height: 28,
//                            margin: EdgeInsets.only(left: 9, top: 8, right: 9),
//                            child: Column(
//                              crossAxisAlignment: CrossAxisAlignment.stretch,
//                              children: [
//                                Container(
//                                  height: 20,
//                                  margin: EdgeInsets.only(left: 8),
//                                  child: Row(
//                                    crossAxisAlignment: CrossAxisAlignment.stretch,
//                                    children: [
//                                      Align(
//                                        alignment: Alignment.topLeft,
//                                        child: Text(
//                                          "Delivery Fee",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 20, 33, 61),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 14,
//                                          ),
//                                        ),
//                                      ),
//                                      Spacer(),
//                                      Align(
//                                        alignment: Alignment.topLeft,
//                                        child: Text(
//                                          "Rs. 20.00",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 20, 33, 61),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 14,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                                Spacer(),
//                                Container(
//                                  height: 2,
//                                  decoration: BoxDecoration(
//                                    color: Color.fromARGB(255, 234, 234, 234),
//                                  ),
//                                  child: Container(),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Container(
//                            height: 28,
//                            margin: EdgeInsets.only(left: 9, top: 8, right: 9),
//                            child: Column(
//                              crossAxisAlignment: CrossAxisAlignment.stretch,
//                              children: [
//                                Container(
//                                  height: 20,
//                                  margin: EdgeInsets.only(left: 9),
//                                  child: Row(
//                                    crossAxisAlignment: CrossAxisAlignment.stretch,
//                                    children: [
//                                      Align(
//                                        alignment: Alignment.topLeft,
//                                        child: Text(
//                                          "Taxes and Charges",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 20, 33, 61),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 14,
//                                          ),
//                                        ),
//                                      ),
//                                      Spacer(),
//                                      Align(
//                                        alignment: Alignment.topLeft,
//                                        child: Text(
//                                          "Rs. 20.00",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(
//                                            color: Color.fromARGB(255, 20, 33, 61),
//                                            fontFamily: "Jost",
//                                            fontWeight: FontWeight.w400,
//                                            fontSize: 14,
//                                          ),
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                                Spacer(),
//                                Container(
//                                  height: 2,
//                                  decoration: BoxDecoration(
//                                    color: Color.fromARGB(255, 234, 234, 234),
//                                  ),
//                                  child: Container(),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Spacer(),
//                          Container(
//                            height: 17,
//                            margin: EdgeInsets.only(left: 18, right: 10, bottom: 10),
//                            child: Row(
//                              children: [
//                                Text(
//                                  "Total",
//                                  textAlign: TextAlign.center,
//                                  style: TextStyle(
//                                    color: Color.fromARGB(255, 20, 33, 61),
//                                    fontFamily: "Proxima Nova",
//                                    fontWeight: FontWeight.w700,
//                                    fontSize: 14,
//                                  ),
//                                ),
//                                Spacer(),
//                                Text(
//                                  "Rs. 240.00",
//                                  textAlign: TextAlign.center,
//                                  style: TextStyle(
//                                    color: Color.fromARGB(255, 20, 33, 61),
//                                    fontFamily: "Proxima Nova",
//                                    fontWeight: FontWeight.w700,
//                                    fontSize: 14,
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                        ],
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//            Positioned(
//              left: 0,
//              right: -0,
//              bottom: 49,
//              child: FlatButton(
//                onPressed: () => this.onCheckoutPressed(context),
//                color: Color.fromARGB(255, 253, 200, 48),
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.all(Radius.circular(5)),
//                ),
//                textColor: Color.fromARGB(255, 255, 255, 255),
//                padding: EdgeInsets.all(0),
//                child: Text(
//                  "PROCEED TO CHECKOUT",
//                  textAlign: TextAlign.center,
//                  style: TextStyle(
//                    color: Color.fromARGB(255, 255, 255, 255),
//                    fontFamily: "Jost",
//                    fontWeight: FontWeight.w400,
//                    fontSize: 16,
//                  ),
//                ),
//              ),
//            ),
//          ],
//        ),
      ),
    );
  }
}