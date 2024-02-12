part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}


class notesLoading extends NotesState {}

class notesSuccess extends NotesState{
  final List notes;
  notesSuccess(this.notes);
}

class notesFailure extends NotesState {
  final String errmessage;
  notesFailure(this.errmessage);
}