import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/add_note_cubit/add_notes_cubit.dart';
import '../../constans.dart';
import 'color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({Key? Key}) : super(key: Key);

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: Kcolors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = Kcolors[index];
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: Kcolors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
