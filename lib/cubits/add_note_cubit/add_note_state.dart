part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

class addNoteLoading extends AddNoteState {}

class addNoteSuccess extends AddNoteState {}

class addNoteFailure extends AddNoteState {
  final String errmessage;
  addNoteFailure(this.errmessage);
}
