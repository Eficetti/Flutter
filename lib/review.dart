import 'package:flutter/material.dart';
import 'iconContent.dart';


// ignore: must_be_immutable
class Review extends StatelessWidget{

  String img;
  String name;
  String details;
  String comment;
  int reviewCount;

  Review(this.img, this.name, this.details, this.comment, this.reviewCount);

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
        fontSize: 15,
      ),
    ),
  );

  final starBorder = IconContent(
    EdgeInsets.only(
      left: 10,
    ),
    Icons.star_border,
    Color(0xfff2c611),
    16
  );

  final halfStar = IconContent(
    EdgeInsets.only(
      left: 10,
    ),
    Icons.star_half,
    Color(0xfff2c611),
    16
  );

  final star = IconContent(
    EdgeInsets.only(
      left: 10,
    ),
    Icons.star,
    Color(0xfff2c611),
    16
  );

  final userInfo = Container(
    margin: EdgeInsets.only(
      left: 20,
    ),
    child: Text(
      details,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 13,
        color: Colors.black
      ),
    ),
  );
    

  final userComment = Container(
    margin: EdgeInsets.only(
      left: 20,
    ),
    child: Text(
      comment,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: 'Lato',
        fontSize: 12,
        fontWeight: FontWeight.w900,
        color: Colors.black
      ),
    ),
  );

  final userDetails = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      userName,
      userInfo,
      userComment,
    ],
  );

    return Row(
      children: [
        photo,
        userDetails,
        star,
        star,
        star,
        halfStar,
        starBorder,
      ],
    );
  }
}