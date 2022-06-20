// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Screen2.dart';

class Screen1 extends StatelessWidget {
  String title = "";
  Screen1({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text(
              "Goto Screen-2",
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Screen2(title: 'About Phone');
              }));
            },
          ),
        ),
      ),
    );
  }
}
