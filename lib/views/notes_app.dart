import 'package:flutter/material.dart';

import '../widgets/addmodalbottomsheet.dart';
import '../widgets/notes_view_body.dart';

class notesView extends StatelessWidget {
  const notesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(context: context, builder: ((context) {
          return const AddmodalBottomSheet();
        }));
      },
      child:const  Icon(Icons.add),
      ),
      body: const notesViewBody(),
    );
  }
}
