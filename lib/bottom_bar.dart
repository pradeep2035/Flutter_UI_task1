import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset("assets/Home.png",width:22 ,height: 22,),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/learn.png",width:22 ,height: 22,),
          label: 'Learn',
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/hub.png", width: 22, height: 22),
          label: 'Hub',
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/chat_bottom.png", width: 22, height: 22),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/Profile.png", width: 22, height: 22),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true, 
      showUnselectedLabels: true,
     
    );
  }
}