import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

// void main() {
//   runApp(MyAppHttpClientRequest());
// }

class MyAppHttpClientRequest extends StatelessWidget {
  void getWeatherData() async {
    try {
      HttpClient httpClient = HttpClient();
      print(httpClient);
      HttpClientRequest httpClientRequest = await httpClient.getUrl(
          Uri(
              scheme: 'https',
              host: 't.weather.sojson.com',
              queryParameters: {
                "_id":'26',
                "city_code":"101030100",
                "city_name":"天津"
              }
          ));
      HttpClientResponse httpClientResponse = await httpClientRequest.close();
      var result = httpClientResponse.transform(utf8.decoder).join();
      print(result);
      httpClient.close();
    } catch (e) {
      print("请求失败：$e");
    }
  }

  @override
  Widget build(BuildContext context) {
    var appName = 'HttpClient请求';
    return MaterialApp(
      title: appName,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('获取天气数据'),
            onPressed: getWeatherData,
          ),
        ),
      ),
    );
  }
}