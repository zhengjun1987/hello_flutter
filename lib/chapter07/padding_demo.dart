import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(PaddingDemo());

class PaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PaddingDemo',
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
        title: Text('PaddingDemo'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          padding: EdgeInsets.all(60),
          decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.blue, width: 8),),
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.blue, width: 8),),
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
