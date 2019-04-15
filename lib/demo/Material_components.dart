import 'package:flutter/material.dart';
import './Button_demo.dart';
import './Floating_Action_button_demo.dart';
import './Popup_menu_button_demo.dart';
import './Form_demo.dart';
import './Checkbox_demo.dart';
import './Radio_demo.dart';
import './Slider_demo.dart';
import './Datetime_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'Datetime Demo', page: DateTimeDemo() ),
          ListItem(title: 'Slider Demo', page: SliderDemo() ),
          ListItem(title: 'Radio Demo', page: RadioDemo() ),
          ListItem(title: 'Checkbox Demo', page: CheckboxDemo() ),
          ListItem(title: 'Form Demo', page: FormDemo() ),
          ListItem(title: 'PopUpMenuButton Demo', page: PopUpMenuButtonDemo() ),
          ListItem(title: 'Button Demo', page: ButtonDemo() ),
          ListItem(title: 'FloatingActionButton', page: FloatingActionButtonDemo() ),
        ],
      )
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page
          )
        );
      },
    );
  }
}