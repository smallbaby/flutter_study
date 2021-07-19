import 'package:flutter/material.dart';

class SnackBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'snackBar示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('snackBar示例'),
        ),
        body: Center(
          child: Text(
            'snackBar',
            style: TextStyle(fontSize: 28),
          ),
        ),
        floatingActionButton: Builder(
          builder: (BuildContext context) {
            return FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('显示SnackBar'),
                ));
              },
              shape: CircleBorder(),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
