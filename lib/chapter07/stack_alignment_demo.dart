import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(StackAlignmentDemo());

class StackAlignmentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StackAlignmentDemo',
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
        title: Text('StackAlignmentDemo'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/5.png'),
              radius: 150,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black38
              ),
              child: Text('姬霓太美',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
