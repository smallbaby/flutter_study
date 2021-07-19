import 'package:flutter/material.dart';

enum ConferenceItem { AddMember, LockConference, ModifyLayout, TurnoffAll }

class PopupMenuSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopupMenuButton 组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('PopupMenuButton组件'),
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {},
            child: PopupMenuButton<ConferenceItem>(
              onSelected: (ConferenceItem result) {},
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<ConferenceItem>>[
                const PopupMenuItem<ConferenceItem>(
                  child: Text("添加成员"),
                  value: ConferenceItem.AddMember,
                ),
                const PopupMenuItem<ConferenceItem>(
                  child: Text("锁定会议"),
                  value: ConferenceItem.LockConference,
                ),
                const PopupMenuItem<ConferenceItem>(
                  child: Text("修改布局"),
                  value: ConferenceItem.ModifyLayout,
                ),
                const PopupMenuItem<ConferenceItem>(
                  child: Text("挂断所有"),
                  value: ConferenceItem.TurnoffAll,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
