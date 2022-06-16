import 'package:flutter/material.dart';
import 'package:flutter_application_1/7-ButtonsDemo.dart';

// import 'ButtonsDemo.dart';
// import 'MyApp.dart';

void main() {
  // runApp(MyApp());
  // runApp(ButtonsDemo());
  runApp(Test());
}

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int x = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  x = 2;
                });
                if (x > 10) {
                  print("Hello, this is an If Statement");
                } else {
                  print("Hello this is Else Statement");
                }
              },
              child: Text("Button"),
            ),
          ),
        ),
      ),
    );
  }
}
