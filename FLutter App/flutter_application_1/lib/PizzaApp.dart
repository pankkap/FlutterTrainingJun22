import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class PizzaApp extends StatefulWidget {
  const PizzaApp({Key? key}) : super(key: key);

  @override
  State<PizzaApp> createState() => _PizzaAppState();
}

class _PizzaAppState extends State<PizzaApp> {
  var _initialValue = 0.0;
  bool _isPaid = false;
  bool _cod = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(.0),
        child: ListView(
          children: [
            Text('Select your Topping',
                style: TextStyle(
                  fontSize: 20,
                )),
            CheckboxGroup(
              labels: [
                "Onion",
                "Black Olive",
                "Mushrooms",
                "Green Paper",
                "Corn",
              ],
              onSelected: (List<String> selected) {
                print(selected);
              },
            ),
            Text('Select Pizza Size',
                style: TextStyle(
                  fontSize: 20,
                )),
            RadioButtonGroup(
              labels: [
                "Small",
                "Medium",
                "Large",
              ],
              onSelected: (String selected) {
                print(selected);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Pizzas Quantity: ',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Slider(
                    value: _initialValue,
                    onChanged: (newQty) {
                      setState(() {
                        _initialValue = newQty;
                      });
                      print('Pizzas Quantity: $_initialValue');
                    },
                    min: 0,
                    max: 10,
                    divisions: 10,
                    label: '$_initialValue',
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Payment Status: ',
                      style: TextStyle(
                        fontSize: 22,
                      )),
                  Switch(
                      value: _isPaid,
                      onChanged: (bool status) {
                        setState(() {
                          _isPaid = status;
                        });
                        print('Payment Status: $_isPaid');
                      }),
                  Text(
                    _isPaid ? "Yes" : "No",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Go for COD: ',
                      style: TextStyle(
                        fontSize: 22,
                      )),
                  Checkbox(
                    value: _cod,
                    onChanged: (b) {
                      setState(() {
                        _cod = b!;
                      });
                    },
                  ),
                  Text(
                    _cod ? "COD" : "Onlien",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // _payOnline() => TextButton(
  //   child: Text('Pay Online'),
  //   onPressed: () {},
  // );
}
