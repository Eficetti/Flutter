import 'package:flutter/material.dart';
import 'button.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget{
  String place;
  int star;
  String descripcion;
  DescriptionPlace(this.place, this.star, this.descripcion);

  String lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  
  
  Widget build(BuildContext context) {

    final star = Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3,
      ),
      child: Icon(
        Icons.star,
        color: Colors.yellow[700],
      ),
    );

    final texto = Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 10,
        right: 20
      ),
      child: Text(
        descripcion,
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'lato'
          ),
        textAlign: TextAlign.justify,
      ),
    );
    final titleStars = Row (
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320,
            left: 20,
            right: 20,
          ),
          child: Text(place,
          style: TextStyle(
            fontFamily: 'lato',
            fontSize: 30,
            fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star
          ],
        ),
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleStars,
          texto,
          Button('Go to')
        ],
      );
  }
}
