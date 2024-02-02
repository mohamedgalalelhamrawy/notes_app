import 'package:flutter/material.dart';

import 'customappbar.dart';

class editNoteViewBody extends StatelessWidget {
  const editNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 30,
          ),
         costomAppBar(title: "Edit Note",icon: Icons.check,),
        ],
      ),
    );
  }
}