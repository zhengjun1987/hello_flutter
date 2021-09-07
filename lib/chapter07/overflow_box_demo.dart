import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(OverflowBoxDemo());

class OverflowBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OverflowBoxDemo',
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
        title: Text('OverflowBoxDemo'),
      ),
      body: Container(
        color: Colors.green,
        width: 200,
        height: 200,
        padding: EdgeInsets.all(5),
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxWidth: 300,
          maxHeight: 500,
          child: Container(
            color: Colors.blueGrey,
            width: 400,
            height: 400,
          ),
        ),
      ),
    );
  }
}
