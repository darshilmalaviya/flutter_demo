// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ShowHideDemo extends StatefulWidget {
  const ShowHideDemo({super.key});

  @override
  _ShowHideDemoState createState() {
    return _ShowHideDemoState();
  }
}

class _ShowHideDemoState extends State {
  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.cyan,
        title: const Text('Flutter Show/Hide Widget Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Visibility(
              visible: _isVisible,
              child: Image.network(
                "https://miro.medium.com/v2/resize:fit:828/format:webp/1*KwbJNvmEnP8zvRLt0jLMvg.png",
                height: 300,
                fit: BoxFit.contain,
              ),
            ),
            const Text(
                "FlutterDevs is a protruding flutter app development company with an extensive "
                "in-house team of 30+ seasoned professionals who know exactly what you need "
                "to strengthen your business across various dimensions. With more than 10+ years "
                "of experience in mobile applications, we know your needs very well.",
                style: TextStyle(fontSize: 20)),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: showToast,
              child: const Text("Show/Hide"),
            ),
          ],
        ),
      ),
    );
  }
}
