import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(CenterDemo());

class CenterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CenterDemo',
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
        title: Text('CenterDemo'),
      ),
      body: Center(
        child: Text('Hello Flutter', style: TextStyle(fontSize: 36),),
      ),
    );
  }
}
