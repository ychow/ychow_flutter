import 'package:flutter/material.dart';

enum Action {
  OK,
  Cancel
}

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'Nothing';

  Future _openDialog() async{
    final choice = await showDialog(
      context: context,
      barrierDismissible: false,  // user must choose one!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog'),
          content: Text('Are you sure this?'),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context, Action.Cancel);
              },
            ),
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context, Action.OK);
              },
            ),
          ],
        );
      }
    );

    switch (choice) {
      case Action.OK:
        setState(() { _choice = 'Ok'; });
        break;
      case Action.Cancel:
        setState(() { _choice = 'Cancel'; });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialog'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('your choice is: $_choice'),
            SizedBox(height: 16.0),
            RaisedButton(
              onPressed: _openDialog,
              child: Text('AlertDialog'),
            ),
          ],
        ),
      ),
    );
  }
}