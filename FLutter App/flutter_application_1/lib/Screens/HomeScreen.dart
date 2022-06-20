import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'S0');
              },
              child: Text("Screen 0"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'S1');
              },
              child: Text("Screen 1"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'S2');
              },
              child: Text("Screen 2"),
            ),
          ],
        ),
      ),
    );
  }
}
