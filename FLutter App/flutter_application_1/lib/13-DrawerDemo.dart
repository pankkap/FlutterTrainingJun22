import 'package:flutter/material.dart';

import '10A-ListTileNavigation.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Demo"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Pankaj Kumar"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListTileNavigation(title: "pankaj ");
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Sachin Kumar"),
              subtitle: Text("Tester"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListTileNavigation(title: "Sachin Kumar");
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Manish Rana"),
              subtitle: Text("Front-End"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListTileNavigation(title: "Manish Rana");
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Surbhi"),
              subtitle: Text("Back-End"),
              trailing: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}
