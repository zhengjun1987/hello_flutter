import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() =>
    runApp(MaterialApp(
      home: CupertinoAlertDialogDemo(),
    ));

class CupertinoAlertDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'CupertinoAlertDialogDemo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CupertinoAlertDialogDemo'),
        ),
        body: Center(
          child: CupertinoAlertDialog(
            title: Text('提示'),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text('是否删除？'),
                  Text('一旦删除后无法恢复'),
                ],
              ),
            ),
            actions: [
              CupertinoDialogAction(child: Text('确定'),onPressed: (){},),
              // CupertinoDialogAction(child: Text('更多信息', style: TextStyle(color: Colors.red),),onPressed: (){},),
              CupertinoDialogAction(child: Text('取消'),onPressed: (){},),
            ],
          ),
        ),
      ),
    );
  }
}
