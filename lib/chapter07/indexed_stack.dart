import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(IndexedStackDemo());

class IndexedStackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IndexedStackDemo',
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
        title: Text('IndexedStackDemo'),
      ),
      body: Center(
        child: IndexedStack(
          index: 0,
          alignment: FractionalOffset(0.2, 0.2),
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/1.jpeg'),
              radius: 150,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black38),
              child: Text(
                '姬霓太美',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
