// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: Text("Widget Fundamentals")),
        body: Center(
          child: Container(
            child: Text(
              "This is Stateless Widget",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
