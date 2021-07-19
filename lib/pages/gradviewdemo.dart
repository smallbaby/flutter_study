import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Container> _buildGridTitleList(int count) {
      return List<Container>.generate(
          count,
          (int index) => Container(
                child: Image.asset("images/${index + 1}.png"),
              ));
    }

    Widget buildGrid() {
      return GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _buildGridTitleList(6),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('GridViewTest'),
      ),
      body: Center(
        child: buildGrid(),
      ),
    );
  }
}
