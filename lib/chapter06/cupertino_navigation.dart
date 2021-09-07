import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  home: CupertinoNavigationDemo(),
));

class CupertinoNavigationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CupertinoNavigationDemo',
      theme: ThemeData.light(),
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() {
    return _MyPageState();
  }
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.lightBackgroundGray,
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), title: Text('主页')),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble), title: Text('聊天')),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), title: Text('发现')),
          ],
        ),
        tabBuilder: (context, index) => CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return HomePage();
              case 1:
                return ChatPage();
              default:
                return HomePage();
            }
          },
        ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(
          '主页',
          style: Theme.of(context).textTheme.button,
        ),
      ),
      navigationBar: CupertinoNavigationBar(
        middle: Text('主页'),
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(
          '聊天',
          style: Theme.of(context).textTheme.button,
        ),
      ),
      navigationBar: CupertinoNavigationBar(
        middle: Text('聊天面板'),
        leading: Icon(CupertinoIcons.back),
        trailing: Icon(CupertinoIcons.add),
      ),
    );
  }
}
