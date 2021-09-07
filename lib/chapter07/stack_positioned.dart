import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(StackPositionedDemo());

class StackPositionedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StackPositionedDemo',
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
        title: Text('StackPositionedDemo'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.network(
                'https://pic1.zhimg.com/80/v2-0151c482ef349476d98e2b066bda0623_720w.jpg'),
            Positioned(top: 50, left: 50,child: Text('hi flutter',style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, fontFamily: 'serif',color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
