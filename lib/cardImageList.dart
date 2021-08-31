import 'package:flutter/material.dart';
import 'card.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage('assets/img/carpincho.jpg'),
          CardImage('assets/img/carpincho2.jpg'),
          CardImage('assets/img/carpincho3.jpg'),
          CardImage('assets/img/carpincho4.jpg'),
        ],
      ),
    );
  }
}