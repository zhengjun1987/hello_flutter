import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main() => runApp(MyApp_4_5_2());

class MyApp_4_5_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appName = '水平列表组件示例';
    return MaterialApp(
      title: appName,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 160,
                color: Colors.lightBlue,
              ),
              Container(
                width: 160,
                color: Colors.amber,
              ),
              Container(
                width: 160,
                color: Colors.green,
                child: Column(
                  children: [
                    Text(
                      '水平',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                    ),
                    Text(
                      '列表',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                    ),
                    Icon(Icons.list),
                  ],
                ),
              ),
              Container(
                width: 160,
                color: Colors.black,
              ),
              Container(
                width: 160,
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
