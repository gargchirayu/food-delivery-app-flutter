import 'package:flutter/material.dart';
import 'package:fudito/kitchen_widget/kitchen_widget.dart';

class KitchenCard extends StatelessWidget {

  void linkKitchen(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => KitchenWidget()));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => this.linkKitchen(context),
      child: Container(
        height: 120,
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 13),
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
                    Text(
                      "Mama’s Little Bakery",
                      style: TextStyle(
                        color: Color.fromARGB(255, 20, 33, 61),
                        fontFamily: "Proxima Nova",
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      "North Indian",
                      style: TextStyle(
                        color: Color.fromARGB(255, 112, 112, 112),
                        fontFamily: "Jost",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 44,
                  height: 44,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/logo-icon-14.png",
                      fit: BoxFit.none,
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
            SizedBox(
              height: 2.0,
            ),
            Row(
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
          ],
        ),
      ),
    );
  }
}
