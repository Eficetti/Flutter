import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ignore: must_be_immutable
class User extends StatelessWidget{
  
  String details;
  String name;
  String img;
  User(this.details, this.name, this.img);

  Widget build(BuildContext context){

  final photo = Container(
    margin: EdgeInsets.only(
      bottom: 330,
      left: 20,
    ),
    width: 80,
    height: 80,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(width: 2, color: const Color(0xFFFFFFFF)),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(img)
      )
    ),
  );

  final userName = Container(
    margin: EdgeInsets.only(
      top: 120,
      left: 20,
    ),
    child: Text(
      name,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Lato',
        fontSize: 25,
      ),
    ),
  );

  final userComment = Container(
    margin: EdgeInsets.only(
      left: 20,
    ),
    child: Text(
      details,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: 'Lato',
        fontSize: 12,
        fontWeight: FontWeight.w900,
        color: Colors.grey[400]
      ),
    ),
  );


  final userDetails =Container(
    child: Column(
      children: <Widget>[
        userName,
        userComment,
      ],
    ),
  ); 
  
    return Row(
      children: [
        photo,
        userDetails,
      ],
    );
  }
}