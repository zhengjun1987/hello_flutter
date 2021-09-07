import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main() => runApp(MyApp_4_4_3());

class MyApp_4_4_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appName = '凸起按钮组件示例';
    return MaterialApp(
      title: appName,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('RaisedButton组件'),
            onPressed: (){
              print('按下操作');
            },
          ),
        ),
      ),
    );
  }
}
