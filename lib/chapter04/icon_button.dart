import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main() => runApp(MyApp_4_4_2());

class MyApp_4_4_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appName = '图标按钮组件示例';
    return MaterialApp(
      title: appName,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: Center(
          child: IconButton(
            icon: Icon(Icons.volume_up,size: 48,),
            tooltip: '按下操作',
            onPressed: (){
              print('按下操作');
            },
          ),
        ),
      ),
    );
  }
}
