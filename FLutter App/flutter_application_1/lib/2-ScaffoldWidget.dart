// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text("My First Custom Flutter App"),
      backgroundColor: Colors.blue,
      centerTitle: true,
    ),
    body: Center(
      child: // creating Text Widget
          Text(
        "Welcome to Flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 24, color: Colors.blue),
      ),
    ),
  )));
}


// Widget: UI Component which is going to display content on the Mobile Screen. 
// Inside Flutter Everything is considered as Widget (Class)
// Hierarchy of Nested Widgets known as Widget Tree