// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/10-ListTileDemo.dart';
import 'package:flutter_application_1/11-MyTabBar.dart';
import 'package:flutter_application_1/12-MyTabBar1.dart';
import 'package:flutter_application_1/13-DrawerDemo.dart';
import 'package:flutter_application_1/15-Selectable.dart';
import 'package:flutter_application_1/9-BottomNavigationBarDemo.dart';
import 'package:flutter_application_1/SI_Calculator.dart';
import 'package:flutter_application_1/Screens/HomeScreen.dart';
import 'package:flutter_application_1/Screens/Screen1.dart';
import 'package:flutter_application_1/Screens/Screen2.dart';

import '14-DataTableDemo.dart';
import '16-TextWidgetsDemo.dart';
import 'PizzaApp.dart';
import 'SI1.dart';
import 'Screens/Screen0.dart';

void main() {
  runApp(
    MaterialApp(
      // home: HomeScreen(),
      // home: BottomNavigationDemo(),
      // home: MyTabBar(),
      // home: MyTabBar1(),
      // home: SelectableDemo(),
      // home: ListTileDemo(),
      // home: DrawerDemo(),
      // home: DataTableDemo(),
      // home: TextFieldDemo(),
      // home: SI_Calculator(),
      // home: PizzaApp(),
      home: sicalci(),

      routes: {
        'S0': (context) => Screen0(title: "Settings"),
        'S1': (context) => Screen1(
              title: 'Gallery',
            ),
        'S2': (context) => Screen2(title: 'About Phone'),
      },
    ),
  );
}
