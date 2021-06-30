import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fudito/kitchen_widget/add_to_tiffin_widget.dart';
import 'package:fudito/kitchen_widget/tiffin_customize_widget.dart';
import 'package:fudito/kitchen_widget/tiffin_details_widget.dart';
import 'global_variables.dart';

class CartItemCard extends StatelessWidget {

  void onDeletePressed(BuildContext context) {

  }

  void onLessPressed(BuildContext context) {

  }

  void onAddPressed(BuildContext context) {

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118,
      width: MediaQuery.of(context).size.width-32,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(26, 253, 185, 0),
            offset: Offset(0, 7),
            blurRadius: 20,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: 118,
            height: 118,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
              child: Image.asset(
                "assets/images/photo-3.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Rajma Rice",
                  style: TextStyle(
                    color: Color.fromARGB(255, 20, 33, 61),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "Rs. 100.00",
                  style: TextStyle(
                    color: Color.fromARGB(255, 20, 33, 61),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 24, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 20,
                  height: 22,
                  child: FlatButton(
                    onPressed: () => this.onDeletePressed(context),
                    color: Color.fromARGB(0, 0, 0, 0),
                    textColor: Color.fromARGB(255, 0, 0, 0),
                    padding: EdgeInsets.all(0),
                    child:
                    Image.asset("assets/images/delete-icon.png",),
                  ),
                ),
                Container(
                  width: 75,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 253, 200, 48),
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 25,
                        height: 25,
                        child: Center(
                          child: FlatButton(
                            onPressed: () => this.onLessPressed(context),
                            color: Color.fromARGB(0, 0, 0, 0),
                            textColor: Color.fromARGB(255, 0, 0, 0),
                            padding: EdgeInsets.all(0),
                            child: Center(
                              child: Container(
                                height: 1.5,
                                width: 10,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            //Image.asset("assets/images/sub-icon.png",),
                          ),
                        ),
                      ),
                      Container(
                        width:25,
                        height: 25,
                        child: Center(
                          child: Text(
                            "1",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
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
                            onPressed: () => this.onAddPressed(context),
                            color: Color.fromARGB(0, 0, 0, 0),
                            textColor: Color.fromARGB(255, 0, 0, 0),
                            padding: EdgeInsets.all(0),
                            child: Icon(
                              Icons.add,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 16,
                            ),
                            //Image.asset("assets/images/add-icon.png",),
                          ),
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
    );
  }
}

class CartTiffinCard extends StatelessWidget {

  void onDeletePressed(BuildContext context) {

  }

  void onCustomizePressed(BuildContext context) {
    showModalBottomSheet(context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 8),
        height: MediaQuery.of(context).size.height * 0.51,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: TiffinCustomizeWidget(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118,
      width: MediaQuery.of(context).size.width-32,
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(26, 253, 185, 0),
            offset: Offset(0, 7),
            blurRadius: 20,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: 118,
            height: 118,
            child: Image.asset(
              "assets/images/icon-3.png",
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Rajma Rice",
                  style: TextStyle(
                    color: Color.fromARGB(255, 20, 33, 61),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "Rs. 100.00",
                  style: TextStyle(
                    color: Color.fromARGB(255, 20, 33, 61),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 24, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 20,
                  height: 22,
                  child: FlatButton(
                    onPressed: () => this.onDeletePressed(context),
                    color: Color.fromARGB(0, 0, 0, 0),
                    textColor: Color.fromARGB(255, 0, 0, 0),
                    padding: EdgeInsets.all(0),
                    child:
                    Image.asset("assets/images/delete-icon.png",),
                  ),
                ),
                Container(
                  width: 85,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 253, 200, 48),
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => this.onCustomizePressed(context),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "CUSTOMIZE",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: "Jost",
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                  ), //remove and add customize button that triggers customize bottom screen
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KitchenItemCard extends StatelessWidget {

  void onItemPressed(BuildContext context)  {
    if (category == 4){
      showModalBottomSheet(context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 8),
          height: MediaQuery.of(context).size.height * 0.66,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 250, 250, 250),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: TiffinDetailsWidget(),
        ),
      );
    }
    else {
      showModalBottomSheet(context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => Container(
          padding: EdgeInsets.only(left: 20, right: 20, top:8),
          height: MediaQuery.of(context).size.height * 0.28,
          decoration: new BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0),
            ),
          ),
          child: AddToTiffinWidget(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => this.onItemPressed(context),
      behavior: HitTestBehavior.translucent,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(41, 253, 200, 48),
              offset: Offset(0, 5),
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
              child: Image.asset(
                "assets/images/photo-3.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Rajma Rice",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromARGB(255, 20, 33, 61),
                  fontFamily: "Proxima Nova",
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "Rs. 100.00",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromARGB(255, 20, 33, 61),
                  fontFamily: "Jost",
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


