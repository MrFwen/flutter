import 'package:flutter/material.dart';

import 'pages/Tabs.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(primaryColor: Colors.grey[50]),
      home:Tabs()
    );
  }
}