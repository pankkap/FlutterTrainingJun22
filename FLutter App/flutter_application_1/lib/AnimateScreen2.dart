import 'package:flutter/material.dart';

class AnimateScreen2 extends StatelessWidget {
  const AnimateScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animate Screen 2"),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          child: GestureDetector(
            child: Hero(
              tag: "imageAnimation",
              child: Image(
                image: AssetImage('images/pizza.png'),
                height: 400,
                width: 400,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
