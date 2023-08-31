import 'package:flutter/material.dart';

class TableDemo extends StatefulWidget {
  const TableDemo({super.key});

  @override
  State<TableDemo> createState() => _TableDemoState();
}

class _TableDemoState extends State<TableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(20.0),
            child: Table(
              border: TableBorder.all(color: Colors.black),
              children: const [
                TableRow(
                  children: [
                    Text('Cell 1'),
                    Text('Cell 2'),
                    Text('Cell 3'),
                    Text('Cell 4'),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Cell 5'),
                    Text('Cell 6'),
                    Text('Cell 7'),
                    Text('Cell 8'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
