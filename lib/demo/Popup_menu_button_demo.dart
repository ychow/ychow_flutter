import 'package:flutter/material.dart';

class PopUpMenuButtonDemo extends StatefulWidget {
  @override
  _PopUpMenuButtonDemoState createState() => _PopUpMenuButtonDemoState();
}

class _PopUpMenuButtonDemoState extends State<PopUpMenuButtonDemo> {
  String _currentValue = 'Home';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopUpMenuButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_currentValue),
            PopupMenuButton(
              onSelected: (value) {
                print(value);
                setState(() {
                  _currentValue = value;
                });
              },
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  value: 'Home',
                  child: Text('Home')
                ),
                PopupMenuItem(
                  value: 'Setting',
                  child: Text('Setting')
                ),
                PopupMenuItem(
                  value: 'My',
                  child: Text('Favorite')
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}