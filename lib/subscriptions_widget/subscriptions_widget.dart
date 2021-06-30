import 'package:flutter/material.dart';
import 'package:fudito/shared/cart_item.dart';
import 'package:fudito/values/values.dart';

class SubscriptionsWidget extends StatefulWidget {
  @override
  _SubscriptionsWidgetState createState() => _SubscriptionsWidgetState();
}

class _SubscriptionsWidgetState extends State<SubscriptionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 200, 33),
        brightness: Brightness.light,
        title: Text(
          "Subscriptions",
          style: TextStyle(
            color: AppColors.secondaryText,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w700,
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
      elevation: 0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 2,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                        return CartTiffinCard();
                      },
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
