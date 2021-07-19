import 'package:flutter/material.dart';

// GridView.count 通过单行展示个数
// GridView.extent 最大宽度
class GridVeiwDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "网格测试",
      home: Scaffold(
        appBar: AppBar(
          title: Text("网格"),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisCount: 3,
          crossAxisSpacing: 30,
          children: <Widget>[
            const Text("第一行第1列"),
            const Text("第一行第2列"),
            const Text("第一行第3列"),
            const Text("第二行第1列"),
            const Text("第二行第2列"),
            const Text("第二行第3列"),
            const Text("第三行第1列"),
            const Text("第三行第2列"),
            const Text("第三行第3列"),
            const Text("第四行第1列"),
            const Text("第四行第2列"),
            const Text("第四行第3列"),
            const Text("第五行第1列"),
            const Text("第五行第2列"),
            const Text("第五行第3列"),
          ],
        ),
      ),
    );
  }
}
