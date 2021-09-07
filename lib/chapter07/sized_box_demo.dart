import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(SizedBoxDemo());

class SizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SizedBoxDemo',
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
        title: Text('SizedBoxDemo'),
      ),
      body: SizedBox(
        width: 200,
        height: 300,
        child: Card(
          child: Text('SizedBox', style: TextStyle(fontSize: 36),),
        ),
      ),
    );
  }
}
