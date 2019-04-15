import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _currentCheckboxA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              onChanged: (value) {
                setState(() {
                  _currentCheckboxA = value;
                });
              },
              value: _currentCheckboxA,
              title: Text('Check box Item A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.bookmark),
              selected: _currentCheckboxA,  // set text and secondary color same as checkbox
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Checkbox(
                //   onChanged: (value) {
                //     setState(() {
                //       _currentCheckboxA = value;
                //     });
                //   },
                //   value: _currentCheckboxA,
                //   activeColor: Colors.purple,
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}