// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class DataTableDemo extends StatelessWidget {
  const DataTableDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTable Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Participants Records",
              style: TextStyle(fontSize: 24, color: Colors.blue),
            ),
            DataTable(columns: [
              DataColumn(label: Text("RollNo.")),
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Branch")),
            ], rows: [
              DataRow(cells: [
                DataCell(Text("101")),
                DataCell(Text("Sachin Kumar")),
                DataCell(Text("CSE")),
              ]),
              DataRow(cells: [
                DataCell(Text("102")),
                DataCell(Text("Manish Kumar")),
                DataCell(Text("ECE")),
              ]),
              DataRow(cells: [
                DataCell(Text("103")),
                DataCell(Text("Prachin Saxena")),
                DataCell(Text("CSE")),
              ]),
            ])
          ],
        ),
      ),
    );
  }
}
