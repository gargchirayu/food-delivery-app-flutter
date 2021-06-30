/*
*  location_search_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/choose_location_widget/choose_location_widget.dart';
import 'package:fudito/values/values.dart';


class LocationSearchWidget extends StatelessWidget {
  
  void onSavedOnePressed(BuildContext context) {
    //stuff
    Navigator.pop(context);
  }

  void onSavedTwoPressed(BuildContext context) {
    //stuff
    Navigator.pop(context);
  }

  void onRecentOnePressed(BuildContext context) {
    //stuff
    Navigator.pop(context);
  }

  void onRecentTwoPressed(BuildContext context) {
    //stuff
    Navigator.pop(context);
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text(
          "Search a Location",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.primaryText,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 20, 33, 61),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
                margin: EdgeInsets.only(top: 16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Saved Locations",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 20, 33, 61),
                                fontFamily: "Jost",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 2,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index){
                                return Column(
                                  children: <Widget>[
                                    Container(
                                      height: 49,
                                      child: FlatButton(
                                        onPressed: () => this.onSavedOnePressed(context),
                                        color: Colors.transparent,
                                        textColor: Color.fromARGB(255, 112, 112, 112),
                                        padding: EdgeInsets.all(0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Image.asset("assets/images/location-icon-3.png",),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Home",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 112, 112, 112),
                                                fontFamily: "Jost",
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14,
                                              ),
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
                                  ],
                                );
                              },

                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        margin: EdgeInsets.only(top: 16),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Recent Searches",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 20, 33, 61),
                                fontFamily: "Jost",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 2,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index){
                                return Column(
                                  children: <Widget>[
                                    Container(
                                      height: 49,
                                      child: FlatButton(
                                        onPressed: () => this.onRecentOnePressed(context),
                                        color: Colors.transparent,
                                        textColor: Color.fromARGB(255, 112, 112, 112),
                                        padding: EdgeInsets.all(0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Image.asset("assets/images/recent-search-icon.png",),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Location One",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 112, 112, 112),
                                                fontFamily: "Jost",
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14,
                                              ),
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
                                  ],
                                );
                              },
                            ),
                          ],
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