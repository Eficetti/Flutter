import 'package:flutter/material.dart';
import 'user.dart';

class UserList extends StatelessWidget{
  @override

  Widget build(BuildContext context){

    final userList = Column(
      children: [
        for (var i = 0; i < 5; i++)
        User('3 years experience','A carpincho','assets/img/carpincho.jpg' , 0xFF000000),
        for (var i = 0; i < 5; i++)
        User('2 years experience','Not carpincho', 'assets/img/people.jpg', 0xFFF44336),

      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userList
      ],
    );
  } 
}