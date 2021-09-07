import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(ListViewDemo());

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListViewDemo',
      theme: ThemeData.dark(),
      home: LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewDemo'),
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(title: Text('广州市黄埔大道建中路店',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),), subtitle: Text('广州市黄埔区黄埔大道建中路3号'),leading: Icon(Icons.fastfood),),
            ListTile(title: Text('广州市白云区机场路白云机场店',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),), subtitle: Text('广州市白云区机场路T3航站楼'),leading: Icon(Icons.airplay),),
            ListTile(title: Text('广州市中山大道中山大学附属医院',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),), subtitle: Text('广州市中山大道45号'),leading: Icon(Icons.local_hospital),),
            ListTile(title: Text('广州市天河区太平洋数码城',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),), subtitle: Text('广州市天河区岗顶太平洋数码城'),leading: Icon(Icons.computer),),
          ],
        ),
      ),
    );
  }
}
