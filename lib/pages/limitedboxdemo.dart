import 'package:flutter/material.dart';

class LimitedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LimitedBox限定宽高布局'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            color: Colors.grey,
            width: 100,
          ),
          LimitedBox(
            maxWidth: 150,
            child: Container(
              color: Colors.lightGreen,
              width: 250,
            ),
          )
        ],
      ),
    );
  }
}
