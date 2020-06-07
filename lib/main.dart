import 'package:flutter/material.dart';
import 'package:solmusic/Pages/HomePage.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SolMusic',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}