import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_textfield.dart';
import 'package:notes_app/widgets/custtom_botton.dart';

class addFormNote extends StatefulWidget {
  const addFormNote({
    super.key,
  });

  @override
  State<addFormNote> createState() => _addFormNoteState();
}

class _addFormNoteState extends State<addFormNote> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          customtextfield(
              onsaved: (value) {
                title = value;
              },
              hint: "title"),
          SizedBox(
            height: 16,
          ),
          customtextfield(
            onsaved: (value) {
              subtitle = value;
            },
            hint: "content",
            maxline: 4,
          ),
          SizedBox(
            height: 50,
          ),
          customBotton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();

                var note_model = notemodel(
                    color: Colors.blue.value,
                    date: DateTime.now().toString(),
                    subtitle: subtitle!,
                    title: title!);
                BlocProvider.of<AddNoteCubit>(context).addnote(note_model);  
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
