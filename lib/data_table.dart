import 'package:flutter/material.dart';

class SimpleDataTable extends StatelessWidget {
  const SimpleDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Table'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DataTable(
              columns: const [
                DataColumn(
                  label: Text('ID'),
                ),
                DataColumn(
                  label: Text('Name'),
                ),
                DataColumn(
                  label: Text('LastName'),
                ),
                DataColumn(
                  label: Text('Age'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(Text("1")),
                    DataCell(Text("Alex")),
                    DataCell(Text("Anderson")),
                    DataCell(Text("18")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("2")),
                    DataCell(Text("John")),
                    DataCell(Text("Anderson")),
                    DataCell(Text("24")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("3")),
                    DataCell(Text("Alex")),
                    DataCell(Text("Anderson")),
                    DataCell(Text("30")),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
