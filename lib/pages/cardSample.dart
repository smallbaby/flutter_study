import 'package:flutter/material.dart';

// stl
class CardSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = SizedBox(
      height: 250,
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                '北京市昌平区',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              subtitle: Text('xx有限公司'), // 子标题
              // 左侧图标
              leading: Icon(
                Icons.home,
                color: Colors.lightBlue,
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                '北京市海淀区中国电子大厦',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              subtitle: Text('xx培训机构'),
              leading: Icon(
                Icons.school,
                color: Colors.lightBlue,
              ),
            ),
            Divider()
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('card 布局示例'),
      ),
      body: Center(
        child: card,
      ),
    );
  }
}
