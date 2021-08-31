import 'package:flutter/material.dart';
import 'floatingActionButton.dart';

// ignore: must_be_immutable
class CardImageProfile extends StatelessWidget{

  String pathImage = 'assets/img/carpincho.jpg';
  String titleImage = "Carpincho montañes";
  String descriptionImage = "le gusta tomar mates a la orilla de la laguna y si te postas bien te trae un caniche";
  String steps = "Steps 123,123,123"; 

  CardImageProfile(this.pathImage,this.titleImage,this.descriptionImage,this.steps);

  Widget build(BuildContext context){

    final title_card = Container(
      margin: EdgeInsets.only(
          top: 10,
          left: 20
      ),
      child: Text(
        titleImage,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            fontWeight: FontWeight.bold
        ),
      ),
    );

    final description_card = Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20
      ),
      child: Text(
        descriptionImage,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 10.0,
            color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final steps_card = Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20
      ),
      child: Text(
        steps,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(232, 166, 90, 1),
        ),
      ),
    );


    final card = Stack(
        children: [
          Container(
            width: 400,
            height: 200,
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20
            ),
            decoration: BoxDecoration(
                image:DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(pathImage)
                ),
                borderRadius: BorderRadius.all(Radius.circular(40)),
                shape: BoxShape.rectangle,
            ),
          ),
          Center(
            child: Container(
              width: 300,
              height: 100.0,
              margin: EdgeInsets.only(
                top: 170,
                left: 40,
                right: 40
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title_card,
                  description_card,
                  steps_card
                ],
              ),
            
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                shape: BoxShape.rectangle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15,
                  offset: Offset(0,7)
                  )
                ]
              ),
            ),
          )
        ],
       );

    return Stack(
      alignment: Alignment(0.6,1.1),
      children: [
        card,
        FloatingActionButtonGreen()
      ],
    );
  }
}