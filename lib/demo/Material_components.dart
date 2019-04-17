import 'package:flutter/material.dart';
import './Button_demo.dart';
import './Floating_Action_button_demo.dart';
import './Popup_menu_button_demo.dart';
import './Form_demo.dart';
import './Checkbox_demo.dart';
import './Radio_demo.dart';
import './Slider_demo.dart';
import './Datetime_demo.dart';
import './simple_dialog_demo.dart';
import './Alert_dialog_demo.dart';
import './Bottom_sheet_demo.dart';
import './Snack_bar_demo.dart';
import './Expansion_panel_demo.dart';
import './Chip_demo.dart';
import './Data_table.dart';
import './Card_demo.dart';
import './Stepper_demo.dart';

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
          ListItem(title: 'Stepper Demo', page: StepperDemo() ),
          ListItem(title: 'Card Demo', page: CardDemo() ),
          ListItem(title: 'Data Table Demo', page: DataTableDemo() ),
          ListItem(title: 'Chip Demo', page: ChipDemo() ),
          ListItem(title: 'ExpansionPanel Demo', page: ExpansionPanelDemo() ),
          ListItem(title: 'SnackBar Demo', page: SnackBarDemo() ),
          ListItem(title: 'BootomSheet Demo', page: BottomSheetDemo() ),
          ListItem(title: 'AlertDialog Demo', page: AlertDialogDemo() ),
          ListItem(title: 'SimpleDiaolog Demo', page: SimpleDialogDemo() ),
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