import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() =>
    runApp(MaterialApp(
      home: CardViewDemo(),
    ));

class CardViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'CardViewDemo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CardViewDemo'),
        ),
        body: Center(
          child: SizedBox(
            height: 152,
            child: Card(
              child: Column(
                children: [
                  ListTile(leading: Icon(Icons.home, color: Colors.lightBlue,),title: Text('深圳市南山区深南大道35号',style: TextStyle(fontWeight: FontWeight.w300),),subtitle: Text('创想科技游戏公司'),),
                  Divider(),
                  ListTile(leading: Icon(Icons.school, color: Colors.lightBlue,),title: Text('深圳市罗湖区滨海大道32号',style: TextStyle(fontWeight: FontWeight.w300),),subtitle: Text('三清培训机构'),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
