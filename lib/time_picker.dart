// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class TimePickerDemo extends StatefulWidget {
  const TimePickerDemo({Key? key}) : super(key: key);

  @override
  State<TimePickerDemo> createState() => _TimePickerDemoState();
}

class _TimePickerDemoState extends State<TimePickerDemo> {
  var time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showTimePicker(
                  context: context,
                  initialTime: const TimeOfDay(hour: 12, minute: 60))
              .then((value) {
            setState(() {});
            time = value!.format(context);
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text("$time"),
      ),
    );
  }
}
