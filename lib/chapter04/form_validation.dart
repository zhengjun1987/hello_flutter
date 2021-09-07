import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  late String username;
  late String password;
  void login(){
    var loginform = globalKey.currentState;
    if(loginform!.validate()){
      loginform.save();
      print("username = $username, password = $password");
    }
  }
  @override
  Widget build(BuildContext context) {
    var appName = '表单项组件示例';
    return MaterialApp(
      title: appName,
      home: Scaffold(
          appBar: AppBar(title: Text(appName),),
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: globalKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(labelText: '请输入用户名'),
                        onSaved: (value){ username = value!; },
                        onFieldSubmitted: (value){ },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: '请输入密码'),
                        obscureText: true,
                        validator: (value) => value!.length < 6? "密码长度不够6位":null,
                        onSaved: (value){ password = value!; },
                        onFieldSubmitted: (value){ },
                      ),
                      SizedBox(
                        width: 340,
                        height: 42,
                        child: RaisedButton(
                          onPressed: login,
                          child: Text('登录', style: TextStyle(fontSize: 18),),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}

// main() => runApp(LoginPage());
