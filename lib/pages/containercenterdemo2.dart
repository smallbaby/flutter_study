import 'package:flutter/material.dart';

class CenterContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center居中布局示例'),
      ),
      body: Center(
        child: Text(
          'Hello Flutter',
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}
