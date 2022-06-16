// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ButtonsDemo extends StatelessWidget {
  const ButtonsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Buttons Demo"),
        ),
        body: Center(
          child: Container(
            child: Column(children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                  onPressed: () {
                    print("Elevated Button CLicked");
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 24),
                  )),
              TextButton(
                  onPressed: () {
                    print("TExt Button CLicked");
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 24),
                  )),
              OutlinedButton(
                  onPressed: () {
                    print("Outlined Button CLicked");
                  },
                  child: Text(
                    "SignUp",
                    style: TextStyle(fontSize: 24),
                  )),
              IconButton(
                  onPressed: () {
                    print("Icon Button CLicked");
                  },
                  icon: Icon(
                    Icons.alarm,
                    size: 50,
                    color: Colors.blue,
                  ))
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("FLoating Action Button Clicked");
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
