import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main() => runApp(MyApp_5_1_4());

class MyApp_5_1_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigationBar示例',
      home: Scaffold(
        body: MyHomePage(),
      ),
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    Text('Index 0:信息'),
    Text('Index 1:通讯录'),
    Text('Index 2:发现'),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('BottomNavigationBar示例'),
    ),
    body: Center(
      child: _widgetOptions.elementAt(_selectedIndex),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('信息')),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('通讯录')),
        BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('发现')),
      ],
      currentIndex: _selectedIndex,
      fixedColor: Colors.deepPurple,
      onTap: (index){
        setState(() {
          _selectedIndex = index;
        });
      },
    ),
  );
}
