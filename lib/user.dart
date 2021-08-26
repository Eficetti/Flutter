import 'package:flutter/material.dart';
import 'iconContent.dart';

// ignore: must_be_immutable
class User extends StatelessWidget{
  
  String details;
  String name;
  String img;
  int iconColor;
  User(this.details, this.name, this.img, this.iconColor);

  Widget build(BuildContext context){

  final photo = Container(
    margin: EdgeInsets.only(
      top: 20,
      left: 20,
    ),
    width: 80,
    height: 80,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(img)
      )
    ),
  );

  final userName = Container(
    margin: EdgeInsets.only(
      left: 20,
    ),
    child: Text(
      name,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: 'Lato',
        fontSize: 20,
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

  final emailIcon = IconContent(
    EdgeInsets.only(
      top: 10,
      left: 74,
    ),
    Icons.attach_email,
    Color(iconColor),
    50
  );

  final userDetails =Container(
    margin: EdgeInsets.only(
      top: 20
    ),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 1
        )
      )
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userComment,
      ],
    ),
  ); 
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        photo,
        userDetails,
        Container(
          child: emailIcon
        ),
      ],
    );
  }
}