/*
*  main.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/services/auth.dart';
import 'package:provider/provider.dart';
import 'categories_widget/categories_widget.dart';

//import 'choose_location_widget/choose_location_widget.dart';
//import 'home_widget/home_widget.dart';
//import 'package:fudito/account_widget/account_widget.dart';
//import 'package:fudito/all_kitchens_widget/all_kitchens_widget.dart';
//import 'package:fudito/checkout_widget/checkout_widget.dart';
//import 'package:fudito/coupons_widget/coupons_widget.dart';
//import 'package:fudito/item_search_widget/item_search_widget.dart';
//import 'package:fudito/kitchen_widget/kitchen_widget.dart';
//import 'package:fudito/location_search_widget/location_search_widget.dart';
//import 'package:fudito/login_widget/login_widget.dart';
//import 'package:fudito/otpverification_widget/otpverification_widget.dart';
//import 'package:fudito/rate_order_widget/rate_order_widget.dart';
//import 'package:fudito/register_widget/register_widget.dart';
//import 'package:fudito/search_widget/search_widget.dart';
//import 'package:fudito/tab_group_one_tab_bar_widget/tab_group_one_tab_bar_widget.dart';
//import 'package:fudito/tiffin_widget/tiffin_widget.dart';
//import 'package:fudito/track_order_widget/track_order_widget.dart';


void main() => runApp(App());


class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return StreamProvider.value(
      value: AuthService().user,
      child: MaterialApp(
        home: CategoriesWidget(),
      ),
    );
  }
}

//TODO: (me) location-all, manual otp entering, edit info {includes saved locations, faq, offers(in database)}
//TODO: (grp) no kitchen related functionality {includes cart} + nothing happens after clicking on search food item, think about faqs and update major/minor changes separately after noting them down properly