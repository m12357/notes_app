import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? Key, required this.icon, this.onPressed})
      : super(key: Key);
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(0.5)),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, size: 28),
      ),
    );
  }
}
