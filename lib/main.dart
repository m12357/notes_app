import 'package:flutter/material.dart';
import 'package:notes/views/notes_view.dart';

void main(){
  runApp(const NotesApp());
}

class NotesApp extends StatefulWidget {
  const NotesApp({super.key});

  @override
  State<NotesApp> createState() => _State();
}

class _State extends State<NotesApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark

      ),
      home: const  NotesView(),
    );
  }
}
