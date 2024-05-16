import 'package:flutter/material.dart';

import '../../constans.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
      height: 55,
      child: const Center(
        child: Text(
          "Add",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}