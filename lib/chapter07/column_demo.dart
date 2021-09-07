import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(ColumnDemo());

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ColumnDemo',
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
        title: Text('ColumnDemo'),
      ),
      body: Column(
        children: [
          Text('Flutter'),
          Text('垂直布局'),
          Expanded(child: FittedBox(
            fit: BoxFit.contain,
            child: FlutterLogo(),
          ))
        ],
      ),
    );
  }
}
