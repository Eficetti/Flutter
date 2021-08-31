import 'package:flutter/material.dart';
import 'user.dart';
import 'floatingActionButtonProfile.dart';
import 'gradient_back.dart';
import 'cardProfileList.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Stack(
      children:[
        GradientBack('Profile',350),
        (User('Tucarpinchito@gmail.com','carpincho','assets/img/carpincho.jpg')),
        FloatingActionButtonProfile(),
        CardProfileList()
      ]
    );
  }
}