import 'package:flutter/material.dart';
import 'package:flutter_demo/shared_preference/view_notes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceDemo extends StatefulWidget {
  const SharedPreferenceDemo({super.key});

  @override
  State<SharedPreferenceDemo> createState() => _SharedPreferenceDemoState();
}

class _SharedPreferenceDemoState extends State<SharedPreferenceDemo> {
  TextEditingController NotesCntrl = TextEditingController();

  Future<void> setNotesData(noteValue) async {
    print("NOTE ------------$noteValue");

    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('notesdata', noteValue);
  }

  @override
  Widget build(BuildContext context) {
    print(NotesCntrl);
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: NotesCntrl,
              decoration: InputDecoration(hintText: "Enter Notes"),
            ),
            ElevatedButton(
              onPressed: () {
                setNotesData(NotesCntrl.text);
              },
              child: Text("Save"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewNotes(),
                  ),
                );
              },
              child: Text("View Notes"),
            ),
          ],
        ),
      ),
    );
  }
}
