import 'package:flutter/material.dart';
class ContainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "容器组件示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("示例"),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              border: new Border.all(
                color: Colors.grey,
                width: 8,
              ),
              borderRadius: const BorderRadius.all(const Radius.circular(8)), // 边框弧度
            ),
            child: Text(
              "Flutter",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
      ),
    );
  }
  
}