import 'package:flutter/material.dart';
import 'package:flutter_application_2/userList.dart';
import 'descripcion.dart';
import 'rewievList.dart';
import 'header.dart';
import 'userList.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red[400],
      ),
      home: Scaffold(
        // body: Stack(
        //   children: [
        //     ListView(
        //       children: [
        //         DescriptionPlace('Carpincho', 4,"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
        //         RewievList(),
        //       ],
        //     ),
        //     HeaderAppBar(),
        //   ],
        // ),
        body: ListView(
          children: [
            UserList()
          ],
        )
      ),
    );
  } 
}

void main() {
  runApp(MyApp());
}
