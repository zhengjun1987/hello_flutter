import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';

main() => runApp(FloatingActionButtonDemo());

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FloatingActionButtonDemo',
      home: Scaffold(
        appBar: AppBar(title: Text('FloatingActionButtonDemo'),),
        body: Center(
          child: Text('FloatingActionButtonDemo', style: TextStyle(fontSize: 29),),
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            child: Icon(Icons.add),
            tooltip: "请点击",
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            /*
            * FloatingActionButton相对于父节点的Z坐标
            * */
            elevation: 7,
            highlightElevation: 14.0,
            /*
            * 被禁用时候的Elevation
            * */
            disabledElevation: 10.0,
            onPressed: (){
              Scaffold.of(context).showSnackBar(SnackBar(content: Text('你点击了FloatingActionButton')));
            },
            /*
            * 默认为false时高度为56像素
            * 值为true时高度为40像素
            * */
            mini: false,
            shape: CircleBorder(),
            isExtended: false,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}