import 'package:flutter/material.dart';
import 'review.dart';

class RewievList extends StatelessWidget{
  @override

  Widget build(BuildContext context){

    final reviewList = Column(
      children: [
        for (var i = 0; i < 5; i++)
        Review('assets/img/people.jpg','Not a carpincho :c', '1 review 5 photos', 'ta bueno ',3)
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        reviewList
      ],
    );
  } 
}