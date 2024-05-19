part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> note;

  NotesSuccess(this.note);
}

class NotesFailure extends NotesState {
  final String errMassage;

  NotesFailure(this.errMassage);
}

