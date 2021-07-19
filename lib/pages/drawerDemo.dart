import 'package:flutter/material.dart';

class DrawerSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("我的主页"),
      ),
      body: Center(
        child: Text(
          "Floating action button示例",
          style: TextStyle(fontSize: 28),
        ),
      ),
      floatingActionButton: Builder(
        builder: (BuildContext context) {
          return FloatingActionButton(
            child: const Icon(Icons.add),
            tooltip: '请点击FloatingActionButton',
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            elevation: 7.0,
            highlightElevation: 14,
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text("点击了FloatingActionButton"),
              ));
            },
            mini: false,
            shape: CircleBorder(),
            isExtended: false,
          );
        }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("孤独の皮蛋"),
              accountEmail: new Text("3288328654@qq.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage("assets/images/1.png"),
              ),
              onDetailsPressed: () {},
              otherAccountsPictures: <Widget>[
                new Container(
                  child: Image.asset("images/code.jpeg"),
                ),
              ],
            ),
            ListTile(
              leading: new CircleAvatar(
                child: Icon(Icons.color_lens),
              ),
              title: Text("个性装扮"),
            ),
            ListTile(
              leading: new CircleAvatar(
                child: Icon(Icons.photo),
              ),
              title: Text("我的相册"),
            ),
            ListTile(
              leading: new CircleAvatar(
                child: Icon(Icons.wifi_calling),
              ),
              title: Text("免流量特权"),
            ),
          ],
        ),
      ),
    );
  }
}
