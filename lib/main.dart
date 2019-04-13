import 'package:flutter/material.dart';
import 'demo/ListView_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //hide right top cornor debug
      theme: ThemeData(
        primarySwatch: Colors.yellow  // set theme color
      ),
      home: Home()
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('ychow'),
        elevation: 0.0, // set appBar shadow, defaultValue is 4.0
      ),
      body: ListViewDemo()
    );
  }
}