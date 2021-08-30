import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientBack extends StatelessWidget{

  String title = 'Popular';
  double altura;
  GradientBack(this.title,this.altura);

  @override
  Widget build(BuildContext context){
    return Container(
      height: altura,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0),
          end: FractionalOffset(1, 0.6),
            stops:[0, 0.3],
            tileMode: TileMode.clamp 
        )
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Lato',
          fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment(-0.9, -0.6),
      
    );
  }
}