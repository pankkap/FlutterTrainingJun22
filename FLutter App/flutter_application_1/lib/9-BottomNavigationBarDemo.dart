import 'package:flutter/material.dart';
import 'package:flutter_application_1/9A-SamplePages.dart';

class BottomNavigationDemo extends StatefulWidget {
  const BottomNavigationDemo({Key? key}) : super(key: key);

  @override
  State<BottomNavigationDemo> createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {
  int _selectedItem = 0;
  var _pages = [
    HomePage(),
    AboutPage(),
    ServicePage(),
    AboutPage(),
    ServicePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation")),
      body: Center(
        child: Container(
          child: _pages[_selectedItem],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_rounded), label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.design_services), label: "Services"),
          BottomNavigationBarItem(
              icon: Icon(Icons.design_services), label: "Services"),
          BottomNavigationBarItem(
              icon: Icon(Icons.design_services), label: "Services"),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        fixedColor: Colors.white,
        currentIndex: _selectedItem,
        onTap: (setValue) {
          setState(() {
            _selectedItem = setValue;
          });
        },
      ),
    );
  }
}
