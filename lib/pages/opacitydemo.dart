import 'package:flutter/material.dart';

// 透明度
class OpacityDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity不透明度'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.1,
          child: Container(
            width: 250,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Text(
              '不透明度为0.3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
