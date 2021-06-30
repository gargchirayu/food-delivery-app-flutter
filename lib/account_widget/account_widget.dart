/*
*  account_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:fudito/coupons_widget/coupons_widget.dart';
import 'package:fudito/account_widget/edit_information_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fudito/login_widget/login_widget.dart';
import 'package:fudito/models/user.dart';
import 'package:fudito/services/auth.dart';
import 'package:fudito/services/authenticate.dart';
import 'package:fudito/services/database.dart';
import 'package:fudito/shared/kitchen_card.dart';
import 'package:fudito/shared/loading.dart';
import 'package:fudito/subscriptions_widget/subscriptions_widget.dart';
import 'package:fudito/values/values.dart';
import 'package:provider/provider.dart';


class AccountWidget extends StatefulWidget {
  
  @override
  _AccountWidgetState createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {

  @override
  void initState() {
    _updateAppbar();
    super.initState();
  }

  void _updateAppbar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  void onEditPressed(BuildContext context) {
    showModalBottomSheet(context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: EdgeInsets.only(left: 16, right: 16, top:8),
        height: MediaQuery.of(context).size.height * 0.75,
        decoration: new BoxDecoration(
          color: Color.fromARGB(255, 250, 250, 250),
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(10.0),
            topRight: const Radius.circular(10.0),
        ),
      ),
        child: EditInformationWidget(),
      ),
    );
  }

  void onSubscriptionPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SubscriptionsWidget()));

  void onFaqPressed(BuildContext context) {

  }

  void onOfferPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CouponsWidget()));

  void onPaymentPressed(BuildContext context) {

  }

  void onLocationPressed(BuildContext context) {

  }

  void onReferralPressed(BuildContext context) {

  }

  int sharedValue=0;

  final Map<int, Widget> accountPanels = const <int, Widget>{
    0: Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Text(
        'FAVOURITES',
        style: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 16,
        ),
      ),
    ),
    1: Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Text(
        'SETTINGS',
        style: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 16,
        ),
      ),
    ),
  };

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    final AuthService _auth = AuthService();

    final Map<int, Widget> content = <int, Widget>{
      0:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 37,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: FlatButton(
                onPressed: () => this.onSubscriptionPressed(context),
                color: Color.fromARGB(255, 253, 200, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                textColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/sub-icon-2.png",),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Subscriptions",
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
            ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 5,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index){
                return KitchenCard();
              },

            ),
          ],
        ),
      ),
      1:  Padding(
        padding: const EdgeInsets.symmetric(vertical:12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24.0),
                    height: 37,
                    child: FlatButton(
                      onPressed: () => this.onLocationPressed(context),
                      color: Colors.transparent,
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: 26.0,
                              child: Center(
                                  child: Image.asset("assets/images/location-icon-9.png",))),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Saved Locations",
                            textAlign: TextAlign.center,
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
                  Container(
                    height: 2,
                    margin: EdgeInsets.symmetric(horizontal: 24.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 234, 234, 234),
                    ),
                    child: Container(),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24.0),
                    height: 37,
                    child: FlatButton(
                      onPressed: () => this.onPaymentPressed(context),
                      color: Colors.transparent,
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: 26.0,
                              child: Center(
                                  child: Image.asset("assets/images/payment-icon-3.png",))),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Payment",
                            textAlign: TextAlign.center,
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
                  Container(
                    height: 2,
                    margin: EdgeInsets.symmetric(horizontal: 24.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 234, 234, 234),
                    ),
                    child: Container(),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24.0),
                    height: 37,
                    child: FlatButton(
                      onPressed: () => this.onOfferPressed(context),
                      color: Colors.transparent,
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: 26.0,
                              child: Center(
                                  child: Image.asset("assets/images/offers-icon-3.png",))),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Offers",
                            textAlign: TextAlign.center,
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
                  Container(
                    height: 2,
                    margin: EdgeInsets.symmetric(horizontal: 24.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 234, 234, 234),
                    ),
                    child: Container(),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24.0),
                    height: 37,
                    child: FlatButton(
                      onPressed: () => this.onFaqPressed(context),
                      color: Colors.transparent,
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: 26.0,
                              child: Center(
                                  child: Image.asset("assets/images/faq-icon-3.png",))),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "FAQ & Queries",
                            textAlign: TextAlign.center,
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
                  Container(
                    height: 2,
                    margin: EdgeInsets.symmetric(horizontal: 24.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 234, 234, 234),
                    ),
                    child: Container(),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.0, right: 24.0, top: 12.0),
              height: 37,
              child: FlatButton(
                onPressed: () => this.onReferralPressed(context),
                color: Colors.transparent,
                padding: EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 26.0,
                        child: Center(
                            child: Image.asset("assets/images/referral-icon-3.png",))),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Invite & Earn",
                      textAlign: TextAlign.center,
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
            Container(
              height: 2,
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.0, right: 24.0, top: 12.0),
              height: 37,
              child: FlatButton(
                onPressed: () async {
                  await _auth.signOut();
                  },
                color: Colors.transparent,
                padding: EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 26.0,
                        child: Center(
                            child: Image.asset("assets/images/logout-icon-3.png",))),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Logout",
                      textAlign: TextAlign.center,
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
            Container(
              height: 2,
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
              ),
              child: Container(),
            ),
          ],
        ),
      ),
    };

    if(user==null){
      return Scaffold(
            body: Container(
              margin: EdgeInsets.all(20),
              child: FlatButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Authenticate())),
                child: Text("Login"),
                color: Colors.yellow,
              ),
            ),
        );
      }
    else{
      return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user.uid).userData,
        builder: (context, snapshot) {
          if(snapshot.hasData){
            UserData userData = snapshot.data;
            return Scaffold(
              backgroundColor: Color.fromARGB(255, 250, 250, 250),
              body: Container(
                constraints: BoxConstraints.expand(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 170,
                      margin: EdgeInsets.only(left: 24, top: 44, right: 24, bottom: 24),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(26, 253, 185, 0),
                            offset: Offset(0, 7),
                            blurRadius: 20,
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 24, bottom: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            AutoSizeText(
                              userData.name,
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 20, 33, 61),
                                fontFamily: "Proxima Nova",
                                fontWeight: FontWeight.w400,
                                fontSize: 35,
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  userData.mobile,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 20, 33, 61),
                                    fontFamily: "Jost",
                                    fontWeight: FontWeight.w200,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  userData.email,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 20, 33, 61),
                                    fontFamily: "Jost",
                                    fontWeight: FontWeight.w200,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Container(
                              width: 36,
                              height: 21,
                              child: FlatButton(
                                onPressed: () => this.onEditPressed(context),
                                color: Color.fromARGB(255, 255, 255, 255),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(0)),
                                ),
                                textColor: Color.fromARGB(255, 253, 200, 48),
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  "EDIT",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 253, 200, 48),
                                    fontFamily: "Jost",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                    CupertinoSegmentedControl<int>(
                      padding: EdgeInsets.zero,
                      selectedColor: Color.fromARGB(255, 253, 200, 48),
                      borderColor: Color.fromARGB(255, 253, 200, 48),
                      unselectedColor: Color.fromARGB(255, 255, 255, 255),
                      pressedColor: Color.fromARGB(51, 253, 200, 48),
                      children: accountPanels,
                      onValueChanged: (int val) {
                        setState(() {
                          sharedValue = val;
                        });
                      },
                      groupValue: sharedValue,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: SingleChildScrollView(
                          child: content[sharedValue],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          // ignore: missing_return
          }
          else{
            return Loading();
          }

        }
      );
    }
  }
}