import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[
      ListTile(
        title: Text(
          '北京市昌平区回龙观西大街38号',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
        ),
        subtitle: Text('昌平饭局'),
        // 左侧图标
        leading: Icon(
          Icons.fastfood,
          color: Colors.orange,
        ),
      ),
      ListTile(
        title: Text(
          '北京市昌平区回龙观镇南店北路',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
        ),
        subtitle: Text('汽车之家'),
        // 左侧图标
        leading: Icon(
          Icons.airplay,
          color: Colors.blue,
        ),
      ),
      ListTile(
        title: Text(
          '北京市西城区新街口东街31号',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
        ),
        subtitle: Text('北京积水潭医院(新街口院区)'),
        // 左侧图标
        leading: Icon(
          Icons.local_hospital,
          color: Colors.green,
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView test'),
      ),
      body: Center(
        child: ListView(
          children: list,
        ),
      ),
    );
  }
}
