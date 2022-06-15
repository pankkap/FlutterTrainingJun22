// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        // appBar: AppBar(title: Text("Widget Fundamentals")),
        body: SafeArea(
            child: ListView(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.deepOrangeAccent,
          margin: EdgeInsets.all(10),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 20,
              ),
              Image(
                image: NetworkImage(
                  'https://cdn.freebiesupply.com/logos/large/2x/android-logo-png-transparent.png',
                ),
                width: 100,
                height: 130,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Android OS",
                style: TextStyle(fontSize: 40, fontFamily: 'DancingScript'),
              ),
            ],
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.deepOrangeAccent,
          margin: EdgeInsets.all(10),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 20,
              ),
              Image(
                image: NetworkImage(
                  'https://www.pngfind.com/pngs/m/222-2226997_apple-iphone-clipart-picsart-png-apple-logo-bw.png',
                ),
                width: 100,
                height: 130,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Iphone OS",
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.deepOrangeAccent,
          margin: EdgeInsets.all(10),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 20,
              ),
              Image(
                image: NetworkImage(
                  'https://user-images.githubusercontent.com/51419598/152648731-567997ec-ac1c-4a9c-a816-a1fb1882abbe.png',
                ),
                width: 100,
                height: 130,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Flutter",
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.deepOrangeAccent,
          margin: EdgeInsets.all(10),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 20,
              ),
              Image(
                image: NetworkImage(
                  'https://cdn.freebiesupply.com/logos/large/2x/android-logo-png-transparent.png',
                ),
                width: 100,
                height: 130,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Android OS",
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.deepOrangeAccent,
          margin: EdgeInsets.all(10),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 20,
              ),
              Image(
                image: NetworkImage(
                  'https://cdn.freebiesupply.com/logos/large/2x/android-logo-png-transparent.png',
                ),
                width: 100,
                height: 130,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Android OS",
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.deepOrangeAccent,
          margin: EdgeInsets.all(10),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 20,
              ),
              Image(
                image: NetworkImage(
                  'https://cdn.freebiesupply.com/logos/large/2x/android-logo-png-transparent.png',
                ),
                width: 100,
                height: 130,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Android OS",
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.deepOrangeAccent,
          margin: EdgeInsets.all(10),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 20,
              ),
              Image(
                image: NetworkImage(
                  'https://cdn.freebiesupply.com/logos/large/2x/android-logo-png-transparent.png',
                ),
                width: 100,
                height: 130,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Android OS",
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.deepOrangeAccent,
          margin: EdgeInsets.all(10),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 20,
              ),
              Image(
                image: NetworkImage(
                  'https://cdn.freebiesupply.com/logos/large/2x/android-logo-png-transparent.png',
                ),
                width: 100,
                height: 130,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Android OS",
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
      ],
    ))),
  ));
}

// Image Widget
// 1. Netwrok Image: find address of Image on Interent
// 2. Asset Image: Image Resourse available inside Project 