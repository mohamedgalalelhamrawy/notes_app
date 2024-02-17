import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/models/note_model.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<notemodel>? notes;
  fetchAllNotes() {
    emit(notesLoading());

    var notesbox = Hive.box<notemodel>(kNotesBox);
    notes = notesbox.values.toList();
  
  }
}
