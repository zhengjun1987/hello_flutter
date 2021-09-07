import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(home: AlertDialogDemo(),));

class AlertDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlertDialogDemo',
      home: MaterialedHome(),
    );
  }
}

class MaterialedHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
      ),
      body: Center(
        child: TextButton(
          child: Text('触发Dialogue'),
          onPressed: () {
            print('TextButton.onPressed');
            showDialog<SingleChildScrollView>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text('对话框标题'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: [
                        Text('是否要删除？？？？'),
                        Text('一旦删除后无法恢复'),
                        Text('是否要删除？？？？'),
                        Text('一旦删除后无法恢复'),
                        Text('是否要删除？？？？'),
                        Text('一旦删除后无法恢复'),
                        Text('是否要删除？？？？'),
                        Text('一旦删除后无法恢复'),
                        Text('是否要删除？？？？'),
                        Text('一旦删除后无法恢复'),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          print("e = $context");
                        },
                        child: Text('确定')),
                    TextButton(onPressed: null, child: Text('取消')),
                  ],
                ));
          },
        ),
      ),
    );
  }
}
