import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_app_bar.dart';
import 'custom_note_item.dart';
import 'notes_list.view.dart';

class NotesViewBody extends StatelessWidget {
  const  NotesViewBody({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        SizedBox(
          height: 50,
        ),
        CustomAppBar(
          title: "Notes",
          icon: Icons.search,
        ),
        Expanded(child: NotesListView())
      ]),
    );
  }
}


