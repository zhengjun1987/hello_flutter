import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main() => runApp(MyApp_4_3());

class MyApp_4_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '文本组件',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('文本组件'),
        ),
        body: Column(
          children: [
            Text(
              '红色＋黑色删除线＋25号',
              style: TextStyle(
                color: Colors.red,
                decoration: TextDecoration.lineThrough,
                decorationColor: Color(0xff000000),
                fontSize: 25,
              ),
            ),
            Text(
              '橙色＋下划线＋24号',
              style: TextStyle(
                color: Colors.orange,
                decoration: TextDecoration.underline,
                fontSize: 24,
              ),
            ),
            Text(
              '虚线上划线＋倾斜＋23号',
              style: TextStyle(
                decoration: TextDecoration.overline,
                decorationStyle: TextDecorationStyle.dashed,
                fontStyle: FontStyle.italic,
                fontSize: 23,
              ),
            ),
            Text(
              '加粗＋24号',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                letterSpacing: 6,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
