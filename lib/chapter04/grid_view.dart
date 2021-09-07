import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//
// main() {
//   runApp(
//       MyApp_4_5_4());
// }

class MyApp_4_5_4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var appName = '网格列表组件示例';
    return MaterialApp(
      title: appName,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: GridView.count(crossAxisCount: 3,
          primary: false,
          crossAxisSpacing: 30,
          padding: const EdgeInsets.all(20),
          children: [
            Text('第1行第1列'),
            Text('第1行第2列'),
            Text('第1行第3列'),
            Text('第2行第1列'),
            Text('第2行第2列'),
            Text('第2行第3列'),
            Text('第3行第1列'),
            Text('第3行第2列'),
            Text('第3行第3列'),
            Text('第4行第1列'),
            Text('第4行第2列'),
            Text('第4行第3列'),
            Text('第5行第1列'),
            Text('第5行第2列'),
            Text('第5行第3列'),
          ],
        ),
      ),
    );
  }
}
