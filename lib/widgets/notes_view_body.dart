import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'customappbar.dart';
import 'note_item.dart';
import 'notes_list_view.dart';

class notesViewBody extends StatelessWidget {
  const notesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          costomAppBar(title: "Notes",icon: Icons.search,),
          Expanded(child: notesListView() )
        ],
      ),
    );
  }
}

