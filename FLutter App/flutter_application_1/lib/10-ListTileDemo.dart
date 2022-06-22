import 'package:flutter/material.dart';
import 'package:flutter_application_1/10A-ListTileNavigation.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile Demo"),
      ),
      body: ListView(
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
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Rahul Sinha"),
            subtitle: Text("Fullstack"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Pankaj Soni"),
            subtitle: Text("Trainer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Sumit Kumar"),
            subtitle: Text("Developer & Tester"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Pankaj Kumar"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Pankaj Kumar"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Pankaj Kumar"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
