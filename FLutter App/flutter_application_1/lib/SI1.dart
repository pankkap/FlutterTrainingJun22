// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_init_to_null, prefer_final_fields, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: sicalci(),
  ));
}

class sicalci extends StatefulWidget {
  @override
  const sicalci({Key? key}) : super(key: key);
  State<sicalci> createState() => _sicalciState();
}

class _sicalciState extends State<sicalci> {
  var _check = false;
  String? _pError = null;
  String? _rError = null;
  String? _tError = null;
  var t = 0;
  var si;

  TextEditingController _pController = TextEditingController();
  TextEditingController _rController = TextEditingController();
  TextEditingController _tController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("SI Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(children: [
          Image.asset('images/mone.png'),
          SizedBox(
            height: 15,
          ),
          TextField(
            controller: _pController,
            decoration: InputDecoration(
                errorText: _pError,
                labelText: "Principle",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: _rController,
            decoration: InputDecoration(
                errorText: _rError,
                labelText: "Rate",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: _tController,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
                errorText: _tError,
                labelText: "Term",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Checkbox(
                  value: _check,
                  onChanged: (bool? value) {
                    setState(() {
                      _check = value ?? false;
                    });
                  },
                ),
                Text("Are you agree with terms"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_pController.text.isEmpty) {
                        _pError = "Enter the amount";
                      } else {
                        _pError = null;
                      }
                      if (_rController.text.isEmpty) {
                        _rError = "Enter the amount";
                      } else {
                        _rError = null;
                      }
                      if (_tController.text.isEmpty) {
                        _tError = "Enter the amount";
                      } else {
                        _tError = null;
                      }

                      calculateSI();
                    });
                  },
                  child: Text("Calculate")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _pController.clear();
                      _rController.clear();
                      _tController.clear();
                      _tController.text = "";
                      t = 0;
                      si = "";
                      _check = false;
                    });
                  },
                  child: Text("Reset")),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 0, 0),
            child: Text(
              "Your amount after " +
                  _tController.text +
                  " years : " +
                  si.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
    ));
  }

  void calculateSI() {
    if (_pController.text.isNotEmpty &&
        _rController.text.isNotEmpty &&
        _tController.text.isNotEmpty &&
        _check == true) {
      var p = int.parse(_pController.text);
      var r = int.parse(_rController.text);
      setState(() {
        t = int.parse(_tController.text);
        si = 100 + ((p * r * t) / 100);
      });
    }
  }
}
