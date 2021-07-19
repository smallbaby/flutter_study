import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
  final title = "基础列表测试";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Alarm"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Alarm"),
            ),
          ],
        ),
      ),
    );
  }
}
