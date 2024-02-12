import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/constants.dart';


part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial()); 
  fetchAllNotes() {
    emit(notesLoading());
      try {
  var notesbox = Hive.box(kNotesBox);
  List notes = notesbox.values.toList();
    emit(notesSuccess(notes));
} catch (e) {
emit(notesFailure(e.toString()));}
  }

}

