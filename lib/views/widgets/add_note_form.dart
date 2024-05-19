import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/add_note_cubit/add_notes_cubit.dart';
import 'package:notes/models/note_model.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? Key}) : super(key: Key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextFieLd(
            onSaved: (value) {
              title = value;
            },
            hint: "title",
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFieLd(
            onSaved: (value) {
              subtitle = value;
            },
            hint: "content",
            maxlines: 5,
          ),
          SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteCubit,AddNotesState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNotesLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                        title: title!,
                        color: Colors.amber.value,
                        date: DateTime.now().toString(),
                        subtitle: subtitle!);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
