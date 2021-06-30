import 'package:flutter/material.dart';
import 'package:fudito/login_widget/login_widget.dart';
import 'package:fudito/register_widget/register_widget.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView(){
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if(showSignIn == true){
      return LoginWidget(toggleView: toggleView);
    } else{
      return RegisterWidget(toggleView: toggleView);
    }
  }
}
