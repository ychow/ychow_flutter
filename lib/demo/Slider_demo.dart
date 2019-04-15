import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _currentValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(
                  onChanged: (value) {
                    setState(() {
                      _currentValue = value;
                    });
                  },
                  value: _currentValue,
                  min: 0.0,
                  max: 10.0,
                  divisions: 10,  // 分割成多少分
                  label: '$_currentValue',
                  activeColor: Colors.purple,
                  inactiveColor: Colors.purple.withOpacity(0.3),
                ),
                SizedBox(height: 16.0),
                Text('SliderValue: $_currentValue'),
              ],
            )
          ],
        ),
      ),
    );
  }
}