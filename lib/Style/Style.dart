import 'package:flutter/material.dart';

abstract class ThemText {
  static const TextStyle titlePinkText = TextStyle(
    color: Colors.pink, 
    fontSize: 26.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.25,   
  );

  static const TextStyle titleWhiteText  = TextStyle(
    color: Colors.white, 
    fontSize: 26.0, 
    fontWeight: FontWeight.w600,
    letterSpacing: 1.25,  
  );

  static const TextStyle navBarWhiteTab = TextStyle(
     color: Colors.white,
    fontSize: 16.0,
    letterSpacing: 2.75,
  );

  static const TextStyle helpGreyText = TextStyle(
    color: Colors.grey,
    fontSize: 14.0,
    letterSpacing: 2.75,
  );

  static const TextStyle loginWhiteText = TextStyle(
    color: Colors.white,
    fontSize: 16.0,
    letterSpacing: 2.75,
  );

  static const TextStyle createAccountPinkText = TextStyle(
    color: Colors.pink,
    fontSize: 16.0,
    letterSpacing: 2.75,
  );

  static const TextStyle homePinkTitle = TextStyle(
    color: Colors.pink,
    fontSize: 68.0, 
    fontWeight: FontWeight.w600
  );

  static const TextStyle homewhiteTitle = TextStyle(
    color: Colors.white,
    fontSize: 68.0, 
    fontWeight: FontWeight.w600,
  );  

  static const TextStyle homeDescTitle = TextStyle(
    color: Colors.white,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.0, 
  );

   static const TextStyle buttonText = TextStyle(
    color: Colors.white,
    fontSize: 16.0,
  );

  static const TextStyle bigTextTitle = TextStyle(
    color: Color(0xff0A183D),
    fontSize: 62.0,
    fontWeight: FontWeight.w700,  
  );


}
