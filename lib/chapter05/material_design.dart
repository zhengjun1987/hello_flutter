import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main() => runApp(MyApp_5_1());

class MyApp_5_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp示例',
      home: MyHomePage(),
      routes: {
        '/first': (BuildContext context) => MyHomePage(),
        '/second': (BuildContext context) => SecondPage(),
      },
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: [],
        bottom: null,
        elevation: 4,
        centerTitle: true,
        title: Text('Scaffold脚手架示例'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            '这是第二页',
            style: TextStyle(fontSize: 28),
          ),
          onPressed: () => Navigator.pushNamed(context, '/first'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      persistentFooterButtons: [],//固定在屏幕下方的按钮栏
      drawer: null,//侧边栏
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [],
        onTap: (index) {},
      ),//底部导航按钮栏
      backgroundColor: null,//背景色
      resizeToAvoidBottomInset: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('MaterialApp示例'),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search), tooltip: '搜索',),
        IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo_outlined), tooltip: '拍照',),
        IconButton(onPressed: (){}, icon: Icon(Icons.add), tooltip: '添加',)
      ],
    ),
    body: Center(
      child: RaisedButton(
        child: Text(
          '主页',
          style: TextStyle(fontSize: 28),
        ),
        onPressed: () => Navigator.pushNamed(context, '/second'),
      ),
    ),
  );
}
