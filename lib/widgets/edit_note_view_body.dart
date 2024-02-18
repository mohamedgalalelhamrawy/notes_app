import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

import 'customappbar.dart';

class editNoteViewBody extends StatefulWidget {
  const editNoteViewBody({super.key, required this.note});
  final notemodel note;

  @override
  State<editNoteViewBody> createState() => _editNoteViewBodyState();
}

class _editNoteViewBodyState extends State<editNoteViewBody> {
  String? title,content;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:  [
          const SizedBox(
            height: 30,
          ),
         costomAppBar(
          onPressed: () {
            widget.note.title = title ??  widget.note.title;
            widget.note.subtitle = content ?? widget.note.subtitle ;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
          title: "Edit Note",icon: Icons.check,),
         const SizedBox(height: 35,),
         customtextfield(hint: widget.note.title,
         onChanged:(value) {
            title =value;
         } ,
         ),
         const SizedBox(height: 16,),
         customtextfield(hint: widget.note.subtitle,maxline: 5,
         onChanged:(value){
            content =value;
         } ,
         ),
        ],
      ),
    );
  }
}