import 'package:flutter/material.dart';

class MenuDemo extends StatefulWidget {
  const MenuDemo({Key? key}) : super(key: key);

  @override
  State<MenuDemo> createState() => _MenuDemoState();
}

class _MenuDemoState extends State<MenuDemo> {
  var cities = ["Delhi", "Mumbai", "Kolkatta", "Chandigrh", "Banglore"];
  var firstCity = "Delhi";
  var choices = ["Inbox", "Sent Items", "Junk-mails", "SignOut", "Help"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Menus Demo"),
          actions: [
            IconButton(
                onPressed: () {
                  print("Helped Icon Clicked");
                },
                icon: Icon(Icons.help)),
            TextButton(
                onPressed: () {
                  print("Login Button Clicked");
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                )),
            PopupMenuButton(onSelected: (String? newItem) {
              print(newItem);
            }, itemBuilder: (BuildContext context) {
              return choices.map((String myChoice) {
                return PopupMenuItem(
                  child: Text(myChoice),
                  value: myChoice,
                );
              }).toList();
            })
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Dropdown Menu",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              ),
              DropdownButton(
                items: cities.map((String dropDownItems) {
                  return DropdownMenuItem(
                    child: Text(
                      dropDownItems,
                      style: TextStyle(
                          fontSize: 20,
                          color: (firstCity == dropDownItems)
                              ? Colors.red
                              : Colors.black),
                    ),
                    value: dropDownItems,
                  );
                }).toList(),
                onChanged: (String? newItem) {
                  setState(() {
                    firstCity = newItem!;
                  });
                },
                value: firstCity,
              )
            ],
          ),
        ),
      ),
    );
  }
}

