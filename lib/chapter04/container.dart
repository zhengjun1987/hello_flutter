import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main() => runApp(MyApp_4_1());

class MyApp_4_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '容器组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('容器组件示例'),
        ),
        body: Center(
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 8.0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Text('Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28.0),
            ),
          ),
        ),
      ),
    );
  }
}