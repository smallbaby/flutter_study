import 'package:flutter/material.dart';

class NestedContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding填充布局示例'),
      ),
      body: Center(
        // 容器：外框
        child: Container(
          width: 300,
          height: 300,
          // 容器内边距上下左右设置60
          padding: EdgeInsets.all(60),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.green,
              width: 8,
            ),
          ),
          // 容器: 内框
          child: Container(
            width: 200,
            height: 200,
            // 边框
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.blue,
                  width: 8,
                )),
            // add logo
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
