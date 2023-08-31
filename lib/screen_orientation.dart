// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ScreenOrentation extends StatefulWidget {
  const ScreenOrentation({super.key});

  @override
  _ScreenOrentationState createState() => _ScreenOrentationState();
}

class _ScreenOrentationState extends State<ScreenOrentation> {
  Widget _portraitMode() {
    return Stack(
      fit: StackFit.expand,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Portrait Mode",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.network(
              'https://miro.medium.com/v2/resize:fit:828/format:webp/1*dCENfMN5sB08QDQYPnJBnA.png',
              height: 200,
              width: 200,
            ),
          ],
        ),
      ],
    );
  }

  Widget _landscapeMode() {
    return Stack(
      fit: StackFit.expand,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Landscape Mode",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.network(
              'https://miro.medium.com/v2/resize:fit:198/format:webp/1*Rt3x9BB9Gn-aFjRKZKOlQQ.png',
              height: 50.0,
              fit: BoxFit.cover,
            )
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Orientation In Flutter"),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _portraitMode();
          } else {
            return _landscapeMode();
          }
        },
      ),
    );
  }
}
