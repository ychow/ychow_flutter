import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // if we need show user account, we can use UserAccountsDrawerHeader widget
          UserAccountsDrawerHeader(
            accountName: Text('Ychow Xiao'),
            accountEmail: Text('yuanzhouxiao@foxmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://avatars1.githubusercontent.com/u/6530996?s=460&v=4'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage('https://ww4.sinaimg.cn/bmiddle/5657d033ly1fn23zif587j20b408c76j.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400].withOpacity(0.6),
                  BlendMode.hardLight
                )
              )
            )
          ),

          // DrawerHeader(
          //   child: Text('Drawer header'),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100]
          //   )
          // ),
          ListTile(
            title: Text('Messages', textAlign: TextAlign.right,),
            trailing: Icon(Icons.message, size: 22.0, color: Colors.black12),
            // hide the drawer
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite, size: 22.0, color: Colors.black12),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings, size: 22.0, color: Colors.black12),
          ),
        ],
      ),
    );
  }
}