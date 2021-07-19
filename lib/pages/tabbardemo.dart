import 'package:flutter/material.dart';
import 'package:zuiz_app_flutter/model/ItemView.dart';
import 'package:zuiz_app_flutter/model/SelectedView.dart';

const List<ItemView> items = const <ItemView>[
  const ItemView(title: '自驾', icon: Icons.directions_car),
  const ItemView(title: '自行车', icon: Icons.directions_bike),
  const ItemView(title: '轮船', icon: Icons.directions_boat),
  const ItemView(title: '公交车', icon: Icons.directions_bus),
  const ItemView(title: '火车', icon: Icons.directions_railway),
  const ItemView(title: '步行', icon: Icons.directions_walk),
];

class TabBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tab Bar 选项卡示例"),
            bottom: TabBar(
              isScrollable: true,
              tabs: items.map((ItemView item) {
                return Tab(text: item.title, icon: Icon(item.icon));
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: items.map((ItemView item) {
              return Padding(
                padding: const EdgeInsets.all(16),

              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
