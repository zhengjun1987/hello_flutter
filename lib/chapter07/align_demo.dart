import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(AlignDemo());

class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlignDemo',
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
        title: Text('AlignDemo'),
      ),
      body: Stack(
        children: [
          Align(alignment: FractionalOffset(0,0),child: Image.asset('images/1.jpeg',width: 120,height: 120,),),
          Align(alignment: FractionalOffset(1,0),child: Image.asset('images/2.jpeg',width: 120,height: 120,),),
          Align(alignment: FractionalOffset.center,child: Image.asset('images/3.jpeg',width: 120,height: 120,),),
          Align(alignment: FractionalOffset.bottomLeft,child: Image.asset('images/6.png',width: 120,height: 120,),),
          Align(alignment: FractionalOffset.bottomRight,child: Image.asset('images/5.png',width: 120,height: 120,),),
        ],
      ),
    );
  }
}
