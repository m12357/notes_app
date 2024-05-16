import 'package:flutter/material.dart';

import 'custom_note_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: NoteItem(),
      );
    });
  }
}