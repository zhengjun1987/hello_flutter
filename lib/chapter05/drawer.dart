import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';

main() => runApp(DrawerDemo());

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drawer组件示例'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              /*
              * UserAccountsDrawerHeader专门用于在抽屉组件中作为用户资料卡出现
              * */
              UserAccountsDrawerHeader(
                accountName: Text('性感拜登在线打牌'),
                accountEmail: Text('zhengjun1987@outlook.com'),
                currentAccountPicture: CircleAvatar(foregroundImage:NetworkImage('https://pic2.zhimg.com/v2-d0ec9431d81fc77a1747d406c8b2c0b3_im.jpg')),
                onDetailsPressed: () {},
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.color_lens),
                ),
                title: Text('个性装扮'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.photo),
                ),
                title: Text('我的相册'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.signal_cellular_alt),
                ),
                title: Text('免流量特权'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
