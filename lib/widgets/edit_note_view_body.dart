import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

import 'customappbar.dart';

class editNoteViewBody extends StatelessWidget {
  const editNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:  [
          SizedBox(
            height: 30,
          ),
         costomAppBar(title: "Edit Note",icon: Icons.check,),
         SizedBox(height: 35,),
         customtextfield(hint: "title"),
         SizedBox(height: 16,),
         customtextfield(hint: "content",maxline: 5),
        ],
      ),
    );
  }
}