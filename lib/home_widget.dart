import 'package:flutter/material.dart';
import 'placeholder_widget.dart';


class Home extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeWidget(),
    MessagesWidget(),
    ProfileWidget(),
    AddWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SLOCERIES'),
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.green[900],
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            backgroundColor: Colors.green[900],
            title: Text('Messages'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Colors.green[900],
            title: Text('Profile'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.add),
            backgroundColor: Colors.green[900],
            title: Text('Add Trip'),
          ),
        ],
      ),
      
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}