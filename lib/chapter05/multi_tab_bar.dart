import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';

// main() => runApp(TabBarSample());

class ItemView {
  final String title;
  final IconData iconData;

  ItemView(this.title, this.iconData);
}

List<ItemView> items = [
  ItemView('自驾', Icons.directions_car),
  ItemView('自行车', Icons.directions_bike),
  ItemView('轮船', Icons.directions_boat),
  ItemView('公交车', Icons.directions_bus),
  ItemView('轨道交通', Icons.directions_railway),
  ItemView('步行', Icons.directions_walk),
];

class TabBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: items.length,
        child: Scaffold(
          appBar: AppBar(title: Text('TabBar选项卡示例'),
            bottom: TabBar(
              isScrollable: true,
              tabs: items.map((e) => Tab(
                text: e.title,
                icon: Icon(e.iconData),
              )).toList(),
            ),
          ),
          body: TabBarView(
            children: items.map((e) => Padding(padding: const EdgeInsets.all(16),
              child: SelectedView(itemView: e),
            )).toList(),
          ),
        ),
      ),
    );
  }
}

class SelectedView extends StatelessWidget{
  final ItemView itemView;

  const SelectedView({Key? key, required this.itemView}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(itemView.iconData, size: 128, color: Theme.of(context).textTheme.headline4!.color,),
            Text(itemView.title, style: Theme.of(context).textTheme.headline4,)
          ],
        ),
      ),
    );
  }
}