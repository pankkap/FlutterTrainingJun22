import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stack Demo"),
        ),
        body: Stack(
          children: [
            Positioned(
              left: 10,
              right: 10,
              top: 150,
              child: Image(
                image: NetworkImage(
                    'https://d.newsweek.com/en/full/1989062/mars.jpg'),
              ),
            ),
            
            Positioned(
                child: Text(
                  "Mars",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                top: 250,
                left: 100)
          ],
        ));
  }
}
