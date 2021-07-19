import 'package:flutter/material.dart';

class AlignContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align对齐布局示例'),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            // 对齐属性
            alignment: FractionalOffset(0, 0),
            child: Image.asset("images/1.png", width: 128, height: 128,),
          ),
          // 右上角
          Align(
            alignment: FractionalOffset(1, 0),
            child: Image.asset("images/2.png", width: 128, height: 128,),
          ),
          Align(
            alignment: FractionalOffset.center,
            child: Image.asset("images/3.png", width: 128, height: 128,),
          ),
          // 左下角
          Align(
            alignment: FractionalOffset.bottomLeft,
            child: Image.asset("images/4.png", width: 128, height: 128,),
          ),
          // 右下角
          Align(
            alignment: FractionalOffset.bottomRight,
            child: Image.asset("images/5.png", width: 128, height: 128,),
          ),
        ],
      ),
    );
  }
}
