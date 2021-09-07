import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main() => runApp(DefaultTabControllerSample());

class DefaultTabControllerSample extends StatelessWidget {
  final List<Tab> myTabs = [
    Tab(text: '选项卡一',),
    Tab(text: '选项卡二',),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: myTabs,
            ),
          ),
          body: TabBarView(
            children: myTabs.map((tab) => Center(child: Text(tab.text!),)).toList(),
          ),
        ),
      ),
    );
  }
}