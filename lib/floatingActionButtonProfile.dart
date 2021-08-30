import 'package:flutter/material.dart';

class FloatingActionButtonProfile extends StatefulWidget{
  @override

  State<StatefulWidget> createState(){
    return _FloatingActionButtonProfile();
  }
}

class _FloatingActionButtonProfile extends State<FloatingActionButtonProfile>{
  
  void onPressedFav(){
    setState(() {
    });
  }

 @override
  Widget build(BuildContext context){

    final bookmark = Container(
      margin: EdgeInsets.only(
        top: 200
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Colors.purple,
        mini: true,
        tooltip: 'Save',
        onPressed: onPressedFav,
        child: Icon(
          Icons.bookmark_border
        ),
      ),
    );

    final btnTV = Container(
      margin: EdgeInsets.only(
        top: 200
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Colors.purple,
        mini: true,
        tooltip: 'Save',
        onPressed: onPressedFav,
        child: Icon(
          Icons.tv
        ),
      ),
    );

    final btnAdd = Container(
      margin: EdgeInsets.only(
        top: 200
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Colors.purple,
        tooltip: 'Save',
        onPressed: onPressedFav,
        child: Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );

    final email = Container(
      margin: EdgeInsets.only(
        top: 200
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Colors.purple,
        mini: true,
        tooltip: 'Save',
        onPressed: onPressedFav,
        child: Icon(
          Icons.email
        ),
      ),
    );

    final people = Container(
      margin: EdgeInsets.only(
        top: 200
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Colors.purple,
        mini: true,
        tooltip: 'Save',
        onPressed: onPressedFav,
        child: Icon(
          Icons.people
        ),
      ),
    );

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bookmark,btnTV,btnAdd,email,people
          ],
        )
      ],
    );
  }
}