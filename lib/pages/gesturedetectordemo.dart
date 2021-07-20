import 'package:flutter/material.dart';

// 手势检测
class GestureDetectorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 一定要把被触摸的组件放在GestureDetector中
    return new GestureDetector(
      onTap: () {
        final snackBar = new SnackBar(content: new Text('你已按下'));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      // 添加容器接收动作
      child: new Container(
        padding: new EdgeInsets.all(12),
          decoration: new BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: new BorderRadius.circular(10),
          ),
        child: new Text('测试按钮'),
      ),
    );
  }
}
