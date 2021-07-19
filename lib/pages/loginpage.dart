import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  late String userName;
  late String password;

  void login() {
    var loginForm = loginKey.currentState;
    // validate
    if (loginForm!.validate()) {
      loginForm.save();
      print("userName:" + userName + " password:" + password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Form 表单"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: loginKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "请输入用户名",
                      ),
                      onSaved: (value) {
                        userName = value!;
                      },
                      onFieldSubmitted: (value) {},
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "请输入密码",
                      ),
                      obscureText: true,
                      validator: (value) {
                        return value!.length < 6 ? "密码长度不够6位" : null;
                      },
                      onSaved: (value) {
                        password = value!;
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 340,
              height: 42,
              child: RaisedButton(
                onPressed: login,
                child: Text(
                  "登录",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
