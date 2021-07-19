import 'package:flutter/material.dart';

class FittedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox缩放布局'),
      ),
      body: Container(
        color: Colors.grey,
        width: 250,
        height: 250,
        child: FittedBox(
          // 宽高等比填充
          fit: BoxFit.contain,
          alignment: Alignment.topLeft,
          child: Container(
            color: Colors.deepOrange,
            child: Text('缩放布局'),
          ),
        ),
      ),
    );
  }
}
