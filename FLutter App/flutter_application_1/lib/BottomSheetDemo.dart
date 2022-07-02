// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BottomSheet Demo"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: IconButton(
            icon: Icon(
              Icons.share,
              size: 40,
            ),
            onPressed: () {
              displayBottomSheet(context);
            },
          ),
        ));
  }

  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Wrap(
            children: [
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ListTile(
                    leading: Image(
                      image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/1022px-WhatsApp.svg.png',
                      ),
                      height: 40,
                    ),
                    title: Text("WhatsApp"),
                  ),
                  Divider(
                    height: 20,
                  ),
                  ListTile(
                    leading: Image(
                      image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/640px-Instagram_icon.png',
                      ),
                      height: 40,
                    ),
                    title: Text("Instagram"),
                  ),
                  Divider(
                    height: 20,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      size: 40,
                      color: Colors.blue,
                    ),
                    title: Text("Seeting"),
                  ),
                ],
              )
            ],
          );
        });
  }
}
