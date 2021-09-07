import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main() => runApp(MyApp_4_4_1());

class MyApp_4_4_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appName = '图标组件示例';
    return MaterialApp(
      title: appName,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: Icon(Icons.phone,
          color: Colors.green[500],
          size: 80,
        ),
      ),
    );
  }
}
