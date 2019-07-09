import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HttpClientPage();
//    return MaterialApp(
//      title: 'Hello Flutter',
//      theme: ThemeData(
//          brightness: Brightness.dark,
//          accentColor: Colors.cyan[600],
//          primaryColor: Colors.lightBlue[800]
//      ),
//      home: MaterialApp(
//      ),
//    );
  }
}

class HttpClientPage extends StatelessWidget {
  void getWeatherData() async {
    try {
      HttpClient httpClient = HttpClient();
      HttpClientRequest request = await httpClient.getUrl(
          Uri.parse('http://t.weather.sojson.com/api/weather/city/101030100'));
      var response = await request.close();
      var result = await response.transform(utf8.decoder).join();
      print(result);
      httpClient.close();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HttpClient请求",
      home: Scaffold(
        appBar: AppBar(title: Text("获取天气数据"),),
        body: Center(
          child: RaisedButton(onPressed: getWeatherData, child: Text("获取天气"),),
        ),
      ),
    );
  }

}

class HttpGetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Http请求",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Http请求"),
        ),
        body: Center(
          child: RaisedButton(onPressed: () {
            const url = 'http://httpbin.org/';
            print('$url');
            http.get(url).then((response) {
              print('状态：${response.statusCode} 正文：\n${response.body}');
            });
          }, child: Text("发起请求"),),
        ),
      ),
    );
  }

}

class ThirdPartyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "第三方库使用",
      home: Scaffold(
        appBar: AppBar(title: Text("第三方库使用"),),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              var s = "https://www.baidu.com";
              launch(s);
            },
            child: Text("打开百度"),
          ),
        ),
      ),
    );
  }

}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            color: Theme
                .of(context)
                .accentColor,
            child: Text('带有背景颜色的文本组件', style: Theme
                .of(context)
                .textTheme
                .title,),
          ),
        ),
      ),
      floatingActionButton: Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.grey),
          child: FloatingActionButton(
            highlightElevation: 15.0,
            onPressed: (() {
              print('FloatingActionButton.onPressed');
            }),
            child: Icon(Icons.computer),)),
    );
  }
}

class MyStatefulHomePage extends StatefulWidget {
  final String title;
  final myState = _MyState();

  MyStatefulHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return myState;
  }

}

class _MyState extends State<MyStatefulHomePage> {
  var _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("You have pushed the button this many times:",
              style: Theme
                  .of(context)
                  .textTheme
                  .title
                  .copyWith(color: Colors.black),),
            Text('$_count',
              style: Theme
                  .of(context)
                  .textTheme
                  .display1
                  .copyWith(color: Colors.black),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(Icons.add),
        tooltip: 'Increment',
      ),
    );
  }
}