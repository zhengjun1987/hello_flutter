import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';

main() => runApp(SimpleDialogDemo());

class SimpleDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SimpleDialogDemo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SimpleDialogDemo'),
        ),
        body: Center(
          child: SimpleDialog(
            title: Text('对话框标题'),
            children: [
              SimpleDialogOption(child: Text('第一行信息'),onPressed: (){},),
              SimpleDialogOption(child: Text('第二行信息'),onPressed: (){},),
              SimpleDialogOption(child: Text('第三行信息'),onPressed: (){},),
            ],
          ),
        ),
      ),
    );
  }
}
