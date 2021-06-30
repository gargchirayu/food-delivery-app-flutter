/*
*  checkout_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/choose_location_widget/choose_location_widget.dart';
import 'package:fudito/tiffin_widget/tiffin_widget.dart';
import 'package:fudito/values/values.dart';


class CheckoutWidget extends StatefulWidget {
  
  @override
  _CheckoutWidgetState createState() => _CheckoutWidgetState();
}

class _CheckoutWidgetState extends State<CheckoutWidget> {

  var cashColor = Colors.transparent;

  void onChooseLocPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseLocationWidget()));

  void onCashPressed(BuildContext context) {
    setState(() {
      cashColor = Colors.green;
    });
  }

  void onNetPressed(BuildContext context) {

  }

  void onPaypalPressed(BuildContext context) {

  }

  void onWalletPressed(BuildContext context) {

  }

  void onUpiPressed(BuildContext context) {

  }

  void onCardPressed(BuildContext context) {

  }

  void onProceedPressed(BuildContext context) {

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        centerTitle: true,
        brightness: Brightness.light,
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
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 20, 33, 61),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 200, 33),
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
                margin: EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Delivery Address",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 20, 33, 61),
                          fontFamily: "Proxima Nova",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        height: 72,
                        margin: EdgeInsets.symmetric(vertical: 16.0),
                        padding: EdgeInsets.only(top:8.0, left: 8, right:8),
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
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 15,
                                  height: 18,
                                  child: Image.asset(
                                    "assets/images/location-icon-5.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Current Location",
                                    textAlign: TextAlign.center,
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
                              height: 2,
                              margin: EdgeInsets.only(top: 8),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 234, 234, 234),
                              ),
                              child: Container(),
                            ),
                            Container(
                              height: 32,
                              child: FlatButton(
                                onPressed: () => this.onChooseLocPressed(context),
                                color: Color.fromARGB(255, 255, 255, 255),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(0)),
                                ),
                                textColor: Color.fromARGB(255, 20, 33, 61),
                                padding: EdgeInsets.all(0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Choose Another Location",
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
                            ),
                          ],
                        ),
//                        Stack(
//                          alignment: Alignment.center,
//                          children: [
//                            Positioned(
//                              left: 0,
//                              top: 0,
//                              right: 0,
//                              bottom: 0,
//                              child: Column(
//                                crossAxisAlignment: CrossAxisAlignment.stretch,
//                                children: [
//                                  Container(
//                                    height: 34,
//                                    decoration: BoxDecoration(
//                                      color: Color.fromARGB(255, 255, 255, 255),
//                                      borderRadius: BorderRadius.all(Radius.circular(10)),
//                                    ),
//                                    child: Row(
//                                      children: [
//                                        Container(
//                                          width: 15,
//                                          height: 18,
//                                          margin: EdgeInsets.only(left: 8),
//                                          child: Image.asset(
//                                            "assets/images/location-icon-5.png",
//                                            fit: BoxFit.none,
//                                          ),
//                                        ),
//                                        Container(
//                                          margin: EdgeInsets.only(left: 10),
//                                          child: Text(
//                                            "Current Location",
//                                            textAlign: TextAlign.center,
//                                            style: TextStyle(
//                                              color: Color.fromARGB(255, 112, 112, 112),
//                                              fontFamily: "Jost",
//                                              fontWeight: FontWeight.w400,
//                                              fontSize: 14,
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Spacer(),
//                                  Container(
//                                    height: 34,
//                                    child: FlatButton(
//                                      onPressed: () => this.onChooseLocPressed(context),
//                                      color: Color.fromARGB(255, 255, 255, 255),
//                                      shape: RoundedRectangleBorder(
//                                        borderRadius: BorderRadius.all(Radius.circular(0)),
//                                      ),
//                                      textColor: Color.fromARGB(255, 20, 33, 61),
//                                      padding: EdgeInsets.all(0),
//                                      child: Text(
//                                        "Choose Another Location",
//                                        textAlign: TextAlign.center,
//                                        style: TextStyle(
//                                          color: Color.fromARGB(255, 20, 33, 61),
//                                          fontFamily: "Jost",
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 14,
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Positioned(
//                              left: 7,
//                              right: 7,
//                              child: Container(
//                                height: 2,
//                                decoration: BoxDecoration(
//                                  color: Color.fromARGB(255, 234, 234, 234),
//                                ),
//                                child: Container(),
//                              ),
//                            ),
//                          ],
//                        ),
                      ),
                      Text(
                        "Payment Methods",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 20, 33, 61),
                          fontFamily: "Proxima Nova",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        height: 232,
                        margin: EdgeInsets.symmetric(vertical:16.0),
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
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
                              child: FlatButton(
                                onPressed: () => this.onCardPressed(context),
                                color: Colors.transparent,
                                padding: EdgeInsets.only(left: 0.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 24.0,
                                        child: Center(
                                            child: Image.asset("assets/images/card-icon.png",))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Credit/Debit Card",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 20, 33, 61),
                                        fontFamily: "Jost",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.check,
                                      color: Colors.transparent,
                                      size: 18,
                                    ),
                                  ],
                                ),
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
                              child: FlatButton(
                                onPressed: () => this.onUpiPressed(context),
                                color: Colors.transparent,
                                padding: EdgeInsets.only(left: 0.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 24.0,
                                        child: Center(
                                            child: Image.asset("assets/images/upi-icon.png",))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "UPI",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 20, 33, 61),
                                        fontFamily: "Jost",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.check,
                                      color: Colors.transparent,
                                      size: 18,
                                    ),
                                  ],
                                ),
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
                              child: FlatButton(
                                onPressed: () => this.onWalletPressed(context),
                                color: Colors.transparent,
                                padding: EdgeInsets.only(left: 0.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 24.0,
                                        child: Center(
                                            child: Image.asset("assets/images/wallet-icon.png",))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Wallets",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 20, 33, 61),
                                        fontFamily: "Jost",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.check,
                                      color: Colors.transparent,
                                      size: 18,
                                    ),
                                  ],
                                ),
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
                              child: FlatButton(
                                onPressed: () => this.onPaypalPressed(context),
                                color: Colors.transparent,
                                padding: EdgeInsets.only(left: 0.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 24.0,
                                        child: Center(
                                            child: Image.asset("assets/images/paypal-icon.png",))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "PayPal",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 20, 33, 61),
                                        fontFamily: "Jost",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.check,
                                      color: Colors.transparent,
                                      size: 18,
                                    ),
                                  ],
                                ),
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
                              child: FlatButton(
                                onPressed: () => this.onNetPressed(context),
                                color: Colors.transparent,
                                padding: EdgeInsets.only(left: 0.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 24.0,
                                        child: Center(
                                            child: Image.asset("assets/images/bank-icon.png",))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Net Banking",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 20, 33, 61),
                                        fontFamily: "Jost",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.check,
                                      color: Colors.transparent,
                                      size: 18,
                                    ),
                                  ],
                                ),
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
                              child: FlatButton(
                                onPressed: () => this.onCashPressed(context),
                                color: Colors.transparent,
                                padding: EdgeInsets.only(left: 0.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 24.0,
                                        child: Center(
                                            child: Image.asset("assets/images/cash-icon.png",))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Pay on Delivery (Cash)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 20, 33, 61),
                                        fontFamily: "Jost",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.check,
                                      color: cashColor,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 37,
                        margin: EdgeInsets.only(top: 8),
                        child: FlatButton(
                          onPressed: () => this.onProceedPressed(context),
                          color: Color.fromARGB(255, 253, 200, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          textColor: Color.fromARGB(255, 255, 255, 255),
                          padding: EdgeInsets.all(0),
                          child: Text(
                            "PROCEED TO PAY",
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
