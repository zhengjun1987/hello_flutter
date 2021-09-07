import 'package:flutter/material.dart';

main() => runApp(WrapDemo());

class WrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WrapDemo',
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
        title: Text('WrapDemo'),
      ),
      body: Wrap(
        spacing: 8,
        runSpacing: 4,
        children: [
          Chip(
            label: Text('西门吹雪'),
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: Text(
                '西门',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
          Chip(
            label: Text('东方不败'),
            avatar: CircleAvatar(
              backgroundColor: Colors.orange.shade800,
              child: Text(
                '东方',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
          Chip(
            label: Text('独孤九剑'),
            avatar: CircleAvatar(
              backgroundColor: Colors.lightBlue.shade800,
              child: Text(
                '独孤',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
          Chip(
            label: Text('令狐冲'),
            avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade800,
              child: Text(
                '令狐',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
          Chip(
            label: Text('王语嫣'),
            avatar: CircleAvatar(
              backgroundColor: Colors.amber.shade800,
              child: Text(
                '王',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
          Chip(
            label: Text('欧阳锋'),
            avatar: CircleAvatar(
              backgroundColor: Colors.cyan.shade800,
              child: Text(
                '欧阳',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
          Chip(
            label: Text('慕容复'),
            avatar: CircleAvatar(
              backgroundColor: Colors.purple.shade800,
              child: Text(
                '慕容',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
