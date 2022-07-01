// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/10-ListTileDemo.dart';
import 'package:flutter_application_1/11-MyTabBar.dart';
import 'package:flutter_application_1/12-MyTabBar1.dart';
import 'package:flutter_application_1/13-DrawerDemo.dart';
import 'package:flutter_application_1/15-Selectable.dart';
import 'package:flutter_application_1/9-BottomNavigationBarDemo.dart';
import 'package:flutter_application_1/AnimateScreen2.dart';
import 'package:flutter_application_1/SI_Calculator.dart';
import 'package:flutter_application_1/Screens/HomeScreen.dart';
import 'package:flutter_application_1/Screens/Screen1.dart';
import 'package:flutter_application_1/Screens/Screen2.dart';

import '14-DataTableDemo.dart';
import '16-TextWidgetsDemo.dart';
import 'AnimateWidget.dart';
import 'BottomSheetDemo.dart';
import 'PizzaApp.dart';
import 'SI1.dart';
import 'Screens/Screen0.dart';
import 'StackDemo.dart';
import 'WebViewDemo.dart';
import 'flutterCrud.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      // home: HomeScreen(),
      // home: BottomNavigationDemo(),
      // home: MyTabBar(),
      // home: MyTabBar1(),
      // home: DrawerDemo(),
      // home: ListTileDemo(),
      // home: DataTableDemo(),
      // home: SelectableDemo(),
      // home: TextFieldDemo(),
      // home: sicalci(),
      // home: PizzaApp(),
      // Day-23
      // home: AnimateWidget(),
      // home: WebViewDemo(),
      // home: BottomSheetDemo(),
      // home: StackDemo(),
      home: FlutterCrud(),

      routes: {
        'S0': (context) => Screen0(title: "Settings"),
        'S1': (context) => Screen1(
              title: 'Gallery',
            ),
        'S2': (context) => Screen2(title: 'Payment'),
      },
    ),
  );
}
