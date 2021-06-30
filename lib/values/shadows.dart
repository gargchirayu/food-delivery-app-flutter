/*
*  shadows.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/rendering.dart';


class Shadows {
  static const BoxShadow primaryShadow = BoxShadow(
    color: Color.fromARGB(26, 253, 185, 0),
    offset: Offset(0, 7),
    blurRadius: 20,
  );
  static const BoxShadow secondaryShadow = BoxShadow(
    color: Color.fromARGB(26, 253, 200, 48),
    offset: Offset(0, 7),
    blurRadius: 20,
  );
}