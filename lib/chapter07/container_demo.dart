import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(ContainerDemo());

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ContainerDemo',
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
        title: Text('ContainerDemo'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(width: 10, color: Colors.blueGrey),
                        borderRadius:
                        const BorderRadius.all(const Radius.circular(8))),
                    margin: EdgeInsets.all(4),
                    child: Image.asset('images/1.jpeg'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(width: 10, color: Colors.blueGrey),
                        borderRadius:
                        const BorderRadius.all(const Radius.circular(8))),
                    margin: EdgeInsets.all(4),
                    child: Image.asset('images/2.jpeg'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(width: 10, color: Colors.blueGrey),
                        borderRadius:
                        const BorderRadius.all(const Radius.circular(8))),
                    margin: EdgeInsets.all(4),
                    child: Image.asset('images/3.jpeg'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(width: 10, color: Colors.blueGrey),
                        borderRadius:
                        const BorderRadius.all(const Radius.circular(8))),
                    margin: EdgeInsets.all(4),
                    child: Image.asset('images/2.jpeg'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}