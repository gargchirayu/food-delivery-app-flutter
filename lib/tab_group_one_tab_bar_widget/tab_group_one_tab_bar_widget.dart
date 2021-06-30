/*
*  tab_group_one_tab_bar_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fudito/account_widget/account_widget.dart';
import 'package:fudito/home_widget/home_widget.dart';
import 'package:fudito/search_widget/search_widget.dart';
import 'package:fudito/tiffin_widget/tiffin_widget.dart';


class TabGroupOneTabBarWidget extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _TabGroupOneTabBarWidgetState();
}


class _TabGroupOneTabBarWidgetState extends State<TabGroupOneTabBarWidget> {
  List<Widget> _tabWidgets = [
    HomeWidget(),
    SearchWidget(),
    TiffinWidget(),
    AccountWidget(),
  ];
  int _currentIndex = 0;
  
  void _onTabChanged(int index) => this.setState(() => _currentIndex = index);
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: _tabWidgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 253, 200, 48),
        currentIndex: _currentIndex,
        onTap: (index) => this._onTabChanged(index),
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/images/home.png"
            ),
            icon: Image.asset(
              "assets/images/home-grey.png",
            ),
            title: Text(
              "HOME",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "Jost",
                fontWeight: FontWeight.w300,
                fontSize: 10,
              ),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/images/search-icon.png",
            ),
            icon: Image.asset(
              "assets/images/search-icon-inactive.png",
            ),
            title: Text(
              "SEARCH",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "Jost",
                fontWeight: FontWeight.w300,
                fontSize: 10,
              ),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/images/tiffin-icon.png",
            ),
            icon: Image.asset(
              "assets/images/tiffin-icon-inactive.png",
            ),
            title: Text(
              "TIFFIN",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "Jost",
                fontWeight: FontWeight.w300,
                fontSize: 10,
              ),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/images/account-active.png"
            ),
            icon: Image.asset(
              "assets/images/account-icon.png",
            ),
            title: Text(
              "ACCOUNT",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "Jost",
                fontWeight: FontWeight.w300,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}