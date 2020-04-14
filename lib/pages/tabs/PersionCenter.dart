import 'package:flutter/material.dart';

class PersionCenterPage extends StatefulWidget {
  PersionCenterPage({Key key}) : super(key: key);

  _PersionCenterPageState createState() => _PersionCenterPageState();
}

class _PersionCenterPageState extends State<PersionCenterPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("我是一个文本"),
        ),
         ListTile(
          title: Text("我是一个文本"),
        ),
         ListTile(
          title: Text("我是一个文本"),
        ),
         ListTile(
          title: Text("我是一个文本"),
        )
      ],
    );
  }
}