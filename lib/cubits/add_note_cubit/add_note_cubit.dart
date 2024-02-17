import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addnote(notemodel note) async{
    emit(addNoteLoading());
      try {
  var notesbox = Hive.box<notemodel>(kNotesBox);
  await notesbox.add(note);
    emit(addNoteSuccess());
} catch (e) {
emit(addNoteFailure(e.toString()));}
  }
}
