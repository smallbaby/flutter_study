import 'package:flutter/material.dart';

class LongListDemo extends StatelessWidget {
  final List<String> items = new List<String>.generate(500, (i) => "Item $i");
  final title = "长列表示例";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              // 返回列表项
              return ListTile(
                // 左侧图标
                leading: Icon(Icons.phone),
                // 文本内容
                title: Text("${items[index]}"),
              );
            }),
      ),
    );
  }
}
