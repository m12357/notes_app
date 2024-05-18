import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/cubit/add_note_cubit/add_notes_cubit.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  AddNoteBottomSheet({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
            print("failed ${state.errMassage}");
          }
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddNotesLoading ? true : false,
              child: const AddNoteForm());
        },
      )),
    );
  }
}
