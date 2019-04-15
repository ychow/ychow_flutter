import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    elevation: 0.0,
    // backgroundColor: Colors.black87,
    // shape: BeveledRectangleBorder(
    //   borderRadius: BorderRadius.circular(30.0)
    // )
  );

  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
    icon: Icon(Icons.add),
    onPressed: () {},
    label: Text('Add'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,  // set floating button position
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 78.0
        ),
        shape: CircularNotchedRectangle(),  // set bottomAppbar 缺口
      )
    );
  }
}
