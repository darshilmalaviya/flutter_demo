import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ViewNotes extends StatefulWidget {
  const ViewNotes({super.key});

  @override
  State<ViewNotes> createState() => _ViewNotesState();
}

class _ViewNotesState extends State<ViewNotes> {
  String? noteValue;
  void getNotes() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    noteValue = pref.getString('notesdata');
    print("NOTE1 VALUE : $noteValue");
  }

  @override
  void initState() {
    // TODO: implement initState
    getNotes();
    super.initState();
  }

  Widget build(BuildContext context) {
    print("NOTE VALUE : $noteValue");
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Notes"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          noteValue == null
              ? const Center(child: Text("No notes available"))
              : Center(child: Text(noteValue!)),
        ],
      ),
    );
  }
}
