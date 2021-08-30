import 'package:flutter/material.dart';
import 'navBar.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red[400],
      ),
      home: NavBar()
      );
  } 
}

void main() {
  runApp(MyApp());
}
