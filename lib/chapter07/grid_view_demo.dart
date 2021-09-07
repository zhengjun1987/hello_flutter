import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(GridViewDemo());

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridViewDemo',
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
        title: Text('GridViewDemo'),
      ),
      body: Center(
        child: GridView.extent(
          maxCrossAxisExtent: 150,
          padding: const EdgeInsets.all(4),
          mainAxisSpacing: 12,
          crossAxisSpacing: 4,
          children: List.generate(
              6,
                  (index) => Container(
                child: Image.asset(
                    'images/${index + 1}' + (index > 2 ? '.png' : '.jpeg')),
              )),
        ),
      ),
    );
  }
}
