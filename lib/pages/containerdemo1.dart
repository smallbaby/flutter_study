import 'package:flutter/material.dart';

class ContainerDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget container = Container(
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // 上下左右边框宽度设置为10 颜色
                      border: Border.all(width: 10, color: Colors.blueGrey),
                      // 上线左右边框弧度设置为8.0
                      borderRadius:
                      const BorderRadius.all(const Radius.circular(8)),
                    ),
                    margin: const EdgeInsets.all(4),
                    child: Image.asset("images/1.png"),
                  )),
              Expanded(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // 上下左右边框宽度设置为10 颜色
                      border: Border.all(width: 10, color: Colors.blueGrey),
                      // 上线左右边框弧度设置为8.0
                      borderRadius:
                      const BorderRadius.all(const Radius.circular(8)),
                    ),
                    margin: const EdgeInsets.all(4),
                    child: Image.asset("images/2.png"),
                  )),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // 上下左右边框宽度设置为10 颜色
                      border: Border.all(width: 10, color: Colors.blueGrey),
                      // 上线左右边框弧度设置为8.0
                      borderRadius:
                      const BorderRadius.all(const Radius.circular(8)),
                    ),
                    margin: const EdgeInsets.all(4),
                    child: Image.asset("images/2.png"),
                  )),
              Expanded(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      // 上下左右边框宽度设置为10 颜色
                      border: Border.all(width: 10, color: Colors.blueGrey),
                      // 上线左右边框弧度设置为8.0
                      borderRadius:
                      const BorderRadius.all(const Radius.circular(8)),
                    ),
                    margin: const EdgeInsets.all(4),
                    child: Image.asset("images/3.png"),
                  )),
            ],
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Container 容器布局示例'),
      ),
      body: container,
    );
  }
}
