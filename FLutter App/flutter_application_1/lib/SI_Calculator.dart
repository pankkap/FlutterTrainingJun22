// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';

class SI_Calculator extends StatefulWidget {
  const SI_Calculator({Key? key}) : super(key: key);

  @override
  State<SI_Calculator> createState() => _SI_CalculatorState();
}

class _SI_CalculatorState extends State<SI_Calculator> {
  // Helps to collect data from TextFields
  TextEditingController principalController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController termController = TextEditingController();
  String displayResult = "";
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SI Calculator"),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Center(
              child: Image(
                image: NetworkImage(
                    'https://pngimg.com/uploads/money/money_PNG3523.png'),
                width: 300,
                height: 300,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: principalController,
              decoration: InputDecoration(
                  labelText: "Principal",
                  hintText: "Enter Principal Amount e.g. 12000",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: rateController,
              decoration: InputDecoration(
                  labelText: "Rate",
                  hintText: "Enter Rate",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: termController,
              decoration: InputDecoration(
                  labelText: "Term",
                  hintText: "Enter Term",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (b) {
                      setState(() {
                        isChecked = b!;
                      });
                    }),
                Text("Are you agree with Terms")
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: isChecked
                          ? () {
                              setState(() {
                                displayResult = _calculateResult();
                              });
                            }
                          : null,
                      child: Text(
                        "Calculate",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          principalController.text = "";
                          rateController.text = "";
                          termController.text = "";
                          displayResult = "";
                          isChecked = false;
                        });
                      },
                      child: Text(
                        "Reset",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
              ],
            ),
            Text(
              displayResult,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  String _calculateResult() {
    double principal = double.parse(principalController.text);
    double rate = double.parse(rateController.text);
    double term = double.parse(termController.text);

    double totalAmount = principal+((principal * rate * term) / 100);

    String result =
        'After $term years, Your Investment will be worth $totalAmount Rupees';
    return result;
  }
}
