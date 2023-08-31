import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.teal[100],
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Heed not the rabble'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
