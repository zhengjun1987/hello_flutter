import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() =>
    runApp(MaterialApp(
      home: CupertinoActivityIndicatorDemo(),
    ));

class CupertinoActivityIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'CupertinoActivityIndicatorDemo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CupertinoActivityIndicatorDemo'),
        ),
        body: Center(
          child: CupertinoActivityIndicator(
            radius: 20,
          ),
        ),
      ),
    );
  }
}
