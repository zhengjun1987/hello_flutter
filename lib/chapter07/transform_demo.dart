import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(TransformDemo());

class TransformDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TransformDemo',
      theme: ThemeData.light(),
      home: LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TransformDemo'),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(3.14/2),
            child: Container(
              padding: EdgeInsets.all(8),
              color: Color(0xFFE8581C),
              child: Text('Transform矩阵转换'),
            ),
          ),
        ),
      ),
    );
  }
}