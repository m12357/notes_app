import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffffcc80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter Tips",
              style: TextStyle(fontSize: 26, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 16),
              child: Text("build your career with medhat rabie ",
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(.5))),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.trash,
                  color: Colors.black, size: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text("May 15,2024 ",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(.4))),
          )
        ],
      ),
    );
  }
}