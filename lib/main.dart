import 'package:filtering_textfiled/UserFilterDemo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Filter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: UserFilterDemo(),
    );
  }
}
