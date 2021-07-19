import 'package:flutter/material.dart';

class HorizontalListDemo extends StatelessWidget {
  final title = "水平列表示例";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20), // 顶部外边距
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160,
                color: Colors.amber,
              ),
              Container(
                width: 160,
                color: Colors.green,
                child: Column(
                  children: <Widget>[
                    Text(
                      "水平",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                    ),
                    Text(
                      "列表",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                    Icon(Icons.list),
                  ],
                ),
              ),
              Container(
                width: 160,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                width: 160,
                color: Colors.black,
              ),
              Container(
                width: 160,
                color: Colors.pinkAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
