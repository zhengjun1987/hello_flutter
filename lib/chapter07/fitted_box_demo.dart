import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(FittedBoxDemo());

class FittedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FittedBoxDemo',
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
        title: Text('FittedBoxDemo'),
      ),
      body: Container(
        color: Colors.grey,
        width: 250,
        height: 250,
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topLeft,
          child: Container(
            color: Colors.deepOrange,
            child: Text('缩放布局'),
          ),
        ),
      ),
    );
  }
}
