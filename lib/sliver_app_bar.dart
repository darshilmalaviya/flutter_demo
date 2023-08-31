import 'package:flutter/material.dart';

class SliverAppBarDemo extends StatefulWidget {
  const SliverAppBarDemo({Key? key}) : super(key: key);

  @override
  State<SliverAppBarDemo> createState() => _SliverAppBarDemoState();
}

class _SliverAppBarDemoState extends State<SliverAppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.teal,
            pinned: true,
            // collapsedHeight: 100,
            // toolbarHeight: 80,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Sliver App Bar"),
              centerTitle: true,
              background: Container(color: Colors.teal),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 500,
                  width: double.infinity,
                  color: Colors.red,
                ),
                Container(
                  height: 500,
                  width: double.infinity,
                  color: Colors.green,
                ),
                Container(
                  height: 500,
                  width: double.infinity,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
