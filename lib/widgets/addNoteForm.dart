import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';
import 'package:notes_app/widgets/custom_textfield.dart';
import 'package:notes_app/widgets/custtom_botton.dart';
import 'package:intl/intl.dart';

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
          const SizedBox(
            height: 32,
          ),
          customtextfield(
              onsaved: (value) {
                title = value;
              },
              hint: "title"),
          const SizedBox(
            height: 16,
          ),
          customtextfield(
            onsaved: (value) {
              subtitle = value;
            },
            hint: "content",
            maxline: 4,
          ),
          const SizedBox(
            height: 25,
          ),
          const colorslistview(),
          const SizedBox(
            height: 25,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return customBotton(
                isloading: state is addNoteLoading ? true : false,
                ontap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var now = DateTime.now();
                    var formattedDate = DateFormat('yyyy-MM-dd').format(now);
                    var note_model = notemodel(
                        color: Colors.blue.value,
                        date: formattedDate,
                        subtitle: subtitle!,
                        title: title!);
                    BlocProvider.of<AddNoteCubit>(context).addnote(note_model);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
