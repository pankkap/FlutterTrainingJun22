// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  var _secureText = true;
  String? _nameError = null;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _passowrdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextField(
              maxLength: 20,
              controller: _nameController,
              decoration: InputDecoration(
                errorText: _nameError,
                labelText: "Name",
                hintText: "Enter your Name",
                labelStyle: TextStyle(fontSize: 24, color: Colors.red),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              maxLength: 10,
              decoration: InputDecoration(
                labelText: "Mobile",
                hintText: "Enter your Mobile No.",
                labelStyle: TextStyle(fontSize: 24, color: Colors.blue),
                border: UnderlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                  labelText: "Description",
                  hintText: "Enter your Address.",
                  labelStyle: TextStyle(fontSize: 24, color: Colors.blue),
                  border: InputBorder.none,
                  fillColor: Colors.black12,
                  filled: true),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your Password",
                labelStyle: TextStyle(fontSize: 24, color: Colors.blue),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _secureText = !_secureText;
                      });
                    },
                    icon: Icon(
                      _secureText ? Icons.remove_red_eye : Icons.security,
                      color: Colors.blue,
                      size: 30,
                    )),
              ),
              // keyboardType: TextInputType.emailAddress,
              obscureText: _secureText,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_nameController.text.length < 3)
                      _nameError = "Enter at least 3 character";
                    else
                      _nameError = null;
                  });

                  print("Name: " + _nameController.text);
                },
                child: Text("Submit"))
          ],
        ),
      )),
    );
  }
}
