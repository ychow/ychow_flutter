import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  void _onTapHandler (int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // if bottomNavigationBarItem length >3, need set the type!!!
      type: BottomNavigationBarType.fixed,
      // 当前默认选中
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text('Explore')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text('History')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('List')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('My')
        ),
      ]
    );
  }
}