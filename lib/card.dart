import 'package:flutter/material.dart';
import 'floatingActionButton.dart';

// ignore: must_be_immutable
class CardImage extends StatelessWidget{

  String pathImage = 'assets/img/carpincho.jpg';

  CardImage(this.pathImage);

  Widget build(BuildContext context){

    final card = Container(
      height: 350,
      width: 250,
      margin: EdgeInsets.only(
        top: 80,
        left: 20,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0,0.7)
          )
        ]
      ),
    );
    return Stack(
      alignment: Alignment(0.9,1.1),
      children: [
        card,
        FloatingActionButtonGreen()
      ],
    );
  }
}