import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() =>
    runApp(MaterialApp(
      title: '按下处理Demo',
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('按下处理Demo'),),
      body: Center(
        child: Builder(
          builder: (context) =>
              GestureDetector(
                onTap: () {
                  Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text('你已经按下！')));
                },
                onVerticalDragEnd: (value) {
                  print("value = $value");
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme
                        .of(context)
                        .buttonColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text('测试按钮'),
                ),
              ),
        ),
      ),
    );
  }
}