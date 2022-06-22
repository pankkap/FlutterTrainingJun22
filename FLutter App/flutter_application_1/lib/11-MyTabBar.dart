import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar Demo"),
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Container(
              child: TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Colors.red,
                  tabs: [
                    Tab(
                      text: "Home",
                    ),
                    Tab(
                      text: "About",
                    ),
                    Tab(
                      text: "Services",
                    ),
                    Tab(
                      child: Icon(Icons.settings),
                    ),
                  ]),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  Center(
                    child: Text("Home Screen"),
                  ),
                  Center(
                    child: Text("About Screen"),
                  ),
                  Center(
                    child: Text("Services Screen"),
                  ),
                  Center(
                    child: Text("Setting Screen"),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
