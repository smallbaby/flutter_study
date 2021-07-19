import 'package:flutter/material.dart';
import 'package:zuiz_app_flutter/model/ItemView.dart';

class SelectedView extends StatelessWidget {
  final ItemView item;// = ItemView(title: "1", icon: Icons.directions_car);

  SelectedView({required Key key, required this.item}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(item.icon, size: 128),
            Text(item.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
