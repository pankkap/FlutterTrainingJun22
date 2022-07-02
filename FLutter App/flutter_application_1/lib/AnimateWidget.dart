import 'package:flutter/material.dart';
import 'package:flutter_application_1/AnimateScreen2.dart';

class AnimateWidget extends StatelessWidget {
  const AnimateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animate Widget"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: GestureDetector(
          child: Hero(
            tag: "imageAnimation",
            child: Image(
              image: AssetImage('images/pizza.png'),
              height: 120,
              width: 120,
            ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AnimateScreen2();
            }));
          },
        ),
      ),
    );
  }
}
