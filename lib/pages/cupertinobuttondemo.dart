import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class w extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CupertinoButton组件',
      home: Scaffold(
        appBar: AppBar(
          title: Text('cupertinobutton示例'),
        ),
        body: Center(
          child: CupertinoButton(
            child: Text('Cupertino Button'),
            color: Colors.blue,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
