import 'package:flutter/material.dart';
import "package:url_launcher/url_launcher.dart";
import 'package:flutter/foundation.dart' as http;
import 'package:http/http.dart';
import 'package:zuiz_app_flutter/pages/ContainerApp.dart';
import 'package:zuiz_app_flutter/pages/ImageDemo.dart';
import 'package:zuiz_app_flutter/pages/ListDemo.dart';
import 'package:zuiz_app_flutter/pages/cardSample.dart';
import 'package:zuiz_app_flutter/pages/cupertinoSample.dart';
import 'package:zuiz_app_flutter/pages/cupertinobuttondemo.dart';
import 'package:zuiz_app_flutter/pages/cupertinotabbar.dart';
import 'package:zuiz_app_flutter/pages/drawerDemo.dart';
import 'package:zuiz_app_flutter/pages/horizontallist.dart';
import 'dart:io';
import 'package:zuiz_app_flutter/pages/gridViewDemo.dart';
import 'dart:convert';
import 'package:zuiz_app_flutter/pages/loginpage.dart';
import 'package:zuiz_app_flutter/pages/popupmenu.dart';
import 'package:zuiz_app_flutter/pages/snackbar.dart';
import 'package:zuiz_app_flutter/pages/tabControllerSample.dart';
import 'package:zuiz_app_flutter/pages/tabbardemo.dart';
import 'package:zuiz_app_flutter/pages/textfielddemo.dart';

void main() {
  runApp(
//    MaterialApp(
//      title: "image demo",
//      home: ImageDemo()
//    )
    //     new HorizontalListDemo());
    // new DefaultTabControllerSample());
    // new PopupMenuSample());
    //new SnackBarSample());
    // new TextFieldSample());
    //new CardSample());
    //new CupertinoSample());
      new CupertinoTabBarSample());
  //); //  MaterialApp(
//    title: 'card....',
//    home: CardSample()
//  ));
//      MaterialApp(
//    title: '抽屉测试',
//    home: DrawerSample(),
//  ));
}

class LayoutDemo extends StatelessWidget {
  int _selectedIndex = 1;
  final _widgetOptions = [
    Text('Index 0: 信息'),
    Text('Index 1: 通讯录'),
    Text('Index 2: 发现'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Scaffold 脚手架组件示例"),
        actions: <Widget>[
          IconButton(onPressed: () {}, tooltip: '搜索', icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, tooltip: '添加', icon: Icon(Icons.add))
        ],
      ),
      body: Center(
        child: Text("Scaffold"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('信息')),
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('通讯录')),
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('发现')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: '增加',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class RouteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      title: "MaterialApp 示例",
      routes: {
        '/first': (BuildContext context) => FirstPage(),
        '/second': (BuildContext context) => SecondPage(),
      },
      initialRoute: '/first',
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material app.."),
      ),
      body: Center(
        child: Text(
          "主页",
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("这是第一页"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/second");
          },
          child: Text(
            "这是第一页",
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("这是第二页"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/first");
          },
          child: Text(
            "这是第二页",
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final appName = "自定义主题";
  var name = "jason";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        brightness: Brightness.light, // 整体主题的亮度
        primaryColor: Colors.lightGreen[600],
        accentColor: Colors.orange[600],
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome Flutter App."),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              // 指定URL
              const url = 'http://www.baidu.com';
              // launch(url);
              HttpClient hc = HttpClient();
            },
            child: Text("Open Baidu"),
          ),
        ),
      ),
    );
  }
}
