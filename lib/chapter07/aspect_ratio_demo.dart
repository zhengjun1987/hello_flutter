import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(AspectRatioDemo());

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AspectRatioDemo',
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
        title: Text('AspectRatioDemo'),
      ),
      body: Container(
        width: 400,
        child: AspectRatio(
          /*
          * The aspect ratio is expressed as a ratio of width to height.
          * aspectRatio代表固定的宽高比
          * */
          aspectRatio: 16/9,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
