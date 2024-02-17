import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import '../widgets/addmodalbottomsheet.dart';
import '../widgets/notes_view_body.dart';

class notesView extends StatelessWidget {
  const notesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kprimarycolor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: ((context) {
                  return const AddmodalBottomSheet();
                }));
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: const notesViewBody(),
      ),
    );
  }
}
