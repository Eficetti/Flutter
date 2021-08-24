import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red[400]
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Carpincho'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/carpincho.jpg'),
                fit: BoxFit.cover
            ),
          ),
          child: Center(
            child: Container(
              height: 45,
              color: Color.fromRGBO(0, 0, 0, .6),
              child: Center(
                child: Text(
                  'Carpincho',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0
                  ),
                ),
              )
            ),
          ),
        ),
      ),
    );
  } 
}

void main() {
  runApp(MyApp());
}
