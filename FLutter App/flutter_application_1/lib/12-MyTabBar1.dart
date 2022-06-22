import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/HomeScreen.dart';

class MyTabBar1 extends StatelessWidget {
  const MyTabBar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar Demo"),
          bottom: TabBar(
              labelColor: Colors.white,
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
        body: TabBarView(children: [
          Center(
            child: HomeScreen(),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "About Application",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
          Center(
            child: Text("Services Screen"),
          ),
          Center(
            child: Image(image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/6/6d/Windows_Settings_app_icon.png')),
          ),
        ]),
      ),
    );
  }
}
