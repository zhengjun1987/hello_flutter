import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(TableDemo());

class TableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TableDemo',
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
        title: Text('TableDemo'),
      ),
      body: Center(
        child: Table(
          columnWidths: {
            0:FixedColumnWidth(100),
            1:FixedColumnWidth(40),
            2:FixedColumnWidth(80),
            3:FixedColumnWidth(80),
          },
          border: TableBorder.all(color: Colors.black38, width: 2, style: BorderStyle.solid),
          children: [
            TableRow(
                children: [
                  Text('姓名'),
                  Text('性别'),
                  Text('年龄'),
                  Text('身高'),
                ]
            ),
            TableRow(
                children: [
                  Text('张三'),
                  Text('男'),
                  Text('26'),
                  Text('172'),
                ]
            ),
            TableRow(
                children: [
                  Text('李四'),
                  Text('女'),
                  Text('28'),
                  Text('178'),
                ]
            ),
          ],
        ),
      ),
    );
  }
}
