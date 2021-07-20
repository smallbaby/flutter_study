import 'package:flutter/material.dart';

// 滑动删除示例
class DismissibleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> items =
        new List<String>.generate(30, (index) => "列表项 ${index + 1}");
    return Scaffold(
      appBar: AppBar(
        title: Text('滑动删除case'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            child: ListTile(
              title: Text('$item'),
            ),
            // 被删除回调
            onDismissed: (direction) {
              items.removeAt(index);
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text('$item被删除了')));
            },
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
