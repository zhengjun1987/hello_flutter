import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main() => runApp(MyApp_4_5_1());

class MyApp_4_5_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appName = '基础列表组件示例';
    return MaterialApp(
      title: appName,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: ListView(
          children: [
            ListTile(leading: Icon(Icons.alarm), title: Text('Alarm'),),
            ListTile(leading: Icon(Icons.add_a_photo), title: Text('Add A Photo'),),
            ListTile(leading: Icon(Icons.phone_android), title: Text('Phone'),),
            ListTile(leading: Icon(Icons.zoom_out_map), title: Text('Zoom'),),
            ListTile(leading: Icon(Icons.airplay), title: Text('AirPlay'),),
            ListTile(leading: Icon(Icons.battery_full), title: Text('Battery Full'),),
            ListTile(leading: Icon(Icons.calculate), title: Text('Calculate'),),
            ListTile(leading: Icon(Icons.directions_run), title: Text('Run'),),
            ListTile(leading: Icon(Icons.eco), title: Text('Eco'),),
            ListTile(leading: Icon(Icons.face_retouching_natural), title: Text('Facial'),),
            ListTile(leading: Icon(Icons.g_translate_outlined), title: Text('Translate'),),
            ListTile(leading: Icon(Icons.hdr_enhanced_select), title: Text('HDR'),),
            ListTile(leading: Icon(Icons.insights), title: Text('Insights'),),
          ],
        ),
      ),
    );
  }
}
