import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

main() => runApp(MaterialApp(home: SnackbarDemo(),));

class SnackbarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackbarDemo',
      home: MaterialedHome(),
    );
  }
}

class MaterialedHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackbarDemo'),
      ),
      body: Center(
        child: TextButton(
          child: Text('SnackbarDemo'),
          onPressed: () { },
        ),
      ),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            Scaffold.of(context).showSnackBar(SnackBar(content: Text('显示SnackBar'),));
          },
        ),
      ),
    );
  }
}
