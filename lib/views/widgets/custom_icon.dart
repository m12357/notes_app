import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),

          color: Colors.white.withOpacity(0.5)
      ),
      child: const Center(
        child: Icon(Icons.search, size: 28),
      ),
    );
  }
}