import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';

import '../widgets/addmodalbottomsheet.dart';
import '../widgets/notes_view_body.dart';

class notesView extends StatelessWidget {
  const notesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kprimarycolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        onPressed: () {
        showModalBottomSheet(context: context, builder: ((context) {
          return const AddmodalBottomSheet();
        }));
      },
      child:const  Icon(Icons.add,color: Colors.black,),
      ),
      body: const notesViewBody(),
    );
  }
}
