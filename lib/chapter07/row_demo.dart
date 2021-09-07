import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(RowDemo());

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RowDemo',
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
        title: Text('RowDemo'),
      ),
      body: Row(
        children: [
          Text('左侧文本',textAlign: TextAlign.center,),
          Text('中间文本',textAlign: TextAlign.center,),
          Expanded(child: FittedBox(
            fit: BoxFit.contain,
            child: FlutterLogo(),
          ))
        ],
      ),
    );
  }
}
