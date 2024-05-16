import 'package:flutter/material.dart';

import '../../constans.dart';

class CustomTextFieLd extends StatelessWidget {
  const CustomTextFieLd({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: "title",
        border: buildBorder(),
            enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }
}
OutlineInputBorder buildBorder ([color]){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color:color?? Colors.white)
  );
}
