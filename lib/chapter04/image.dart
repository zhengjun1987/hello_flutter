import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main() => runApp(MyApp_4_2());

class MyApp_4_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Demo',
      theme: ThemeData.dark(),
      home: Center(
        child: Image.network('https://img0.baidu.com/it/u=653666270,723497068&fm=26&fmt=auto&gp=0.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}