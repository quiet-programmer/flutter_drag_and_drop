import 'package:drag_app/screens/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drag and Drop App",
      home: Home(),
    );
  }
}