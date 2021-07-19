import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cupertino sample',
      home: Scaffold(
        appBar: AppBar(
          title: Text('cupertionActivityIndicator'),
        ),
        body: Center(
          child: CupertinoAlertDialog(
            title: Text('提示'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('是否要删除?'),
                  Text('一旦删除数据不可恢复!'),
                ],
              ),
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text('确定'),
                onPressed: () {},
              ),
              CupertinoDialogAction(
                child: Text('取消'),
                onPressed: () {},
              )
            ],
            // radius: 60, // 值越大，加载的图形越大
          ),
        ),
      ),
    );
  }
}
