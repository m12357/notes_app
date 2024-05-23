import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? Key, required this.isActive, required this.color})
      : super(key: Key);
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 34, backgroundColor: color))
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}
