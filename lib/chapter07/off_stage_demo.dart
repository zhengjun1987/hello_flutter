import 'package:flutter/material.dart';

main() => runApp(OffstageDemo());

class OffstageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OffstageDemo',
      theme: ThemeData.light(),
      home: LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<LayoutDemo> {
  bool offstage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OffstageDemo'),
      ),
      body: Center(
        /*
        * 类似于Android组件的属性visible
        * */
        child: Offstage(
          offstage: offstage,
          child: Text('我出来啦！',style: TextStyle(fontSize: 36, color: Colors.red),),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.flip),
        tooltip: '显示隐藏',
        onPressed: (){
          setState(() {
            offstage = !offstage;
            print("offstage = $offstage");
          });
        },
      ),
    );
  }
}
