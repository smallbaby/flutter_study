import 'package:flutter/material.dart';

class RouteChangeFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面示例'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('查看商品详情'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RouteChangeSecondScreen()));
          },
        ),
      ),
    );
  }
}

class RouteChangeSecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面示例'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
