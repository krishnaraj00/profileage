import 'package:flutter/material.dart';
import 'package:profileage/screens/homescreen.dart';

void main() {
  runApp( ProfileApp());
}


class ProfileApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}