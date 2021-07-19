import 'package:flutter/material.dart';

class DefaultTabControllerSample extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: '选项卡一',
    ),
    Tab(
      text: '选项卡二',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("AppBar标题"),
            bottom: TabBar(
              tabs: myTabs,
            ),
          ),
          body: TabBarView(
            children: myTabs.map((Tab tt) {
              return Center(child: Text("hello"));
            }).toList(),
          ),
        ),
      ),
    );
  }
}














