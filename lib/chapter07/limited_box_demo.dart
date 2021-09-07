import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(LimitedBoxDemo());

class LimitedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LimitedBoxDemo',
      theme: ThemeData.dark(),
      home: LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LimitedBoxDemo'),
      ),
      body: Row(
        children: [
          Container(
            width: 100,
            color: Colors.green,
          ),
          LimitedBox(
            maxWidth: 500,
            child: Container(
              color: Colors.lightGreen,
              width: 250,
            ),
          )
        ],
      ),
    );
  }
}
