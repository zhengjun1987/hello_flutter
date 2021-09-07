import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() =>
    runApp(MaterialApp(
      home: TextFieldDemo(),
    ));

class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();
    textEditingController.addListener(() {
      print("textEditingController.text = ${textEditingController.text}");
    });

    return MaterialApp(
      title: 'TextFieldDemo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextFieldDemo'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller:textEditingController,
              maxLength: 30,
              maxLines: 1,
              autocorrect: true,
              autofocus: true,
              obscureText: false,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26.0,color: Colors.green),
              onChanged: (text){
                print("文本内容onChanged $text");
              },
              onSubmitted: (text){
                print("文本内容onSubmitted $text");
              },
              enabled: true,
              cursorHeight: 30,
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  helperText: '用户名',
                  prefixIcon: Icon(Icons.person),
                  suffixText: '用户名'
              ),
            ),
          ),
        ),
      ),
    );
  }
}
