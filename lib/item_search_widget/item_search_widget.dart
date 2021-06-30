/*
*  item_search_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/kitchen_widget/kitchen_widget.dart';
import 'package:fudito/values/values.dart';

bool _isSearching = false;

//class SearchListProvider extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: ListView.builder(itemBuilder: null)
//    );
//  }
//}


class ItemSearchWidget extends StatefulWidget {
  
  @override
  _ItemSearchWidgetState createState() => _ItemSearchWidgetState();

}

class _ItemSearchWidgetState extends State<ItemSearchWidget> {

  List autoList = ["Rajma Rice", "Dal", "Salad", "Roti"];
  List filteredList = [];
  bool searched = false;

  void initState() {
    filteredList.addAll(autoList);
    super.initState();
  }

  void onSearchItemPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => KitchenWidget()));

  void onSearchItemTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => KitchenWidget()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        brightness: Brightness.light,
        title: TextField(
          onChanged: (value) {
            setState(() {
              filteredList.clear(); //for the next time that we search we want the list to be unfilterted
              filteredList.addAll(autoList); //getting list to original state
              //removing items that do not contain the entered Text
              filteredList.removeWhere((i) => i.contains(value.toString())==false);
              //print('$filteredList');
              //following is just a bool parameter to keep track of lists
              searched=!searched;
            });
          },
          //controller: editingController,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search an Item",
          ),
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
                //margin: EdgeInsets.only(top: 16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        //margin: EdgeInsets.only(top: 16),
                        //padding: EdgeInsets.all(16),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: filteredList.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index){
                            if(searched){
                              return Container(
                                padding: EdgeInsets.only(left: 16),
                                height: 39,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  //this.onSearchItemPressed(context),
                                  color: Colors.transparent,
                                  textColor: Color.fromARGB(255, 112, 112, 112),
                                  padding: EdgeInsets.all(0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        (filteredList[index]),
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
                              );
                            }
                            else{
                              return null;
                            }
                          },

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
                                        onPressed: () => Navigator.pop(context),
                                            //this.onSearchItemPressed(context),
                                        color: Colors.transparent,
                                        textColor: Color.fromARGB(255, 112, 112, 112),
                                        padding: EdgeInsets.all(0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Image.asset("assets/images/recent-search-icon-3.png",),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Item One",
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