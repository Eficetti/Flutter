import 'package:flutter/material.dart';
import 'cardProfile.dart';

class CardProfileList extends StatelessWidget{
  @override
  Widget build(BuildContext context){

   return Container(
     margin: EdgeInsets.only(
       top: 250
     ),
     child: ListView(
       padding: EdgeInsets.all(15),
       scrollDirection: Axis.vertical,
       children: [
         CardImageProfile('assets/img/carpincho.jpg',"Carpincho montañes","le gusta tomar mates a la orilla de la laguna y si te postas bien te trae un caniche","Steps 123,123,123"),
         CardImageProfile('assets/img/carpincho2.jpg',"Carpincho montañes","le gusta tomar mates a la orilla de la laguna y si te postas bien te trae un caniche","Steps 123,123,123"),
         CardImageProfile('assets/img/carpincho3.jpg',"Carpincho montañes","le gusta tomar mates a la orilla de la laguna y si te postas bien te trae un caniche","Steps 123,123,123"),
         CardImageProfile('assets/img/carpincho4.jpg',"Carpincho montañes","le gusta tomar mates a la orilla de la laguna y si te postas bien te trae un caniche","Steps 123,123,123")
       ],
     ),
   );
  }
}