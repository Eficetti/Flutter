import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'cardImageList.dart';


class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        GradientBack('404 caniches not found',300,),
        CardImageList(),
      ],
    );
  }
}