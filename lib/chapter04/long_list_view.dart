import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main() {
//   runApp(
//       MyApp_4_5_3(items: List<String>.generate(500, (index) => 'Item $index')));
// }

class MyApp_4_5_3 extends StatelessWidget {
  final List<String> items;

  const MyApp_4_5_3({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appName = '长列表组件示例';
    return MaterialApp(
      title: appName,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.pages),
                title: Text('${items[index]}'),
              );
            }),
      ),
    );
  }
}
