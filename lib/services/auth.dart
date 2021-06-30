import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:fudito/models/user.dart';
import 'package:fudito/otpverification_widget/otpverification_widget.dart';
import 'database.dart';
import 'package:flutter/material.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user){
    return user!=null ? User(uid: user.uid) : null;
  }

  Stream<User> get user{
    return _auth.onAuthStateChanged
        .map(_userFromFirebaseUser);
  }

  AuthResult result;

  Future registerWithPhone(String name, String mobile, String email, String refCode, BuildContext context) async{
     try {
       await _auth.verifyPhoneNumber(
          phoneNumber: mobile,
          timeout: Duration(seconds: 120),

          verificationCompleted: (AuthCredential authCredential) async{
            result = await _auth.signInWithCredential(authCredential);
          },

          verificationFailed: (AuthException authException) {
            print(authException.message);
          },

          codeSent: null,
//              (String verificationId, [int forceResendingToken]){
//            Navigator.push(context, MaterialPageRoute(builder: (context) => OTPVerificationWidget()));
//          },

          codeAutoRetrievalTimeout: (String verificationId){
            verificationId = verificationId;
            print(verificationId);
            print("Timout");
          },
       );

       FirebaseUser user = result.user;

       await DatabaseService(uid: user.uid).updateUserData(name, mobile, email, refCode);

       return _userFromFirebaseUser(user);

     } catch (e) {
       print(e.toString());
       return null;
     }
  }

  Future signInWithPhone(String mobile, BuildContext context) async{
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: mobile,
        timeout: Duration(seconds: 120),

        verificationCompleted: (AuthCredential authCredential) async{
          AuthResult result = await _auth.signInWithCredential(authCredential);
          FirebaseUser user = result.user;

          return _userFromFirebaseUser(user);
        },

        verificationFailed: (AuthException authException) {
          print(authException.message);
        },

        codeSent: null,
//            (String verificationId, [int forceResendingToken]){
//          Navigator.push(context, MaterialPageRoute(builder: (context) => OTPVerificationWidget()));
//        },

        codeAutoRetrievalTimeout: (String verificationId){
          verificationId = verificationId;
          print(verificationId);
          print("Timeout");
        },
      );
    } catch (e) {
      print(e.toString());
      return null;
    }
  }



  Future signOut() async {
    try{
      return await _auth.signOut(); // where signout function called set user object to null
    } catch(e)  {
      print(e.toString());
      return null;
    }
  }
}