import 'package:flutter/material.dart';
import 'homeCarpincho.dart';
import 'search.dart';
import 'profile.dart';
import 'notifications.dart';
import 'location.dart';

class NavBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _NavBar();
  }
}

class _NavBar extends State<NavBar>{
  int indexTap = 0;
  final List<Widget>  widgetChildren =  [
    HomeCarpinchos(),
    Search(),
    Notifications(),
    Location(),
    Profile()
    ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: widgetChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: ('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: ('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ('')
              )
          ],
        ),
      ),
    );
  }
}