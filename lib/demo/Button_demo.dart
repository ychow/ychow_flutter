import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.purple,  // 设置溅沫效果颜色
          textColor: Colors.green,
        ),
        FlatButton.icon(
          label: Text('Button'),
          icon: Icon(Icons.add),
          onPressed: () {},
          splashColor: Colors.purple,  // 设置溅沫效果颜色
          textColor: Colors.green,
        ),
      ],
    );
    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.purple,  // 设置溅沫效果颜色
          textColor: Colors.green,
          shape: StadiumBorder(),  // 设置按钮圆角
        ),
        SizedBox(width: 16.0),
        RaisedButton.icon(
          label: Text('Button'),
          icon: Icon(Icons.add),
          onPressed: () {},
          splashColor: Colors.purple,  // 设置溅沫效果颜色
          textColor: Colors.green,
          elevation: 16.0,
          // shape: BeveledRectangleBorder(),   // 直角按钮
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),  //  设置具体的圆角
          )
        ),
      ],
    );
    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.purple,  // 设置溅沫效果颜色
          textColor: Colors.green,
          borderSide: BorderSide(
            color: Colors.black,   // set border color
          ),
          highlightedBorderColor: Colors.green,  // set highlight splash color
          // shape: StadiumBorder(),  // 设置按钮圆角
        ),
        SizedBox(width: 16.0),
        OutlineButton.icon(
          label: Text('Button'),
          icon: Icon(Icons.add),
          onPressed: () {},
          splashColor: Colors.purple,  // 设置溅沫效果颜色
          textColor: Colors.green,
          // shape: BeveledRectangleBorder(),   // 直角按钮
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),  //  设置具体的圆角
          )
        ),
      ],
    );
    final Widget fixedWidthButtonDemo = Container(
      width: 130.0,
      child: OutlineButton(
        child: Text('Button'),
        onPressed: () {},
        splashColor: Colors.purple,  // 设置溅沫效果颜色
        textColor: Colors.green,
        borderSide: BorderSide(
          color: Colors.black,   // set border color
        ),
        highlightedBorderColor: Colors.green,  // set highlight splash color
        // shape: StadiumBorder(),  // 设置按钮圆角
      ),
    );
    final Widget expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.purple,  // 设置溅沫效果颜色
            textColor: Colors.green,
            borderSide: BorderSide(
              color: Colors.black,   // set border color
            ),
            highlightedBorderColor: Colors.green,  // set highlight splash color
            // shape: StadiumBorder(),  // 设置按钮圆角
          ),
        ),
        SizedBox(width: 16.0),
        Expanded(
          // flex: 1,   // default value is 1
          flex: 2,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.purple,  // 设置溅沫效果颜色
            textColor: Colors.green,
            borderSide: BorderSide(
              color: Colors.black,   // set border color
            ),
            highlightedBorderColor: Colors.green,  // set highlight splash color
            // shape: StadiumBorder(),  // 设置按钮圆角
          ),
        ),
      ],
    );
    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 10.0),  // set 间距
            ),
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
                splashColor: Colors.purple,  // 设置溅沫效果颜色
                textColor: Colors.green,
                borderSide: BorderSide(
                  color: Colors.black,   // set border color
                ),
                highlightedBorderColor: Colors.green,  // set highlight splash color
                // shape: StadiumBorder(),  // 设置按钮圆角
              ),
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
                splashColor: Colors.purple,  // 设置溅沫效果颜色
                textColor: Colors.green,
                borderSide: BorderSide(
                  color: Colors.black,   // set border color
                ),
                highlightedBorderColor: Colors.green,  // set highlight splash color
                // shape: StadiumBorder(),  // 设置按钮圆角
              ),
            ],
          )
        )
      ],
    );
    
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedWidthButtonDemo,
            expandedButton,
            buttonBarDemo,
          ],
        ),
      )
    );
  }
}
