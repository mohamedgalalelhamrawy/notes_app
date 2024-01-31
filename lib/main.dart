import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_app.dart';

void main() {
  runApp(const notes_app());
}

class notes_app extends StatelessWidget {
  const notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: notesView() ,
    );
  }
}