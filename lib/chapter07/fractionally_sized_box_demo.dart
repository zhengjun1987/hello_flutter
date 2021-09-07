import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(FractionallySizedBoxDemo());

class FractionallySizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FractionallySizedBoxDemo',
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
        title: Text('FractionallySizedBoxDemo'),
      ),
      body: Container(
        width: 400,
        height: 400,
        color: Colors.blueGrey,
        child: FractionallySizedBox(
          alignment: Alignment.center,
          widthFactor: 0.5,
          heightFactor: 0.5,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
