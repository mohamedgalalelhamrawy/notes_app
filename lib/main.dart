import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/notes_app.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = simpleBlocObserver();
  Hive.registerAdapter(notemodelAdapter());
  await Hive.openBox(kNotesBox);
  runApp(const notes_app());
}

class notes_app extends StatelessWidget {
  const notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AddNoteCubit(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
          home: notesView(),
        ));
  }
}
