import 'package:flutter/material.dart';

class WrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap按宽高自动换行布局'),
      ),
      body: Wrap(
        spacing: 8,
        runSpacing: 4,
        children: <Widget>[
          Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightGreen.shade800,
                child: Text(
                  '西门',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              label: Text('西门吹雪')),
          Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightGreen.shade800,
                child: Text(
                  '司空',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              label: Text('司空摘星')),
          Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlue.shade800,
                child: Text(
                  '一郎',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              label: Text('萧十一郎')),
        ],
      ),
    );
  }
}
