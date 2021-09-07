import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() =>
    runApp(MaterialApp(
      home: CupertinoButtonDemo(),
    ));

class CupertinoButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'CupertinoButtonDemo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CupertinoButtonDemo'),
        ),
        body: Center(
          child: CupertinoButton(
            child: Text('CupertinoButton'),
            color: Colors.blue,
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}
